import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart'
    hide DateTimeMode;

import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
// import 'package:complex/newentityfeatures/complex/building/model/building_model.dart';

// import 'package:complex/newentityfeatures/staff/model/staff_model.dart';

// import 'package:complex/newentityfeatures/unit/model/unit_model.dart';

// import '../model/service_request_model.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';

import 'package:complex/common/presentation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';
import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/data/screen_size.dart';

import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

class ServiceRequestForm extends StatefulWidget {
  final ServiceRequestModel serviceRequestModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int origintype;

  ServiceRequestForm(
      {this.serviceRequestModel,
      this.entityid,
      this.entitytype,
      this.givenreloadaction,
      this.origintype});

  @override
  _ServiceRequestFormState createState() => _ServiceRequestFormState();
}

class _ServiceRequestFormState extends State<ServiceRequestForm> {
  CustomTextFieldController _serviceProviderId = CustomTextFieldController();
  CustomTextFieldController _memberId = CustomTextFieldController();

  CustomTextFieldController _unitAddress = CustomTextFieldController();
  CustomTextFieldController _name = CustomTextFieldController();
  CustomTextFieldController _phonecontroller = CustomTextFieldController();
  CustomTextFieldController _notes = CustomTextFieldController();
  CustomTextFieldController _staffController = CustomTextFieldController();
  CustomTextFieldController _requestType = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  CustomTextFieldController _building = CustomTextFieldController();
  CustomTextFieldController _floorNum = CustomTextFieldController();
  CustomTextFieldController _justunitcontroller = CustomTextFieldController();
  CustomTextFieldController _justresidentorowner = CustomTextFieldController();

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  List<UnitOccupants> filteredUnits;
  List<String> units;
  Map<String, List<int>> floormap;
  Map<String, List<UnitOccupants>> justunits;
  List<SchoolOwner> stafflist;
  List<String> buildinglist;
  List<int> floors = [];
  UnitOccupants selectedUnitOcupant;
  List<String> residentownerlist;
  String unitaddress;

  // bool isStaff;
  var btnState;
  bool haveAccess;
  var user;

  bool isrequesttypeenabled;
  bool isbuildingidenabled;
  bool isstaffsliderenabled;
  bool isnameenabled;
  bool isbuildingenabled;
  bool isfloorenabled;
  bool isunitaddressenabled;
  bool isphonenumenabled;
  bool isstartdateenabled;
  bool isendDatedateenabled;
  bool isnotesenabled;

  bool _isUpdate = false;
  bool _isStaff = false;
  bool enabled = true;

  SchoolOwner staff;

  itembloc.ServiceRequestModelBloc mbloc;
/* 
  DateTime _startDate = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime _endDate = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);
 */
  List<String> serviceTypesWithOutAdhoc = [
    "VISITOR",
    "HOMEHELP",
    // "ADHOCVISITOR",
    "GATEPASS",
    "DELIVERY",
  ];
  List<String> serviceTypesWithAdhoc = [
    "ADHOCVISITOR",
  ];
  bool _validate() {
    return ((_staffController?.isValid ?? false) || !_isStaff) &&
        (_requestType.isValid) &&
        (_requestType.text == "HOMEHELP" ? _phonecontroller.isValid : true) &&
        (_requestType.text == "HOMEHELP" ||
                _requestType.text == "ADHOCVISITOR" ||
                _requestType.text == "VISITOR"
            ? _name.isValid
            : true) &&
        // _serviceProviderId.isValid &&
        // _memberId.isValid &&
        (_isStaff ? _staffController.isValid : true) &&
        _endDateController.isValid &&
        // (_isStaff || _unitAddress.isValid) &&
        _notes.isValid;
  }

