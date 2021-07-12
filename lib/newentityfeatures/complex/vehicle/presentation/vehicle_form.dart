// import 'package:complex/newentityfeatures/Models/common/button_state.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/common/widgets/custom_image_uploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
// import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;

import '../itembloc/bloc.dart' as itembloc;

class VehicleModelForm extends StatefulWidget {
  final ComplexVehicleModel vehicleModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  VehicleModelForm({
    @required this.vehicleModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _VehicleModelFormState createState() => _VehicleModelFormState();
}

class _VehicleModelFormState extends State<VehicleModelForm> {
  CustomTextFieldController _unitNumber = CustomTextFieldController();
  CustomTextFieldController _numberPlate = CustomTextFieldController();
  CustomTextFieldController _registrationNo = CustomTextFieldController();
  CustomTextFieldController _vehicleType = CustomTextFieldController();
  CustomTextFieldController _uploadPhoto = CustomTextFieldController();
  CustomTextFieldController _visitorName = CustomTextFieldController();
  CustomTextFieldController _visitorPhoneNumber = CustomTextFieldController();
  CustomTextFieldController _ownersName = CustomTextFieldController();
  CustomTextFieldController _staffController = CustomTextFieldController();
  CustomTextFieldController _typeController = CustomTextFieldController();

  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();

  StaffModelx staff;

  bool _isActive = true;
  bool _isUpdate = false;

  // final ComplexVehicleModel vehicleModel;
  // final List<TimeLineModel> timeline;
  // final int timelineIndex;

  bool isResident;
  ButtonState btnState;
  int vehicleIndex;
  List<UnitModel> unitList;
  List<StaffModelx> staffList;

  int timelineIndex = 0;

  List<String> vehicleTypes = [
    'SEDAN',
    'COUPE',
    'SPORTS CAR',
    'STATION WAGON',
    'HATCHBACK',
    'CONVERTIBLE',
    'SUV',
    'MINIVAN',
    'PICKUP TRUCK',
  ];

  List<String> get types =>
      isResident ? ['resident'] : ['resident', 'visitor', 'staff'];

  bool get _isVisitor => _typeController.text == 'visitor';
  bool get _isStaff => _typeController.text == 'staff';

  bool _pickAndDrop = false;

  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  List<String> _units = [];

  bool _validate(int i) {
    if (i == 0) {
      if (_startDate.isAfter(_endDate)) {
        asuka.showSnackBar(SnackBar(
          backgroundColor: C.red,
          content: Text("End date should be greater than start date"),
        ));
        return false;
      }

      return Validate.validateAll([
        _numberPlate,
        _registrationNo,
        _vehicleType,
        _uploadPhoto,
      ]);
    } else if (i == 1) {
      return Validate.validateAll([
        _typeController,
        _ownersName,
        if (_isStaff) _staffController,
        if (!_isStaff) _unitNumber,
        if (_isVisitor) _visitorName,
        if (_isVisitor) _visitorPhoneNumber,
      ]);
    } else
      return false;
  }

  void _initFiledValue() {
    unitList?.forEach((units) {
      _units.add(units.unitID);
    });

    if (widget.vehicleModel != null) {
      if (!_isUpdate) {
        _startDate = widget.vehicleModel.startDate;
        _endDate = widget.vehicleModel.endDate;
      }

      String id = widget.vehicleModel.forstaffid;
      if (id != null)
        staff = staffList.firstWhere((element) => id == element.staffID);
      _staffController.text = staff?.name;

      Future.delayed(Duration(milliseconds: 80), () {
        setState(() {
          _ownersName.text = widget.vehicleModel.ownerName;

          _unitNumber.text = widget.vehicleModel.unitAddress;
          _numberPlate.text = widget.vehicleModel.numberPlate;
          _registrationNo.text = widget.vehicleModel.registrationNum;
          _vehicleType.text = widget.vehicleModel.vehicleType;
          _uploadPhoto.text = widget.vehicleModel.photoLink;

          _visitorName.text = widget.vehicleModel.userName;
          _visitorPhoneNumber.text =
              widget.vehicleModel.userPhoneNum.toString();
          _isActive = widget.vehicleModel.isActive;
          _pickAndDrop = widget.vehicleModel.isPickAndDrop;
          _typeController.text = widget.vehicleModel.isStaff
              ? 'staff'
              : widget.vehicleModel.isVisitor
                  ? "visitor"
                  : "resident";

          _isUpdate = true;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // unitList.forEach((units) {
    //   _units.add(units.unitID);
    // });
    _initFiledValue();
  }

  @override
  void didUpdateWidget(covariant VehicleModelForm oldWidget) {
    _initFiledValue();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.VehicleModelBloc()
        ..add(
          itembloc.GetForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vehicle'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.VehicleModelBloc,
            itembloc.VehicleModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            btnState = ButtonState.idle;
            vehicleIndex = state.vehicleIndex;
            unitList = state.unitList ?? [];
            staffList = state.staff ?? [];
            isResident = state.isResident;

            _initFiledValue();
          }
        }, child:
            BlocBuilder<itembloc.VehicleModelBloc, itembloc.VehicleModelState>(
                builder: (context, state) {
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
          child: Stepper(
            currentStep: timelineIndex,
            controlsBuilder: (context, {onStepCancel, onStepContinue}) {
              return SizedBox();
            },
            steps: [
              Step(
                isActive: timelineIndex >= 0,
                title: Text("First page"),
                content: buildFirstPage(),
              ),
              Step(
                isActive: timelineIndex >= 1,
                title: Text("Second page"),
                content: buildSecondPage(),
              ),
            ],
          ),
        ),
        // Center(
        //   child: HorizontalTimeline(
        //     timeline: widget.timeline,
        //   ),
        // ),
        // Visibility(
        //   visible: timelineIndex == 1,
        //   child: buildFirstPage(),
        // ),
        // Visibility(
        //   visible: timelineIndex == 2,
        //   child: buildSecondPage(),
        // ),
        CustomActionButton(
          state: btnState,
          title: timelineIndex == 1
              ? _isUpdate
                  ? "Update"
                  : "Add"
              : 'Next',
          gradient: C.bgGradient,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin:
              EdgeInsets.symmetric(horizontal: width * 25, vertical: height),
          onTap: () {
            FocusScope.of(context).unfocus();
            if (btnState == ButtonState.idle) {
              if (_validate(timelineIndex)) {
                if (timelineIndex < 1 /* widget.timeline.length */) {
                  _initFiledValue();
                  setState(() {
                    timelineIndex++;
                  });
                  // BlocProvider.of<ComplexBloc>(context).add(
                  //   VehicleFormNextComplexEvent(
                  //     vehicleIndex: widget.vehicleIndex,
                  //     timeLineIndex: widget.timelineIndex,
                  //   ),
                  // );
                } else {
                  ComplexVehicleModel _vehicle = ComplexVehicleModel(
                    unitAddress: _unitNumber.text,
                    ownerName: _ownersName.text,
                    numberPlate: _numberPlate.text,
                    registrationNum: _registrationNo.text,
                    forstaffid: staff?.staffID,
                    forstaffname: staff?.name,
                    isStaff: _isStaff,
                    vehicleType: _vehicleType.text,
                    userName: _isVisitor ? _visitorName.text : null,
                    isVisitor: _isVisitor,
                    isActive: _isActive,
                    startDate: _startDate,
                    photoLink: _uploadPhoto.text,
                    endDate: _endDate,
                    isPickAndDrop: _pickAndDrop,
                    userPhoneNum:
                        _isVisitor ? int.parse(_visitorPhoneNumber.text) : null,
                  );

                  {
                    if (_isUpdate) {
                      BlocProvider.of<itembloc.VehicleModelBloc>(context).add(
                        itembloc.UpdateItemWithDiff(
                          newitem: _vehicle,
                          olditem: widget.vehicleModel,
                          vehicleIndex: vehicleIndex,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                        // itembloc.updateItem(
                        //   item: _vehicle,
                        //   vehicleIndex: vehicleIndex,
                        //   entityid: widget.entityid,
                        //   entitytype: widget.entitytype,
                        // ),
                      );
                    } else {
                      BlocProvider.of<itembloc.VehicleModelBloc>(context).add(
                        itembloc.CreateItem(
                          item: _vehicle,
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    }
                  }
                }
              }
            }
          },
        ),
      ],
    );
  }

  Widget buildSecondPage() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomSwitchWithTitle(
                title: "Is Active",
                isEnabled: _isActive,
                onChange: (x) {
                  _isActive = x;
                },
              ),
              CustomDropDownList<String>(
                enabled: !_isUpdate,
                controller: _typeController,
                displayName: (data) => data,
                loadData: () async => types,
                title: 'For',
                onSelected: (value, index) => setState(() {}),
              ),
              if (_isStaff)
                CustomDropDownList<StaffModelx>(
                  title: "Staff",
                  controller: _staffController,
                  displayName: (data) => data.name ?? '',
                  loadData: () async => staffList,
                  onSelected: (s, index) => staff = s,
                  validate: Validate.withOption(isRequired: true),
                ),
              if (!_isStaff)
                CustomDropDownList<String>(
                  title: "Unit Address",
                  controller: _unitNumber,
                  loadData: () async => _units,
                  displayName: (x) => x,
                  validate: Validate.withOption(isRequired: true),
                ),
              CustomTextField(
                enabled: !_isUpdate,
                title: "Owner's Name",
                controller: _ownersName,
                validate: Validate.withOption(isRequired: !_isUpdate),
              ),
              if (_isVisitor)
                CustomTextField(
                  title: "Visitor Name",
                  controller: _visitorName,
                  enabled: _isVisitor && !_isUpdate,
                  validate: Validate.withOption(isRequired: _isVisitor),
                ),
              if (_isVisitor)
                CustomTextField(
                  title: "Visitor Phone Number",
                  enabled: _isVisitor && !_isUpdate,
                  controller: _visitorPhoneNumber,
                  validate: Validate.withOption(
                    isRequired: _isVisitor && !_isUpdate,
                    isNumber: _isVisitor && !_isUpdate,
                  ),
                ),
              CustomSwitchWithTitle(
                title: "Pick and Drop",
                isEnabled: _pickAndDrop,
                onChange: (x) {
                  _pickAndDrop = x;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFirstPage() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomTextField(
                enabled: !_isUpdate,
                title: "Number Plate",
                controller: _numberPlate,
                onChange: (text) => setState(() {}),
                validate: Validate.withOption(
                  isRequired: true,
                ),
              ),
              CustomTextField(
                enabled: !_isUpdate,
                title: "Registration No.",
                controller: _registrationNo,
                validate: Validate.withOption(
                  isRequired: true,
                ),
              ),
              CustomDropDownList<String>(
                displayName: (data) => data,
                loadData: () async => vehicleTypes,
                enabled: !_isUpdate,
                title: "Vehicle Type",
                controller: _vehicleType,
                validate: Validate.withOption(
                  isRequired: true,
                ),
              ),
              CustomImageUploader(
                initialValue: widget.vehicleModel?.photoLink,
                path: 'Vehicle/${_numberPlate.text}',
                controller: _uploadPhoto,
                enabled: _numberPlate.text?.isNotEmpty == true,
                validate: Validate.withOption(isRequired: false),
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
        ],
      ),
    );
  }
}
