import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:complex/newentityfeatures/complex/building/model/building_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';

// import 'package:complex/newentityfeatures/staff/model/staff_model.dart';

// import 'package:complex/newentityfeatures/unit/model/unit_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';

// import '../model/service_request_model.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';

import 'package:complex/common/presentation.dart';
import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/data/screen_size.dart';

import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

class GatePassRequestForm extends StatefulWidget {
  final ServiceRequestModel serviceRequestModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final int origintype;

  GatePassRequestForm(
      {this.serviceRequestModel,
      this.entityid,
      this.entitytype,
      this.givenreloadaction,
      this.origintype});

  @override
  _GatePassRequestFormState createState() => _GatePassRequestFormState();
}

class _GatePassRequestFormState extends State<GatePassRequestForm> {
  CustomTextFieldController _serviceProviderId = CustomTextFieldController();
  CustomTextFieldController _memberId = CustomTextFieldController();

  CustomTextFieldController _unitAddress = CustomTextFieldController();
  CustomTextFieldController _name = CustomTextFieldController();

  CustomTextFieldController _notes = CustomTextFieldController();
  CustomTextFieldController _staffController = CustomTextFieldController();
  CustomTextFieldController _requestType = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  List<UnitModel> units;
  List<StaffModelx> stafflist;
  List<BuildingModel> buildinglist;

  bool isStaff;
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

  List<String> roles;

  StaffModelx staff;

  itembloc.ServiceRequestModelBloc mbloc;
/* 
  DateTime _startDate = new DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);
  DateTime _endDate = new DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day);
 */
  List<String> serviceTypes = [
    "VISITOR",
    "HOMEHELP",
    "ADHOCVISITOR",
    "GATEPASS",
    "DELIVERY",
  ];

  bool _validate() {
    return ((_staffController?.isValid ?? false) || !_isStaff) &&
        _serviceProviderId.isValid &&
        _memberId.isValid &&
        _endDateController.isValid &&
        (_name.isValid || _isStaff) &&
        (_unitAddress.isValid || _isStaff) &&
        _notes.isValid;
  }

  void _initFiledValue() {
    if (widget.serviceRequestModel != null) {
      _isUpdate = true;
      _startDate = widget.serviceRequestModel.startDate;
      _endDate = widget.serviceRequestModel.endDate;

      _isStaff = widget.serviceRequestModel.forstaff;
      String id = widget.serviceRequestModel.forstaffid;
      // if the user is owner/resident stafflist wont be loaded
      if (id != null && stafflist != null)
        staff = stafflist.firstWhere((element) => id == element.staffID);

      Future.delayed(Duration(milliseconds: 80), () {
        _name.text = widget.serviceRequestModel.correspondingName;
        _staffController.text = staff?.name;
        _notes.text = widget.serviceRequestModel.notesInstructions;
        _unitAddress.text = widget.serviceRequestModel.unitId;
        _serviceProviderId.text = widget.serviceRequestModel.serviceProviderId;
        _requestType.text = widget.serviceRequestModel.requestType.toString();
        _memberId.text =
            widget.serviceRequestModel.serviceRequestorMemberUserId;
      });
    }
  }

