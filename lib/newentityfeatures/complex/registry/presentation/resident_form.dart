import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/data/screen_size.dart';
// import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/Models/common/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/Models/resident_model.dart';

List<GlobalKey<FormState>> formKeys = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>()
];

class ResidentForm extends StatefulWidget {
  final ButtonState btnState;
  final RegistryModel registry;
  final String entityid;
  final String entitytype;
  final reloadAction givenreloadaction;
  final String role;
  final int origintype;
  ResidentForm({
    @required this.btnState,
    @required this.entitytype,
    @required this.entityid,
    @required this.givenreloadaction,
    @required this.origintype,
    @required this.registry,
    @required this.role,
  });

  @override
  _ResidentFormState createState() => _ResidentFormState();
}

class _ResidentFormState extends State<ResidentForm> {
  CustomTextFieldController _firstName = CustomTextFieldController();
  CustomTextFieldController _middleName = CustomTextFieldController();
  CustomTextFieldController _lastName = CustomTextFieldController();
  CustomTextFieldController _emailAddress = CustomTextFieldController();
  CustomTextFieldController _contactNumber = CustomTextFieldController();
  CustomTextFieldController _managementPosition = CustomTextFieldController();
  CustomTextFieldController _contactNumberToPublish =
      CustomTextFieldController();
  CustomTextFieldController _registeredAs = CustomTextFieldController();
  CustomTextFieldController _startDateController = CustomTextFieldController();
  CustomTextFieldController _endDateController = CustomTextFieldController();
  bool isShared = true;
  static var _focusNode = FocusNode();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> managePos = ['President', 'Member', 'Secretary'];
  int currStep = 0;
  int steplength = 2;
  CustomTextFieldController _building = CustomTextFieldController();
  CustomTextFieldController _floorNum = CustomTextFieldController();
  CustomTextFieldController _unit = CustomTextFieldController();
  itembloc.RegistryModelBloc mbloc;
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now();

  List<String> roles;
  List<String> registeredAsRoles = [];
  bool haveAccess;
  bool displayOwner;
  List<UnitModel> unitList;

  List<String> buildings = [];
  List<int> floors = [];
  List<UnitModel> filteredUnits;

  ResidentModel resident;

  bool _newItem = false;

  bool _validate(int i) {
    if (i == 0) {
      return _firstName.isValid &&
          _lastName.isValid &&
          _emailAddress.isValid &&
          _contactNumber.isValid &&
          _contactNumberToPublish.isValid;
      // && _middleName.isValid;
    } else if (i == 1) {
      return _registeredAs.isValid && _unit.isValid;
    }
    return false;
  }

