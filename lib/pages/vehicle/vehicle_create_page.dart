import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/product_models/property_model.dart';
import 'package:complex/data/models/response/product_models/vehicle_model.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/providers/product_provider.dart';
import 'package:complex/main.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_slide_transition.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/selection_button.dart';
import 'package:complex/pages/dashboard/home_page.dart';
import 'package:complex/pages/login_pages/landing_page.dart';
import 'package:complex/utils/next_page_routing.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

class VehicleCreatePage extends StatefulWidget {
  final Contactdetails contactDetail;

  VehicleCreatePage(this.contactDetail);

  @override
  _VehicleCreatePageState createState() => _VehicleCreatePageState();
}

class _VehicleCreatePageState extends State<VehicleCreatePage> {
  bool _isLoading = true;
  var _channelsProvider = Injector.appInstance.get<ChannelsProvider>();
  ProductBloc _bloc;
  ScrollController _scrollController = ScrollController();
  CustomTextFieldController _title = CustomTextFieldController();
  CustomTextFieldController _description = CustomTextFieldController();
  CustomTextFieldController _price = CustomTextFieldController();
  CustomTextFieldController _txtMake = CustomTextFieldController();
  CustomTextFieldController _txtModel = CustomTextFieldController();
  CustomTextFieldController _txtYearBuild = CustomTextFieldController();
  CustomTextFieldController _txtMilage = CustomTextFieldController();
  CustomTextFieldController _txtExteriorColor = CustomTextFieldController();
  CustomTextFieldController _txtInteriorColor = CustomTextFieldController();
  var _productProvider = Injector.appInstance.get<ProductProvider>();
  List<String> _makeList = [];
  List<String> _modelList = [];
  String _vehicleType = '';
  String _cylinder = '';
  int currentSegment = 0;
  int _pageIndex = 0;
  String _ownershipStatus = '';
  String _serviceType = '';
  String _propertyType = '';
  List<String> _photos = [];
  String _fuelType = '';
  String _bodyType = '';
  String _driveType = '';
  String transmissionType = '';
  String ownershipTransferType = '';
  String sellerType = '';
  var _key = GlobalKey<ScaffoldState>();