  void _initBloc() {
    mbloc = new itembloc.ServiceRequestModelBloc();
    mbloc.add(
      itembloc.getForNewEntry(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        isupdate: _isUpdate,
        serviceRequest: widget.serviceRequestModel,
        requesttype: '',
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
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.ServiceRequestModelBloc,
            itembloc.ServiceRequestModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
          if (state is itembloc.IsReadyForDetailsPage) {
            isStaff = state.isStaff;
            haveAccess = state.haveAccess;
            user = state.user;
            btnState = state.btnState;
            units = state.units;
            stafflist = state.stafflist;
            buildinglist = state.buildinglist;

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
            isStaff = state.isStaff;
            haveAccess = state.haveAccess;
            user = state.user;
            btnState = state.btnState;
            units = state.units;
            stafflist = state.stafflist;
            buildinglist = state.buildinglist;
            roles = state.roles ?? [];
            if (roles.contains("security")) {
              _requestType.text = "ADHOCVISITOR";
            }

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
                CustomSwitchWithTitle(
                  title: "For Staff",
                  isEnabled: _isStaff,
                  onChange: (value) => setState(() => _isStaff = value),
                ),
                if (_isStaff)
                  CustomDropDownList<StaffModelx>(
                    title: "Staff Member",
                    loadData: () async => stafflist,
                    displayName: (data) => "${data?.name}",
                    controller: _staffController,
                    initialValue: staff?.name,
                    validate: Validate.withOption(isRequired: true),
                    onSelected: (value, index) => staff = value,
                  ),
                CustomTextField(
                  title: "Service Provider ID",
                  controller: _serviceProviderId,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Member Id",
                  controller: _memberId,
                  initialValue:
                      widget?.serviceRequestModel?.serviceRequestorMemberUserId,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                if (!_isStaff)
                  CustomTextField(
                    title: "Name",
                    initialValue:
                        widget?.serviceRequestModel?.correspondingName,
                    controller: _name,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                // newentitytimepicker.CustomDateTimePicker(
                //   controller: _endDateController,
                //   dateTime: _endDate,
                //   title: 'Expected Time',
                //   mode: DateTimeMode.DATETIME,
                //   onChange: (x) => _endDate = x,
                // ),

                if (!_isStaff)
                  CustomDropDownList<String>(
                    title: "Unit Address",
                    controller: _unitAddress,
                    initialValue: widget?.serviceRequestModel?.unitId,
                    loadData: () async =>
                        units.map((unit) => unit.unitID).toList(),
                    displayName: (x) => x,
                    validate: Validate.withOption(
                      isRequired: true,
                    ),
                  ),
                CustomDropDownList(
                  title: "Request Type",
                  controller: _requestType,
                  initialValue:
                      widget?.serviceRequestModel?.requestType.toString(),
                  enabled: !roles.contains("security"),
                  loadData: () async => serviceTypes,
                  displayName: (data) => data,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),

                CustomTextField(
                  title: "Notes",
                  controller: _notes,
                  initialValue: widget.serviceRequestModel?.notesInstructions,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                newentitytimepicker.CustomDateTimePicker(
                  controller: _startDateController,
                  dateTime: _startDate,
                  title: 'Start Date',
                  mode: DateTimeMode.DATE,
                  onChange: (x) => _startDate = x,
                ),
                newentitytimepicker.CustomDateTimePicker(
                  controller: _endDateController,
                  dateTime: _endDate,
                  title: 'End Date',
                  mode: DateTimeMode.DATE,
                  onChange: (x) => _endDate = x,
                ),
              ],
            ),
            SizedBox(height: height * 4),
            if (!_isUpdate || haveAccess)
              CustomActionButton(
                // state: btnState,
                title: _isUpdate ? "Update" : "Add",
//              color: Colors.white12,
                gradient: C.bgGradient,
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                margin: EdgeInsets.symmetric(
                    horizontal: width * 25, vertical: height * 6),
                onTap: () async {
                  if (_validate()) {
                    ServiceRequestModel _serviceRequest = ServiceRequestModel(
                      correspondingName: _name.text,
                      requesterID: user.userID,
                      requestType: ServiceRequestType.GATEPASS,
                      notesInstructions: _notes.text,
                      forstaff: _isStaff,
                      forstaffid: staff?.staffID,
                      forstaffname: staff?.name,
                      requestedDate: DateTime.now(),
                      requesterType: _requestType.text,
                      startDate:
                          _startDate ?? _endDate.subtract(Duration(minutes: 5)),
                      unitId: _unitAddress.text,
                      endDate: _endDate,
                      requireNotificationEntry: false,
                    );
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
            if (!isStaff && _isUpdate)
              Row(
                children: [
                  Expanded(
                    child: CustomActionButton(
                      state: btnState,
                      title: "Entry In",
//              color: Colors.white12,
                      gradient: C.bgGradient,
                      isExpanded: true,
                      padding: EdgeInsets.symmetric(vertical: height * 1.5),
//                  margin: EdgeInsets.symmetric(horizontal: width * 25, vertical: height * 6),
                      onTap: () async {},
                    ),
                  ),
                  Expanded(
                    child: CustomActionButton(
                      state: btnState,
                      title: "Entry Out",
//              color: Colors.white12,
                      isExpanded: true,
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