  void _initFiledValue() {
    Future.delayed(Duration(milliseconds: 80), () {
      if (widget.registry != null) {
        // if (widget.role == "manager") {
        if (widget.origintype == 1) {
          String ownerName = widget.registry.ownerName;
          String firstName = ownerName.substring(0, ownerName.indexOf(","));
          String lastName = ownerName.substring(ownerName.indexOf(",") + 1);

          _firstName.text = resident?.firstName ?? firstName;
          _lastName.text = resident?.lastName ?? lastName;
          _emailAddress.text = resident?.email;

          _contactNumber.text =
              resident?.contactNumber ?? widget.registry.ownerPublishedContact;
          _contactNumberToPublish.text = resident?.publishedContact ??
              widget.registry.ownerPublishedContact;

          _registeredAs.text = resident?.registerAs;

          _managementPosition.text = resident?.managementPosition ??
              widget.registry.ownerManagementPosition;
          _unit.text = resident?.unitAddress ?? widget.registry.unitAddress;
          _startDateController.text = resident?.startDate?.toString() ??
              widget.registry.ownerStartDate?.toString();
          _endDateController.text = resident?.endDate?.toString() ??
              widget.registry.ownerEndDate?.toString();
          _startDate = resident?.startDate ??
              widget?.registry?.ownerStartDate ??
              DateTime.now();
          _endDate = resident?.endDate ??
              widget?.registry?.ownerEndDate ??
              DateTime.now();
          // } else if (widget.role == "owner") {
        } else if (widget.origintype == 2 || widget.origintype == 3) {
          String residentName = widget.registry.residentName;
          String firstName =
              residentName.substring(0, residentName.indexOf(","));
          String lastName =
              residentName.substring(residentName.indexOf(",") + 1);

          _firstName.text = resident?.firstName ?? firstName;
          _lastName.text = resident?.lastName ?? lastName;
          _emailAddress.text = resident?.email;

          _contactNumber.text = resident?.contactNumber ??
              widget.registry.residentPublishedContact;
          _contactNumberToPublish.text = resident?.publishedContact ??
              widget.registry.residentPublishedContact;

          _registeredAs.text = resident?.registerAs;

          _managementPosition.text = resident?.managementPosition ??
              widget.registry.residentManagementPosition;
          _unit.text = resident?.unitAddress ?? widget.registry.unitAddress;
          _startDateController.text = resident?.startDate?.toString() ??
              widget.registry.residentStartDate?.toString();
          _endDateController.text = resident?.endDate?.toString() ??
              widget.registry.residentEndDate?.toString();
          _startDate = resident?.startDate ??
              widget?.registry?.residentStartDate ??
              DateTime.now();
          _endDate = resident?.endDate ??
              widget?.registry?.residentEndDate ??
              DateTime.now();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();

    //
    mbloc = itembloc.RegistryModelBloc();
    _focusNode.addListener(() {
      setState(() {});

      print('Has focus: $_focusNode.hasFocus');
    });
    mbloc.add(
      itembloc.getForNewEntry(
        entitytype: widget.entitytype,
        entityid: widget.entityid,
        registry: widget.registry,
      ),
    );
  }

  void _submitDetails() {
    // final FormState formState = _formKey.currentState;

    // if (!formState.validate()) {
    //   asuka.showSnackBar(SnackBar(
    //     content: Text("Item is deleted"),
    //   ));

    if (_endDate.isAfter(_startDate)) {
      ResidentModel _residentModel = ResidentModel(
        version: 1,
        firstName: _firstName.text,
        lastName: _lastName.text,
        email: _emailAddress.text,
        contactNumber: _contactNumber.text,
        registerAs: _registeredAs.text,
        unitAddress: _unit.text,
        startDate: _startDate,
        endDate: _endDate,
        publishedContact: _contactNumberToPublish.text,
        publishcontactflag: isShared,
      );
      if (widget.registry != null) {
        mbloc.add(
          itembloc.updateResident(
            // olditem: widget.registry,
            item: _residentModel,
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        );
      } else {
        mbloc.add(
          itembloc.createRegistryViaResidentModel(
            item: _residentModel,
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        );
      }
    } else {
      asuka.showSnackBar(SnackBar(
        backgroundColor: C.red,
        content: Text('End date should be greater than Start date'),
      ));
    }
  }

  List<Step> getSteps(BuildContext context) {
    List<Step> steps = [];
    Step step1 = new Step(
        title: const Text('Name'),
        //subtitle: const Text('Enter your name'),
        isActive: true,
        //state: StepState.error,
        state: StepState.indexed,
        content: Form(
          key: formKeys[0],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomTextField(
                      title: "First Name",
                      enabled: _newItem,
                      controller: _firstName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    // CustomTextField(
                    //   title: "Middle Name",
                    //   controller: _middleName,
                    //   validate: Validate.withOption(
                    //     isRequired: true,
                    //   ),
                    // ),
                    CustomTextField(
                      title: "Last Name",
                      enabled: _newItem,
                      controller: _lastName,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomTextField(
                      title: "Email address",
                      enabled: _newItem,
                      controller: _emailAddress,
                      validate:
                          Validate.withOption(isRequired: true, isEmail: true),
                    ),
                    CustomTextField(
                      title: "Contact Number",
                      enabled: _newItem || widget.origintype == 1,
                      controller: _contactNumber,
                      validate:
                          Validate.withOption(isRequired: true, isNumber: true),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            title: "Contact Number To Publish",
                            controller: _contactNumberToPublish,
                            validate: Validate.withOption(
                                isRequired: true, isNumber: true),
                          ),
                        ),
                        Checkbox(
                          value: isShared,
                          onChanged: (bool value) {
                            setState(() {
                              isShared = !isShared;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));

    Step step2 = new Step(
        title: const Text('Phone'),
        //subtitle: const Text('Subtitle'),
        isActive: true,
        //state: StepState.editing,
        state: StepState.indexed,
        content: Form(
          key: formKeys[1],
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomDropDownList<String>(
                      title: "Registered as",
                      enabled: _newItem,
                      controller: _registeredAs,
                      loadData: () async => registeredAsRoles,
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      title: "Management Position",
                      enabled: _newItem,
                      controller: _managementPosition,
                      loadData: () async => managePos,
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<String>(
                      initialValue: widget.registry?.buildingName,
                      enabled: _newItem,
                      // enabled: isManager && !_newItem,
                      title: "Building Name",
                      controller: _building,
                      loadData: () async => buildings,
                      displayName: (x) => x,
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (value, index) {
                        setState(() {
                          _building.text = value;
                          floors = [];
                          filteredUnits = [];
                          unitList.forEach((unit) {
                            if (!floors.contains(unit.floorNum) &&
                                unit.buildingName == value) {
                              floors.add(unit.floorNum);
                              _floorNum.text = floors.first.toString();
                            }
                            if (unit.buildingName == value &&
                                unit.floorNum == floors.first) {
                              filteredUnits.add(unit);
                            }
                          });
                        });
                      },
                    ),
                    CustomDropDownList<int>(
                      loadData: () async => floors,
                      shouldReload: true,
                      displayName: (x) => x.toString(),
                      initialValue: widget.registry?.floorNum,
                      title: "Floor Number",
                      controller: _floorNum,
                      enabled: buildings.isNotEmpty && _newItem,
                      validate: Validate.withOption(isRequired: true),
                      onSelected: (value, index) {
                        setState(() {
                          _floorNum.text = value.toString();
                          filteredUnits = [];
                          unitList.forEach((unit) {
                            if (unit.buildingName == _building.text &&
                                unit.floorNum == value) {
                              filteredUnits.add(unit);
                            }
                          });
                        });
                      },
                    ),
                    CustomDropDownList<String>(
                      title: "Select Unit",
                      controller: _unit,
                      enabled: _newItem,
                      shouldReload: true,
                      loadData: () async =>
                          filteredUnits.map((e) => e.unitID).toList(),
                      displayName: (x) => x,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _startDateController,
                      enabled: _newItem,
                      dateTime: _startDate,
                      title: 'Start Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _startDate = x,
                    ),
                    newentitytimepicker.CustomDateTimePicker(
                      controller: _endDateController,
                      enabled: _newItem,
                      dateTime: _endDate,
                      title: 'End Date',
                      mode: DateTimeMode.DATE,
                      onChange: (x) => _endDate = x,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
    steps = [step1, step2];
    return steps;
  }

  @override
  Widget _blocBuilder(context) {
    return Container(
        child: Form(
      key: _formKey,
      // child: ListView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: getSteps(context),
              type: StepperType.vertical,
              currentStep: this.currStep,
              onStepContinue: () {
                // if (formKeys[currStep].currentState.validate()) {
                if (_validate(currStep)) {
                  if (currStep == (steplength - 1)) {
                    _submitDetails();
                  } else if (currStep < (steplength - 1)) {
                    setState(() {
                      currStep = currStep + 1;
                    });
                  } else {
                    setState(() {
                      currStep = 0;
                    });
                  }
                }
              },
              onStepCancel: () {
                setState(() {
                  if (currStep > 0) {
                    currStep = currStep - 1;
                  } else {
                    currStep = 0;
                  }
                });
              },
              onStepTapped: (step) {
                if (_validate(step)) {
                  setState(() {
                    currStep = step;
                  });
                }
              },
            ),
          ),
          // FloatingActionButton(
          //   child: Text(
          //     'Save details',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   onPressed: _submitDetails,
          // ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mbloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Building'),
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
            haveAccess = state.haveAccess;
            displayOwner = state.displayOwner;
            roles = state.roles;
            unitList = state.unitList;
            _newItem = widget.registry == null;

            resident = state.resident;

            if (widget.origintype == 1) {
              registeredAsRoles = ["owner"];
            } else if (widget.origintype == 2 || widget.origintype == 3) {
              registeredAsRoles = ["resident"];
            }

            unitList.forEach((unit) {
              if (!buildings.contains(unit.buildingName)) {
                buildings.add(unit.buildingName);
              }
              if (!floors.contains(unit.floorNum)) {
                floors.add(unit.floorNum);
              }
            });
            filteredUnits = unitList;

            _initFiledValue();
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
}