  void _initFiledValue() {
    if (widget.serviceRequestModel != null) {
      isrequesttypeenabled = true;
      isbuildingidenabled = true;
      isstaffsliderenabled = true;
      isnameenabled = true;
      isbuildingenabled = true;
      isfloorenabled = true;
      isunitaddressenabled = true;
      isphonenumenabled = true;
      isstartdateenabled = true;
      isendDatedateenabled = true;
      isnotesenabled = true;
    } else {
      isrequesttypeenabled = false;
      isbuildingidenabled = false;
      isstaffsliderenabled = false;
      isnameenabled = false;
      isbuildingenabled = false;
      isfloorenabled = false;
      isunitaddressenabled = false;
      isphonenumenabled = false;
      isstartdateenabled = true;
      isendDatedateenabled = true;
      isnotesenabled = true;
    }

    if (widget.origintype == 1) {
      enabled = widget.serviceRequestModel == null ? true : false;
      Future.delayed(Duration(milliseconds: 80), () {
        _requestType.text = "ADHOCVISITOR";
      });
      haveAccess = false;
    } else if (widget.origintype == 2) {
      _isStaff = true;
      haveAccess = true;
      // serviceTypes = [];
    } else if (widget.origintype == 3) {
      _isStaff = false;
      haveAccess = true;
    }

    if (widget.serviceRequestModel != null) {
      _isUpdate = true;
      _startDate = widget.serviceRequestModel.startDate;
      _endDate = widget.serviceRequestModel.endDate;

      _isStaff = widget.serviceRequestModel.forstaff;
      String id = widget.serviceRequestModel.forstaffid;
      // if the user is owner/resident stafflist wont be loaded
      if (id != null && stafflist != null)
        staff = stafflist.firstWhere((element) => id == element.id);

      Future.delayed(Duration(milliseconds: 80), () {
        _name.text = widget.serviceRequestModel.correspondingName;
        _staffController.text = staff?.display;
        _notes.text = widget.serviceRequestModel.notesInstructions;
        _unitAddress.text = widget.serviceRequestModel.unitId;
        _serviceProviderId.text = widget.serviceRequestModel.serviceProviderId;
        _requestType.text =
            widget.serviceRequestModel?.requestType?.toString() ?? "";
        _memberId.text =
            widget.serviceRequestModel.serviceRequestorMemberUserId;
      });
    }
  }

