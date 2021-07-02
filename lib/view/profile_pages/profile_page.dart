import 'dart:ui';

import 'package:complex/blocs/complex_bloc.dart';
import 'package:complex/blocs/service_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/models/response/user_response/user_complex.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';
import 'package:complex/data/providers/auth_provider.dart';
import 'package:complex/data/providers/complex_provider.dart';
import 'package:complex/data/providers/service_provicer.dart';
import 'package:complex/data/repositories/auth_repository.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/view/complex_pages/create_complex_page.dart';
import 'package:complex/view/login_pages/phone_verification_page.dart';
import 'package:complex/view/login_pages/splash_page.dart';
import 'package:complex/view/services_page/create_service_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/places.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/social_auth.dart';
import 'package:complex/utils/utility.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class ProfilePage extends StatefulWidget {
  final BuildContext homeContext;

  ProfilePage(this.homeContext);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final UserRepository _userRepository =
      Injector.appInstance.get<UserRepository>();
  final AuthRepository _authRepository =
      Injector.appInstance.get<AuthRepository>();
  final AuthProvider _authProvider = Injector.appInstance.get<AuthProvider>();
  var _key = GlobalKey<ScaffoldState>();
  List<SimpleEntity> complexNames = [];
  List<SimpleEntity> serviceName = [];

  SocialAuth _socialAuth;

  var _complexProvider = Injector.appInstance.get<ComplexProvider>();
  var _serviceProvider = Injector.appInstance.get<ServiceProvider>();
  bool _isLoading = false;
  ComplexBloc _complexBloc;
  ServiceBloc _serviceBloc;

  initList(
    List<UserComplex> _complexList,
    List<UserService> _serviceList,
  ) async {
    Map<String, String> complexEntityName =
        _userRepository.getComplexEntityNamesFromUser();
    Map<String, String> serviceEntityNames =
        _userRepository.getServiceProviderEntityNamesFromUser();
    complexNames.clear();
    for (var pk in complexEntityName.entries) {
      complexNames.add(SimpleEntity.fromMapEntry(pk));
    }
    serviceName.clear();
    for (var pk in serviceEntityNames.entries) {
      serviceName.add(SimpleEntity.fromMapEntry(pk));
    }
  }

  _showDialog(BuildContext context) {
    VoidCallback continueCallBack = () => {
          Navigator.of(context).pop(),
        };

    BlurryDialog alert = BlurryDialog(
      "QRCODE",
      continueCallBack,
      _userRepository.getUser().qrCode,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alert,
    );
  }

  Future<String> createFormDialog(BuildContext context, String title) {
    TextEditingController textController = TextEditingController();
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: textController,
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop(textController.text.toString());
              },
              elevation: 5.0,
              child: Text("Submit"),
            )
          ],
        );
      },
    );
  }

  void _handleSetDefaultComplex(SetDefaultComplexState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  void _handleSetDefaultService(SetDefaultServiceState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    Application(context);
    _complexBloc = Provider.of<ComplexBloc>(context);
    _serviceBloc = Provider.of<ServiceBloc>(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<ComplexBloc, ComplexState>(listener: (context, state) {
          if (state is SetDefaultComplexState) _handleSetDefaultComplex(state);
        }),
        BlocListener<ServiceBloc, ServiceState>(listener: (context, state) {
          if (state is SetDefaultServiceState) _handleSetDefaultService(state);
        }),
      ],
      child: BlocBuilder<ComplexBloc, ComplexState>(
        builder: (context, state) {
          return Scaffold(
            key: _key,
            backgroundColor: ColorConstants.primaryColor,
            body: ScreenWithLoader(
              isLoading: _isLoading,
              body: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    children: [
                      buildTopBar(context),
                      const SizedBox(
                        height: 20,
                      ),
                      buildButtonsBar(context),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: FutureBuilder(
                          future: initList(
                            _userRepository.getUser().complexes,
                            _userRepository.getUser().services,
                          ),
                          builder: (context, snapshot) {
                            return Column(
                              children: [
                                if (complexNames.isEmpty && serviceName.isEmpty)
                                  ListTile(
                                    title: Text(
                                      "There are no Complex/Service you registered in",
                                    ),
                                  ),
                                buildSelfHeader(),
                                if (complexNames.isNotEmpty)
                                  buildComplexesListHeaders(),
                                if (complexNames.isNotEmpty)
                                  buildComplexesList(),
                                if (serviceName.isNotEmpty)
                                  buildServicesListHeader(),
                                if (serviceName.isNotEmpty) buildServiceLise(),
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CustomButton(
                          text: 'Logout',
                          borderColor: Theme.of(context).primaryColor,
                          onTap: () {
                            _authProvider.signOut().then((value) {
                              UserSession.clearSession();
                              _socialAuth = SocialAuth();
                              _socialAuth
                                  .signInWithFacebook(isLogin: false)
                                  .then((value) {
                                _socialAuth
                                    .signInWithGoogle(isLogin: false)
                                    .then((value) {
                                  Navigator.pushAndRemoveUntil(
                                      widget.homeContext,
                                      NextPageRoute(SplashPage()),
                                      (route) => false);
                                });
                              });
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Column buildServiceLise() {
    final defaultService = _userRepository.getUser().defaultServiceEntity;
    return Column(
      children: serviceName
          .map(
            (e) => ListTile(
              title: Text(e.name),
              onTap: () {
                _serviceProvider.fetchService(e.id).then((value) async {
                  print(
                      "Service Detail ${value.createdBy}   ${value.serviceID}");
                  if (value.createdBy == _userRepository.getUser().userID) {
                    final places = await Place.places;
                    Navigator.push(
                      context,
                      NextPageRoute(
                        CreateServicePage(
                          update: true,
                          places: places,
                          serviceModel: value,
                        ),
                      ),
                    );
                  } else {
                    Utility.showSnackBar(
                      key: _key,
                      message: "Just service creator can modify it",
                    );
                  }
                });
              },
              trailing: Checkbox(
                activeColor: ColorConstants.primaryColor,
                value: defaultService?.serviceID == e.id,
                onChanged: (bool value) {
                  _serviceBloc.add(
                    SetDefaultServiceEvent(
                      serviceId: e.id,
                      model: _userRepository.getUser(),
                    ),
                  );
                },
              ),
            ),
          )
          .toList(),
    );
  }

  Column buildSelfHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Self",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.grey[600],
                    fontSize: 18),
              ),
              Text(
                "Primary",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    fontSize: 18),
              ),
            ],
          ),
        ),
        ListTile(
          title: Text('Classified'),
          // onTap: () {
          //   print("${_userRepository.getUser().userID} == ");
          //   _complexProvider.getComplexDetail(id: e.id).then(
          //     (value) {
          //       if (value != null) {
          //         if (_userRepository.getUser().userID == value.createdBy) {
          //           Navigator.push(
          //             context,
          //             NextPageRoute(
          //               CreateComplexPage(
          //                 complexModel: ComplexModel(createdBy: e.id),
          //                 update: true,
          //               ),
          //             ),
          //           );
          //         } else {
          //           Utility.showSnackBar(
          //             key: _key,
          //             message: "Just complex creator can modify it",
          //           );
          //         }
          //       }
          //     },
          //   );
          // },
          trailing: Checkbox(
            activeColor: ColorConstants.primaryColor,
            value: true,
            onChanged: (bool value) {},
          ),
        )
      ],
    );
  }

  Padding buildServicesListHeader() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Services",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 18),
          ),
          Text(
            "Primary",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 18),
          ),
        ],
      ),
    );
  }

  Column buildComplexesList() {
    final defaultComplex = _userRepository.getUser().defaultComplexEntity;

    return Column(
      children: complexNames.map((e) {
        return ListTile(
          title: Text(e.name),
          onTap: () {
            print("${_userRepository.getUser().userID} == ");
            _complexProvider.getComplexDetail(id: e.id).then(
              (value) {
                if (value != null) {
                  if (_userRepository.getUser().userID == value.createdBy) {
                    Navigator.push(
                      context,
                      NextPageRoute(
                        CreateComplexPage(
                          complexModel: ComplexModel(createdBy: e.id),
                          update: true,
                        ),
                      ),
                    );
                  } else {
                    Utility.showSnackBar(
                      key: _key,
                      message: "Just complex creator can modify it",
                    );
                  }
                }
              },
            );
          },
          trailing: Checkbox(
            activeColor: ColorConstants.primaryColor,
            value: defaultComplex?.complexID == e.id,
            onChanged: (bool value) {
              _complexBloc.add(
                SetDefaultComplexEvent(
                  newEntityId: e.id,
                  userModel: _userRepository.getUser(),
                ),
              );
            },
          ),
        );
      }).toList(),
    );
  }

  Padding buildComplexesListHeaders() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Complexes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 18),
          ),
          Text(
            "Primary",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 18),
          ),
        ],
      ),
    );
  }

  Container buildButtonsBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5),
              child: Center(
                child: Text(
                  "Register New Entity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Column(
                      children: [
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context, NextPageRoute(CreateComplexPage()));
                          },
                          elevation: 2.0,
                          fillColor: ColorConstants.primaryColor,
                          child: Icon(
                            Icons.home,
                            size: 35.0,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "COMPLEX",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  FittedBox(
                    child: Column(
                      children: [
                        GestureDetector(
                          child: RawMaterialButton(
                            onPressed: () {
                              Place.places.then((value) {
                                Navigator.push(
                                  context,
                                  NextPageRoute(
                                    CreateServicePage(
                                      places: value,
                                      serviceModel: ServiceModel(
                                          createdBy:
                                              _userRepository.getUser().userID),
                                    ),
                                  ),
                                );
                              });
                            },
                            elevation: 2.0,
                            fillColor: ColorConstants.primaryColor,
                            child: Icon(
                              Icons.settings,
                              size: 35.0,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "SERVICE",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildTopBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(20.0),
        ),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Card(
                    shape: CircleBorder(),
                    elevation: 6,
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      FirebaseAuth.instance.currentUser.photoURL ??
                          "https://www.w3schools.com/w3images/avatar2.png",
                      height: MediaQuery.of(context).size.width / 4,
                      width: MediaQuery.of(context).size.width / 4,
                      fit: BoxFit.cover,
                      // errorBuilder: Get.find(tag: '_imageErrorBuilder'),
                    ),
                  ),
                  FittedBox(
                    alignment: Alignment.center,
                    fit: BoxFit.scaleDown,
                    child: Container(
                      height: 40,
                      width: 120,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.white,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.white,
                        onPressed: () {
                          _showDialog(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.qr_code,
                              color: Colors.blue[900],
                            ),
                            Text(
                              "QR CODE",
                              style: TextStyle(color: Colors.blue[900]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: Text(
                            _userRepository.getUser().name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          createFormDialog(context, "Enter New Name")
                              .then((value) {
                            _authRepository.updateProfile(name: value);
                            setState(() {});
                            SnackBar mySnackbar =
                                SnackBar(content: Text('Your name is updated'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(mySnackbar);
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text(
                            FirebaseAuth.instance.currentUser.email ?? "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          createFormDialog(
                            context,
                            "Enter New Email",
                          ).then((value) {
                            _authRepository.updateProfile(email: value);
                            setState(() {});
                            SnackBar mySnackbar = SnackBar(
                                content: Text('Email has been changed'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(mySnackbar);
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Colors.white),
                      const SizedBox(width: 5),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          FirebaseAuth.instance.currentUser.phoneNumber != null
                              ? FirebaseAuth.instance.currentUser.phoneNumber
                              : "No Phone Number",
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          softWrap: false,
                          //"phoneNumber",
                          style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              widget.homeContext,
                              NextPageRoute(PhoneVerificationPage(
                                value: 1,
                              )));
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.vpn_key_rounded, color: Colors.white),
                    const SizedBox(width: 5),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Text(
                        "********",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        createFormDialog(context, "Enter New Password")
                            .then((value) {
                          _authRepository.updateProfile(password: value);
                          setState(() {});
                          SnackBar mySnackbar =
                              SnackBar(content: Text('Hello $value'));
                          ScaffoldMessenger.of(context)
                              .showSnackBar(mySnackbar);
                        });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlurryDialog extends StatelessWidget {
  final String content;
  final VoidCallback continueCallBack;
  final String qrCode;

  final TextStyle textStyle = TextStyle(color: Colors.black);

  BlurryDialog(this.content, this.continueCallBack, this.qrCode);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: AlertDialog(
        title: new Text(
          content,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
        content: AspectRatio(
          aspectRatio: 1,
          child: SfBarcodeGenerator(
            symbology: QRCode(),
            value: qrCode,
          ),
        ),
        actions: <Widget>[
          new TextButton(
            child: Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class SimpleEntity {
  final String id;
  final String name;

  SimpleEntity.fromJson(Map data)
      : id = data['id'],
        name = data['name'];

  SimpleEntity.fromMapEntry(MapEntry<String, String> data)
      : id = data.key,
        name = data.value;
}
