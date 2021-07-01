import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/f_lookups/model/lookups.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:complex/common/helputil.dart';

///this form will also show the registry details of resiednet
class RegistryForm extends StatefulWidget {
  final RegistryModel registryModel;

  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int origintype;

  RegistryForm(
      {@required this.registryModel,
      @required this.entitytype,
      @required this.entityid,
      @required this.origintype,
      @required this.givenreloadaction});

  @override
  _RegistryFormState createState() => _RegistryFormState();
}

class _RegistryFormState extends State<RegistryForm> {
  CustomTextFieldController _name = CustomTextFieldController();
  CustomTextFieldController _phoneNumber = CustomTextFieldController();
  CustomTextFieldController _registerAs = CustomTextFieldController();
  CustomTextFieldController _managementPosition = CustomTextFieldController();
  CustomTextFieldController _unit = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  itembloc.RegistryModelBloc mbloc;
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();
  List<String> roles;
  bool haveAccess;
  bool displayOwner;
  bool isShared = false;

  List<String> managePos = ['President', 'Member', 'Secretary'];

  ///init fields for resident or owner
  _initFiledValue() {
    // print(widget.registryModel.shareownercontactflag);
    // print(widget.registryModel.shareresidentcontactflag);
  }

  void setStateBasedOnAccess(bool mdisplay, List<String> mroles) {
    Future.delayed(Duration(milliseconds: 80), () {
      setState(() {
        roles = mroles;
        isShared = mdisplay
            ? widget.registryModel.shareownercontactflag
            : widget.registryModel.shareresidentcontactflag;
        _startDate = !mdisplay
            ? widget.registryModel.residentStartDate
            : widget.registryModel.ownerStartDate;
        _endDate = !mdisplay
            ? widget.registryModel.residentEndDate
            : widget.registryModel.ownerEndDate;
        _name.text = mdisplay
            ? widget.registryModel.ownerName ?? "No owner assigned"
            : widget.registryModel.residentName ?? "No resident assigned";

        _phoneNumber.text = !mdisplay
            ? widget.registryModel.residentPublishedContact.toString() ?? ''
            : widget.registryModel.ownerPublishedContact.toString() ?? '';
        _registerAs.text = !mdisplay ? "resident" : "owner";
        _unit.text = widget.registryModel.unitAddress;
        _managementPosition.text = !mdisplay
            ? widget.registryModel.residentManagementPosition ?? ''
            : widget.registryModel.ownerManagementPosition ?? '';
      });
    });
  }

  @override
  void initState() {
    mbloc = itembloc.RegistryModelBloc();
    _initFiledValue();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.RegistryModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
            registry: widget.registryModel,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.RegistryModelBloc,
            itembloc.RegistryModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // setState(() {
            haveAccess = state.haveAccess;
            displayOwner = state.displayOwner;
            roles = state.roles;
            // });
            if (widget.registryModel != null) {
              setStateBasedOnAccess(state.displayOwner, state.roles);
            }
            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.RegistryModelBloc,
            itembloc.RegistryModelState>(builder: (context, state) {
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

  Widget _blocBuilder(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: height * 4),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "Name",
                      controller: _name,
                      enabled: false,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    CustomTextField(
                      title: "Register As",
                      controller: _registerAs,
                      enabled: false,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
//                        CustomDropDownList<String>(
//                          title: "Management Position",
//                          enabled: widget.haveAccess,
//                          controller: _managementPosition,
//                          loadData: () async => managePos,
//                          displayName: (x) => x,
//                          validate:Validate.withOption(
//                            isRequired: true,
//                          ),
//                        ),
                    haveAccess || isShared
                        ? Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  enabled: haveAccess,
                                  title: "Published Contact",
                                  controller: _phoneNumber,
                                  validate: Validate.withOption(
                                    isRequired: true,
                                    isNumber: true,
                                  ),
                                ),
                              ),
                              Checkbox(
                                value: isShared,
                                onChanged: !haveAccess
                                    ? null
                                    : (bool value) {
                                        setState(() {
                                          isShared = !isShared;
                                        });
                                      },
                              ),
                            ],
                          )
                        : SizedBox(),
                    CustomTextField(
                      title: "Unit Address",
                      controller: _unit,
                      enabled: false,
                      validate: Validate.withOption(
                        isRequired: false,
                      ),
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _startDateController,
                      dateTime: _startDate,
                      enabled: false,
                      title: 'Start Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _startDate = x,
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _endDateController,
                      dateTime: _endDate,
                      title: 'End Date',
                      enabled: haveAccess,
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _endDate = x,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if ((roles.contains('owner') ||
            roles.contains('manager') ||
            (roles.contains('resident') && haveAccess)))
          CustomActionButton(
            //state: widget.btnState,
            title: "Update",
            gradient: C.bgGradient,
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin:
                EdgeInsets.symmetric(horizontal: width * 25, vertical: height),
            onTap: () async {
              if (widget.registryModel != null) {
                RegistryModel _registry = widget.registryModel.copyWith(
                  version: widget.registryModel.version + 1,
                  unitAddress: _unit.text,
                  residentPublishedContact: _phoneNumber.text,
                  residentEndDate: _endDate,
                  residentManagementPosition: _managementPosition.text,
                  shareresidentcontactflag: isShared,
                );
                mbloc.add(
                  itembloc.updateItemWithDiff(
                    olditem: widget.registryModel,
                    newitem: _registry,
                    entitytype: widget.entitytype,
                    entityid: widget.entityid,
                  ),
                );
              }
              if (haveAccess) {
                if (!displayOwner) {
                  RegistryModel _registry = RegistryModel(
                    version: widget.registryModel.version + 1,
                    unitAddress: _unit.text,
                    residentPublishedContact: _phoneNumber.text,
                    residentEndDate: _endDate,
                    residentManagementPosition: _managementPosition.text,
                    shareresidentcontactflag: isShared,
                  );

                  mbloc.add(
                    itembloc.createRegistryViaRegestryPartialEntry(
                      item: _registry,
                      isowner: displayOwner,
                      entitytype: widget.entitytype,
                      entityid: widget.entityid,
                    ),
                  );
                } else if (roles.contains(EntityRoles.Manager)) {
                  RegistryModel _registry = RegistryModel(
                    version: widget.registryModel.version + 1,
                    ownerPublishedContact: _phoneNumber.text,
                    ownerEndDate: _endDate,
                    unitAddress: _unit.text,
                    ownerManagementPosition: _managementPosition.text,
                    shareownercontactflag: isShared,
                  );
                  mbloc.add(itembloc.createRegistryViaRegestryPartialEntry(
                      item: _registry,
                      isowner: displayOwner,
                      entitytype: widget.entitytype,
                      entityid: widget.entityid));
                }
              }
            },
          ),
      ],
    );
  }
}
