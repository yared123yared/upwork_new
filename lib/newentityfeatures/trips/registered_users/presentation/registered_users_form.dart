import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';

class RegisteredUsersForm extends StatefulWidget {
  final RegisteredUser registeredUser;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RegisteredUsersForm({
    @required this.registeredUser,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _RegisteredUsersFormState createState() => _RegisteredUsersFormState();
}

class _RegisteredUsersFormState extends State<RegisteredUsersForm> {
  int timelineIndex = 1;
  RegisteredUser _registeredUser;

  CustomTextFieldController _userType = CustomTextFieldController();
  // CustomTextFieldController _userID = CustomTextFieldController();
  CustomTextFieldController _username = CustomTextFieldController();
  CustomTextFieldController _userEmail = CustomTextFieldController();
  CustomTextFieldController _userPhone = CustomTextFieldController();

  bool isActive = true;

  bool isUpdate;

  CustomTextFieldController _g1Name = CustomTextFieldController();
  CustomTextFieldController _g1PhoneNumber = CustomTextFieldController();
  CustomTextFieldController _g1EmailAddress = CustomTextFieldController();
  CustomTextFieldController _g2Name = CustomTextFieldController();
  CustomTextFieldController _g2PhoneNumber = CustomTextFieldController();
  CustomTextFieldController _g2EmailAddress = CustomTextFieldController();

  bool _validate() {
    if (timelineIndex == 1) {
      return _userType.isValid &&
          _userPhone.isValid &&
          _userEmail.isValid &&
          _username.isValid;
    } else if (timelineIndex == 2) {
      return _g1Name.isValid &&
          _g1PhoneNumber.isValid &&
          _g1EmailAddress.isValid &&
          _g2Name.isValid &&
          _g2PhoneNumber.isValid &&
          _g2EmailAddress.isValid;
    }
  }

  @override
  void initState() {
    isUpdate = widget.registeredUser != null;
    isActive = widget.registeredUser?.isActive ?? true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.RegisteredUsersBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Registered Users'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.RegisteredUsersBloc,
            itembloc.RegisteredUsersState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {}
        }, child: BlocBuilder<itembloc.RegisteredUsersBloc,
            itembloc.RegisteredUsersState>(builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage) {
            return _blocBuilder(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  _blocBuilder(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 4),
        Expanded(
          child: FlowBuilder<int>(
              state: timelineIndex,
              onGeneratePages: (dynamic data, List<Page> pages) {
                return [
                  if (timelineIndex == 1) MaterialPage(child: screen1()),
                  if (timelineIndex == 2) MaterialPage(child: screen2(context)),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'Route Trip Registration'),
                Column(
                  children: <Widget>[
                    CustomDropDownList<String>(
                      initialValue: widget.registeredUser?.userType,
                      title: "User Type",
                      controller: _userType,
                      loadData: () async => [
                        "Stuff",
                        "Tenant",
                        "manager",
                      ],
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "User Name",
                      initialValue: widget.registeredUser?.name,
                      controller: _username,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      title: "User Email",
                      initialValue: widget.registeredUser?.email,
                      controller: _userEmail,
                      validate: Validate.withOption(
                        isRequired: false,
                        isEmail: true,
                      ),
                    ),
                    CustomTextField(
                      title: "User Phone",
                      initialValue: widget.registeredUser?.phone,
                      controller: _userPhone,
                      validate: Validate.withOption(
                        isRequired: true,
                        isNumber: true,
                      ),
                    ),
                    CustomSwitchWithTitle(
                      title: "Is Active",
                      isEnabled: isActive,
                      onChange: (x) {
                        isActive = x;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomActionButton(
                title: "Back",
                isExpanded: false,
                isOutline: false,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Next",
                isExpanded: false,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    RegisteredUser user;
                    if (widget.registeredUser == null) {
                      user = RegisteredUser(
                        userType: _userType.text,
                        isActive: isActive,
                        name: _username.text,
                        email: _userEmail.text,
                        phone: _userPhone.text,
                        //this is is because user id is menenary
                        userId: '',
                      );
                    } else {
                      user = (widget.registeredUser).copyWith(
                        userType: _userType.text,
                        isActive: isActive,
                        name: _username.text,
                        email: _userEmail.text,
                        phone: _userPhone.text,
                      );
                    }
                    setState(() {
                      _registeredUser = user;
                      timelineIndex++;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen2(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Route Trip Registration',
                ),
                Column(
                  children: <Widget>[
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian1name,
                      title: "G1 Name",
                      controller: _g1Name,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian1phone,
                      title: "G1 Phone Number",
                      controller: _g1PhoneNumber,
                      validate: Validate.withOption(
                        isRequired: false,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian1email,
                      title: "G1 Email Address",
                      controller: _g1EmailAddress,
                      validate: Validate.withOption(
                        isRequired: false,
                        isEmail: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian2name,
                      title: "G2 Name",
                      controller: _g2Name,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian2phone,
                      title: "G2 Phone Number",
                      controller: _g2PhoneNumber,
                      validate: Validate.withOption(
                        isRequired: false,
                        isNumber: true,
                      ),
                    ),
                    CustomTextField(
                      initialValue: widget.registeredUser?.guardian2email,
                      title: "G2 Email Address",
                      controller: _g2EmailAddress,
                      validate: Validate.withOption(
                        isRequired: false,
                        isEmail: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomActionButton(
                title: "Back",
                isExpanded: false,
                isOutline: false,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Next",
                isExpanded: false,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    var user = _registeredUser.copyWith(
                      guardian1name: _g1Name.text,
                      guardian1email: _g1EmailAddress.text,
                      guardian1phone: _g1PhoneNumber.text,
                      guardian2name: _g2Name.text,
                      guardian2email: _g2EmailAddress.text,
                      guardian2phone: _g2PhoneNumber.text,
                    );
                    if (widget.registeredUser != null) {
                      BlocProvider.of<itembloc.RegisteredUsersBloc>(context)
                          .add(
                        itembloc.createItem(
                          item: user,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    } else {
                      BlocProvider.of<itembloc.RegisteredUsersBloc>(context)
                          .add(
                        itembloc.updateItem(
                          item: user,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