  void _handleCreatePropertyResponse(AddNewVehicleState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        AlertsWidget.alertWithOkBtn(
          context: context,
          onOkClick: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          text: state.response.message,
        );
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
  void initState() {
    super.initState();
    Utility.waitFor(2).then((value) {
      _productProvider.maketypes().then((result) {
        print("result :: $result");
        if (result != null) {
          List<String> local = List<String>.from(result['values']);
          _makeList.clear();
          _makeList.addAll(local);
        }else{
          _modelList.clear();
        }
        setState(() {
          _isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<ProductBloc>(context);
    Application(context);
    return WillPopScope(
      onWillPop: () async {
        if (_pageIndex > 0) {
          _pageIndex--;
          setState(() {});
          return false;
        } else {
          if (_pageIndex == 0) {
            return true;
          } else
            _pageIndex = 0;
          setState(() {});
          return false;
        }
      },
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if(state is AddNewVehicleState) _handleCreatePropertyResponse(state);
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Scaffold(
              key: _key,
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text("Add Vehicle"),
              ),
              body: ScreenWithLoader(
                isLoading: _isLoading,
                body: Container(
                  color: Colors.white,
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        if (_pageIndex == 0) _index0(),
                        if (_pageIndex > 0) _index1(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _index0() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 15),
        CustomSlidetransition(
          duration: 1000,
          dx: -2,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Let's start by knowing you better",
                style: Styles.boldText(size: 18),
              )),
        ),
        SizedBox(height: 10),
        CustomSlidetransition(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            alignment: Alignment.centerLeft,
            child: Text(
              'I am ...',
              style: Styles.semiBoldText(size: 16),
            ),
          ),
        ),
        CustomSlidetransition(
          dy: 2,
          dx: 0,
          duration: 800,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width / 1.5,
            child: CupertinoSlidingSegmentedControl<int>(
              backgroundColor: ColorConstants.primaryColor,
              groupValue: currentSegment,
              children: {
                0: SegmentTab(
                  text: 'Broker',
                  isSelected: currentSegment == 0,
                ),
                1: SegmentTab(
                  text: 'Owner',
                  isSelected: currentSegment == 1,
                ),
              },
              onValueChanged: (index) {
                setState(() {
                  currentSegment = index;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 10),
        CustomSlidetransition(
          dy: 2,
          dx: 0,
          duration: 900,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  CustomTextField(
                    icon: Icons.title,
                    title: "Title",
                    controller: _title,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    icon: Icons.text_fields_outlined,
                    title: "Description",
                    controller: _description,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                  CustomTextField(
                    icon: Icons.text_fields_outlined,
                    title: "Price",
                    controller: _price,
                    keyboardType: TextInputType.number,
                    validate: Validate.withOption(
                      isRequired: true,
                      isInt: true,
                      isNumber: true,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                      child: Text(
                        'Select photo',
                        style: Styles.normalText(size: 14),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            try {
                              var pickedFile = await FilePicker.platform
                                  .pickFiles(type: FileType.image);
                              if (pickedFile != null &&
                                  pickedFile.files != null) {
                                setState(() {
                                  _isLoading = true;
                                });
                                var image = await _channelsProvider.sendFile(
                                    "Images", pickedFile?.files?.first?.path);
                                if (image != null) {
                                  _photos.add(image);
                                }
                                setState(() {
                                  _isLoading = false;
                                });
                              }
                            } catch (error) {
                              print(error);
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.65)),
                            padding: EdgeInsets.all(20),
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(width: 20),
                        if (_photos.length != 0)
                          Container(
                            height: 65,
                            width: MediaQuery.of(context).size.width - 170,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  _photos.length,
                                  (index) => Container(
                                    height: 65,
                                    width: 65,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(_photos[index]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomSlidetransition(
            dx: -2,
            duration: 1100,
            child: CustomButton(
              text: "Let's Go",
              borderColor: ColorConstants.primaryColor,
              onTap: () {
                if (_photos.length == 0) {
                  Utility.showSnackBar(
                      key: _key, message: "At least one image required");
                } else if (_validateInfo()) {
                  _scrollController.jumpTo(0);
                  setState(() {
                    _pageIndex++;
                  });
                }
              },
            ),
          ),
        ),
        SizedBox(height: 30)
      ],
    );
  }

  bool _validateInfo() {
    return Validate.validateAll([_title, _description, _price]);
  }

  Widget _index1() {
    return CustomSlidetransition(
      duration: 400,
      child: Column(
        children: [
          SizedBox(height: 10),
          Stack(
            children: [
              if (_pageIndex == 1) _index2(),
              if (_pageIndex > 1) _pagewidget(),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> motorcycleViewList = [];

  Widget _pagewidget() {
    if (motorcycleViewList.length > 0) {
      try {
        return motorcycleViewList[_pageIndex - 2];
      } catch (e) {
        return motorcycleViewList.last;
      }
    }
    return Container();
  }

  List vehicleList = [
    'Motorcycle',
    'Scooter',
    'Car/Suv',
    'Tempo',
    'Truck',
    'Bus'
  ];

  Widget _index2() {
    List<Widget> alist = [];
    vehicleList.forEach((element) {
      alist.add(
        SelectionButton(
          selectedType: _vehicleType,
          title: element,
          onSelected: (v) => setState(
            () {
              _vehicleType = v;
              _pageIndex = 2;
              motorcycleViewList = [];
              if (_vehicleType == 'Motorcycle') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index4());
                motorcycleViewList.add(_index10());
              } else if (_vehicleType == 'Scooter') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index4());
                motorcycleViewList.add(_index10());
              } else if (_vehicleType == 'Car/Suv') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index4());
                motorcycleViewList.add(_index5());
                motorcycleViewList.add(_index6());
                motorcycleViewList.add(_index7());
                motorcycleViewList.add(_index8());
                motorcycleViewList.add(_index9());
                motorcycleViewList.add(_index10());
              } else if (_vehicleType == 'Tempo') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index6());
                motorcycleViewList.add(_index10());
              } else if (_vehicleType == 'Truck') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index6());
                motorcycleViewList.add(_index7());
                motorcycleViewList.add(_index9());
                motorcycleViewList.add(_index10());
              } else if (_vehicleType == 'Bus') {
                motorcycleViewList.add(_index3());
                motorcycleViewList.add(_index6());
                motorcycleViewList.add(_index10());
              }
            },
          ),
        ),
      );
    });
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('What type of Vehicle is it?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  Widget _index3() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter vehical infomation',
                  style: Styles.semiBoldText(size: 18),
                ),
              ),
            ),
            _makeDropdown("Make",_txtMake,_makeList),
            _modelDropdown("Model",_txtModel,_modelList),
            CustomTextField(
              icon: null,
              title: "YearBuild",
              controller: _txtYearBuild,
              validate: Validate.withOption(
                isRequired: true,
                isInt: true,
                isNumber: true,
              ),
            ),
            CustomTextField(
              icon: null,
              title: "Milage",
              controller: _txtMilage,
              validate: Validate.withOption(
                isRequired: true,
                isInt: true,
                isNumber: true,
              ),
            ),
            CustomButton(
              text: "Let's Go",
              borderColor: ColorConstants.primaryColor,
              onTap: () {
                FocusScope.of(context).unfocus();
                setState(() {
                  _pageIndex++;
                });
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _makeDropdown(
      String text,
      CustomTextFieldController controller,
      List<String> items,
      ) {
    return CustomDropDownList<String>(
      title: text,
      controller: controller,
      loadData: () async => items,
      displayName: (x) => x,
      onSelected: (name, index) {
        print("SELECTED ITEM ::  $name  $index");
        setState(() {
          _isLoading = true;
        });
        _productProvider.modelList(name: "${_vehicleType.toUpperCase()}@@$name").then((result) {
          print("result :: $result");
          if (result != null) {
            List<String> local = List<String>.from(result['values']);
            _modelList.clear();
            _modelList.addAll(local);
          }else{
            _modelList.clear();
          }
          _txtModel.clear();
          setState(() {
            _isLoading = false;
          });
        });
      },
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  Widget _modelDropdown(
      String text,
      CustomTextFieldController controller,
      List<String> items,
      ) {
    return CustomDropDownList<String>(
      title: text,
      controller: controller,
      loadData: () async => items,
      displayName: (x) => x,
      onSelected: (name, index) {
      },
      validate: Validate.withOption(
        isRequired: true,
      ),
    );
  }

  Widget _index4() {
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSlidetransition(
              duration: 1000,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Enter vehical infomation',
                      style: Styles.semiBoldText(size: 18))),
            ),
            CustomTextField(
              icon: null,
              title: "Exterior Color",
              controller: _txtExteriorColor,
              validate: Validate.withOption(
                isRequired: true,
              ),
            ),
            _vehicleType == 'Car/Suv'
                ? CustomTextField(
                    icon: null,
                    title: "Interior Color",
                    controller: _txtInteriorColor,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  )
                : Container(),
            CustomButton(
              text: "Let's Go",
              borderColor: ColorConstants.primaryColor,
              onTap: () {
                FocusScope.of(context).unfocus();
                setState(() {
                  _pageIndex++;
                });
              },
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }

  List cylinderList = ['4', '5', '6', '8', '10'];

  Widget _index5() {
    List<Widget> alist = [];
    cylinderList.forEach((element) {
      alist.add(
        SelectionButton(
          selectedType: _cylinder,
          title: element,
          onSelected: (v) => setState(
            () {
              _cylinder = v;
              _pageIndex++;
            },
          ),
        ),
      );
    });
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('How many Cylinder?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  List fuelList = ['CNG', 'Diesel', 'Petrol', 'Electric', 'Hybrid'];

  Widget _index6() {
    List<Widget> alist = [];
    fuelList.forEach((element) {
      alist.add(
        SelectionButton(
            title: element,
            selectedType: _fuelType,
            onSelected: (v) {
              setState(() {
                _fuelType = v;
                _pageIndex++;
              });
            }),
      );
    });

    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Which type of Fuel uses?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  List bodyList = [
    'HatchBack',
    'Coupe',
    'Minivan/Van',
    'StationVan',
    'Sedan',
    'Convertible'
  ];

  List bodyList1 = [
    'Delivery',
    'Dump Trucks',
    'Conventional Sleeper Yrucks',
    'Flatbed Trucks',
    'Cargo Vans',
    'Wrecker Tow Trucks',
    'Utility Truck Service Trucks',
    'Pickup Trucks',
    'Rollback Tow Trucks',
    'Conventional Day Cabs',
    'Refrigerated Trucks',
  ];

  Widget _index7() {
    List<Widget> alist = [];
    List tempList = bodyList;
    if ('Car/Suv' == _vehicleType) {
      tempList = bodyList;
    }
    if ('Truck' == _vehicleType) {
      tempList = bodyList1;
    }
    tempList.forEach((element) {
      alist.add(
        SelectionButton(
          title: element,
          selectedType: _bodyType,
          onSelected: (v) {
            setState(() {
              _bodyType = v;
              _pageIndex++;
            });
          },
        ),
      );
    });
    alist.add(SizedBox(height: 20));
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('What it is Body Type?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  /// 8
  List driveTypeList = [
    'AWD/4WD',
    'Front Wheel',
    'RearWheel',
  ];

  Widget _index8() {
    List<Widget> alist = [];
    List tempList = driveTypeList;
    tempList.forEach((element) {
      alist.add(
        SelectionButton(
          title: element,
          selectedType: driveTypeList,
          onSelected: (v) {
            setState(() {
              _driveType = v;
              _pageIndex++;
            });
          },
        ),
      );
    });
    alist.add(SizedBox(height: 20));
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('What it is Drive Type?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  /// 9
  List transmissionList = [
    'Automatic',
    'Manual',
  ];
  List transmission1List = [
    '1',
    '2',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '16',
    '18',
    '19',
    '20',
  ];

  Widget _index9() {
    List<Widget> alist = [];
    List tempList = driveTypeList;
    if ('Car/Suv' == _vehicleType) {
      tempList = driveTypeList;
      tempList.forEach((element) {
        alist.add(
          SelectionButton(
            title: element,
            selectedType: transmissionType,
            onSelected: (v) {
              setState(() {
                transmissionType = v;
                _pageIndex++;
              });
            },
          ),
        );
      });
    }
    if ('Truck' == _vehicleType) {
      tempList = transmission1List;
      tempList.forEach((element) {
        alist.add(
          SelectionButton(
            title: element + " speed",
            selectedType: transmissionType,
            onSelected: (v) {
              setState(() {
                transmissionType = v;
                _pageIndex++;
              });
            },
          ),
        );
      });
    }

    alist.add(SizedBox(height: 20));
    return CustomSlidetransition(
      duration: 1000,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Transmission?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
              ] +
              alist,
        ),
      ),
    );
  }

  /// 10
  List ownershipTransferList = [
    'FirstOwner',
    'SecondOwner',
    'ThirdOwner',
  ];

  Widget _index10() {
    return CustomSlidetransition(
      duration: 1000,
      child: StatefulBuilder(
        builder: (context, _setState) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSlidetransition(
                  duration: 1000,
                  child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('How many Ownership Transfer?',
                          style: Styles.semiBoldText(size: 18))),
                ),
                SizedBox(height: 20),
                Column(
                  children: List.generate(
                    ownershipTransferList.length,
                    (index) => SelectionButton(
                      title: ownershipTransferList[index],
                      selectedType: ownershipTransferType,
                      onSelected: (v) {
                        print(v);
                        _setState(() {
                          ownershipTransferType = v;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  onTap: _createClick,
                  text: "Register",
                  borderColor: ColorConstants.primaryColor,
                ),
                SizedBox(height: 20)
              ],
            ),
          );
        },
      ),
    );
  }

  /// 11
  List sellerTypeList = [
    'Owner',
    'Agent',
  ];

  _createClick() {
    VehicleModel _vehicleModel = VehicleModel(
      imagelist: _photos,
      listingownertype: _ownershipStatus,
      price: int.parse(_price.text),
      servicetype: _serviceType,
      propertytype: _propertyType,
      contactdetails: widget.contactDetail,
      creationdate:
          ((DateTime.now().millisecondsSinceEpoch / 1000).round()),
      title: _title.text,
      description: _description.text,
      docid: null,
      tileimage: null,
      serviceproviderid: null,
      userid: UserSession.userId,
      yearbuild: int.parse(_txtYearBuild.text),
      vehicletype: _vehicleType,
      transmission: transmissionType,
      ownershiptransfer: ownershipTransferType,
      model: _txtModel.text,
      milage: int.parse(_txtMilage.text),
      make: _txtMake.text,
      interiorcolor: _txtInteriorColor.text,
      fueltype: _fuelType,
      exteriorcolor: _txtExteriorColor.text,
      drivetype: _driveType,
      cylinder: _cylinder == null || _cylinder.isEmpty ? null : int.parse(_cylinder),
      bodytype: _bodyType,
      airbags: false,
      seatingcapacity: 4,
      alloywheels: false,
      antilockbrakingsystem: false,
      automaticclimatecontrol: false,
      cruisecontrol: false,
      keylessentry: false,
      moonroof: false,
      parkingsensors: false,
      powersteering: false,
      rearacvents: false,
      remotetrunkopener: false,
      sunroof: false,
      turboengine: false,
    );
    _bloc.add(AddNewVehicleEvent(model: _vehicleModel, userId: UserSession.userId));
  }
}