  void _initBloc() {
    mbloc = itembloc.ServiceRequestModelBloc();
    mbloc.add(
      itembloc.getForNewEntry(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        isupdate: _isUpdate,
        serviceRequest: widget.serviceRequestModel,
        requesttype: '',
        originType: widget.origintype,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initFiledValue();
    _initBloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mbloc,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Service Request',
        ),
        body: BlocListener<itembloc.ServiceRequestModelBloc,
            itembloc.ServiceRequestModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");

            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
          if (state is itembloc.IsReadyForDetailsPage) {
            // isStaff = state.isStaff;
            haveAccess = state.haveAccess;
            user = state.user;
            btnState = state.btnState;
            justunits = state.oul.occupiedunits;
            stafflist = state.stafflist;
            buildinglist = state.buildinglist;
            floormap = state.oul.floormap;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.ServiceRequestModelBloc,
            itembloc.ServiceRequestModelState>(builder: (context, state) {
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
            // isStaff = state.isStaff;
            //haveAccess = state.haveAccess;
            user = state.user;
            btnState = state.btnState;
            units = state.units;
            stafflist = state.stafflist;
            buildinglist = state.buildinglist;

            return _render(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  Widget _render(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 6),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                if (widget.origintype == 1)
                  CustomSwitchWithTitle(
                    title: "For Staff",
                    isEnabled: _isStaff,
                    onChange: (value) => setState(() => _isStaff = value),
                  ),
                if (_isStaff)
                  CustomDropDownList<SchoolOwner>(
                    title: "Staff Member",
                    loadData: () async => stafflist,
                    displayName: (data) => "${data?.display}",
                    controller: _staffController,
                    initialValue: staff?.display,
                    validate: Validate.withOption(isRequired: true),
                    onSelected: (value, index) => staff = value,
                  ),
                /*  CustomTextField(
                  title: "Service Provider ID",
                  enabled: enabled,
                  controller: _serviceProviderId,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Member Id",
                  enabled: enabled,
                  controller: _memberId,
                  initialValue:
                      widget?.serviceRequestModel?.serviceRequestorMemberUserId,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ), */
                CustomTextField(
                  title: "Name",
                  enabled: enabled,
                  initialValue: widget?.serviceRequestModel?.correspondingName,
                  controller: _name,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),

                CustomTextField(
                  title: "Phone",
                  enabled: enabled,
                  initialValue: widget?.serviceRequestModel?.phone,
                  controller: _phonecontroller,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),

                // this has to be shown only in case of add record
                if (!_isStaff &&
                    widget.origintype == 1 &&
                    widget.serviceRequestModel == null) ...[
                  CustomDropDownList<String>(
                    title: "Building Name",
                    controller: _building,
                    loadData: () async => buildinglist,
                    displayName: (x) => x,
                    validate: Validate.withOption(isRequired: true),
                    onSelected: (value, index) {
                      setState(() {
                        _building.text = value;
                        floors = [];

                        filteredUnits = [];
                        floors =
                            floormap.containsKey(value) ? floormap[value] : [];
                      });
                    },
                  ),
                  CustomDropDownList<int>(
                    enabled:
                        _building.text != null && _building.text.isNotEmpty,
                    loadData: () async => floors,
                    shouldReload: true,
                    displayName: (x) => x.toString(),
                    title: "Floor Number",
                    controller: _floorNum,
                    validate: Validate.withOption(isRequired: true),
                    onSelected: (floor, index) {
                      setState(() {
                        _floorNum.text = floor.toString();
                        String buildingfloor =
                            _building.text + "@" + _floorNum.text;
                        filteredUnits = justunits.containsKey(buildingfloor)
                            ? justunits[buildingfloor]
                            : [];
                      });
                    },
                  ),
                  CustomDropDownList<UnitOccupants>(
                    title: "Unit Address",
                    enabled: _building.text != null &&
                        _building.text.isNotEmpty &&
                        _floorNum != null &&
                        _floorNum.text.isNotEmpty,
                    controller: _justunitcontroller,
                    //initialValue: widget?.serviceRequestModel?.unitId,
                    loadData: () async => filteredUnits,
                    displayName: (x) => x.unitaddress,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                    onSelected: (value, index) {
                      setState(() {
                        _justunitcontroller.text = value.unitaddress.toString();
                        selectedUnitOcupant = value;
                        residentownerlist = [];
                        if (selectedUnitOcupant.hasowner)
                          residentownerlist.add("ForOwner");

                        if (selectedUnitOcupant.hasresident)
                          residentownerlist.add("ForResident");
                      });
                    },
                  ),
                  CustomDropDownList<String>(
                    title: "Owner/Resident",
                    enabled: _building.text != null &&
                        _building.text.isNotEmpty &&
                        _floorNum.text != null &&
                        _floorNum.text.isNotEmpty &&
                        selectedUnitOcupant != null,
                    controller: _justresidentorowner,
                    //initialValue: widget?.serviceRequestModel?.unitId,
                    loadData: () async => residentownerlist,
                    displayName: (x) => x,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                    onSelected: (value, index) {
                      setState(() {
                        if (value == "ForOwner")
                          Logger().i(_building.text +
                              _floorNum.text +
                              _justunitcontroller.text);
                        unitaddress = (_building.text +
                                "@" +
                                _floorNum.text +
                                "@" +
                                _justunitcontroller.text +
                                "_o")
                            .toString();
                        _unitAddress.text = unitaddress;
                        Logger().i(_unitAddress.text);
                        if (value == "ForResident")
                          _unitAddress.text = _building.text +
                              "@" +
                              _floorNum.text +
                              "@" +
                              _justunitcontroller.text +
                              "_r";
                      });
                    },
                  ),
                ],
                if ((widget.origintype == 3 && !_isStaff) ||
                    (widget.origintype == 1 &&
                        widget.serviceRequestModel != null &&
                        !_isStaff))
                  CustomDropDownList<String>(
                    title: "Unit Address",
                    enabled: enabled,
                    controller: _unitAddress,
                    initialValue: widget?.serviceRequestModel?.unitId,
                    loadData: () async => filteredUnits ?? units,
                    displayName: (x) => x,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                CustomDropDownList(
                  title: "Request Type",
                  enabled: (widget.serviceRequestModel == null),
                  controller: _requestType,
                  initialValue:
                      widget?.serviceRequestModel?.requestType?.toString() ??
                          "",
                  loadData: () async => widget.origintype == 1
                      ? serviceTypesWithAdhoc
                      : serviceTypesWithOutAdhoc,
                  displayName: (data) => data,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Notes",
                  enabled: enabled,
                  controller: _notes,
                  initialValue: widget.serviceRequestModel?.notesInstructions,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                newentitytimepicker.CustomDateTimePicker(
                  controller: _startDateController,
                  enabled: enabled ||
                      (widget.serviceRequestModel?.startDate == null &&
                          widget.origintype != 1),
                  dateTime: _startDate,
                  title: 'Start Date',
                  mode: DateTimeMode.DATE,
                  onChange: (x) => _startDate = x,
                ),
                newentitytimepicker.CustomDateTimePicker(
                  controller: _endDateController,
                  enabled: enabled || widget.origintype != 1,
                  dateTime: _endDate,
                  title: 'End Date',
                  mode: DateTimeMode.DATE,
                  onChange: (x) => _endDate = x,
                ),
              ],
            ),
            SizedBox(height: height * 4),
            if ((!_isUpdate || haveAccess) && enabled)
              CustomActionButton(
                color: Theme.of(context).primaryColor,
                // state: btnState,
                title: _isUpdate ? "Update" : "Add",
//              color: Colors.white12,

                onTap: () async {
                  if (_validate()) {
                    ServiceRequestModel _serviceRequest = ServiceRequestModel(
                        correspondingName: _name.text,
                        requesterID: user.userID,
                        requestType: ServiceRequestType.ADHOCVISITOR,
                        notesInstructions: _notes.text,
                        forstaff: _isStaff,
                        forstaffid: staff?.id,
                        forstaffname: staff?.display,
                        requestedDate: DateTime.now(),
                        requesterType: _requestType.text,
                        startDate: _startDate ??
                            _endDate.subtract(Duration(minutes: 5)),
                        unitId: unitaddress,
                        endDate: _endDate,
                        requireNotificationEntry: false,
                        phone: _phonecontroller.text);
                    if (_isUpdate) {
                      BlocProvider.of<itembloc.ServiceRequestModelBloc>(context)
                          .add(
                        itembloc.updateItemWithDiff(
                            olditem: widget.serviceRequestModel,
                            newitem: _serviceRequest,
                            entitytype: widget.entitytype,
                            entityid: widget.entityid),
                      );
                    } else {
                      BlocProvider.of<itembloc.ServiceRequestModelBloc>(context)
                          .add(
                        itembloc.createItem(
                            item: _serviceRequest,
                            entitytype: widget.entitytype,
                            entityid: widget.entityid),
                      );
                    }
                  }
                },
              ),
            if (!_isStaff && _isUpdate)
              Row(
                children: [
                  Container(
                    child: CustomActionButton(
                      // state: btnState,
                      title: "Entry In",
//              color: Colors.white12,
                      gradient: C.bgGradient,
                      isExpanded: false,
                      padding: EdgeInsets.symmetric(vertical: height * 1.5),
//                  margin: EdgeInsets.symmetric(horizontal: width * 25, vertical: height * 6),
                      onTap: () async {},
                    ),
                  ),
                  Container(
                    child: CustomActionButton(
                      // state: btnState,
                      title: "Entry Out",
//              color: Colors.white12,
                      isExpanded: false,
                      gradient: C.bgGradient,
                      padding: EdgeInsets.symmetric(vertical: height * 1.5),
                      onTap: () async {},
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
