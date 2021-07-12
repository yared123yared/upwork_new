import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/trips/model/models/vehicle_model.dart';

class VehicleRegistrationForm extends StatefulWidget {
  final ServiceVehicleModel vehicleRegistrationModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  VehicleRegistrationForm({
    @required this.vehicleRegistrationModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _VehicleRegistrationFormState createState() =>
      _VehicleRegistrationFormState();
}

class _VehicleRegistrationFormState extends State<VehicleRegistrationForm> {
  int timelineIndex = 1;
  ServiceVehicleModel _vehicleModel;
  int _index;

  //
  CustomTextFieldController _numberPlateController =
      CustomTextFieldController();
  CustomTextFieldController _registrationNumberTextController =
      CustomTextFieldController();
  CustomTextFieldController _vehicleIdTextController =
      CustomTextFieldController();
  CustomTextFieldController _vehicleTypeTextController =
      CustomTextFieldController();
  CustomTextFieldController _vehicleCategoryTextController =
      CustomTextFieldController();
  bool _isUpdate = false;

  //
  // CustomTextFieldController _qrGeneratedCode = CustomTextFieldController();
  // CustomTextFieldController _outOfServiceStartDate =
  //     CustomTextFieldController();
  // CustomTextFieldController _outOfServiceEndDate = CustomTextFieldController();
  CustomTextFieldController _maximumCapacity = CustomTextFieldController();
  CustomTextFieldController _loadType = CustomTextFieldController();

  bool _isActive = false;
  bool _adHocRides = false;

  //
  CustomTextFieldController _typeController = CustomTextFieldController();
  CustomTextFieldController _valueController = CustomTextFieldController();

  @override
  void initState() {
    super.initState();
    _initFiledValue();
  }

  Future _initFiledValue() async {
    if (timelineIndex == 1) {
      if (widget.vehicleRegistrationModel != null) {
        _isUpdate = true;
        Future.delayed(Duration(milliseconds: 80), () {
          _numberPlateController.text =
              widget.vehicleRegistrationModel.numberPlate;
          _registrationNumberTextController.text =
              widget.vehicleRegistrationModel.registrationNum;
          _vehicleIdTextController.text =
              widget.vehicleRegistrationModel.vehicleId.toString();
          _vehicleTypeTextController.text =
              widget.vehicleRegistrationModel.vehicleType;
          _vehicleCategoryTextController.text =
              widget.vehicleRegistrationModel.vehicleCategory;
        });
      }
    } else if (timelineIndex == 2) {
      // if (widget.isUpdate) {
      if (_isUpdate) {
        _isActive = widget.vehicleRegistrationModel.isActive;
        _adHocRides = widget.vehicleRegistrationModel.forAdHocRides;
        Future.delayed(Duration(milliseconds: 80), () {
          // _qrGeneratedCode.text = widget.vehicleRegistrationModel.generatedQrCode;
          _maximumCapacity.text =
              widget.vehicleRegistrationModel.maxCapacity.toString();
          _loadType.text = widget.vehicleRegistrationModel.loadType;
        });
      }
    } else if (timelineIndex == 4) {
      if (_index != null) {
        Future.delayed(Duration(milliseconds: 80), () {
          _isUpdate = true;
          _typeController.text =
              widget.vehicleRegistrationModel.generalInfo[_index].type;
          _valueController.text = widget
              .vehicleRegistrationModel.generalInfo[_index].value
              .toString();
        });
      }
    }
  }

  bool _validate() {
    if (timelineIndex == 1) {
      bool valid = true;
      if (!_vehicleIdTextController.isValid) valid = false;
      if (!_registrationNumberTextController.isValid) valid = false;
      if (!_numberPlateController.isValid) valid = false;
      if (!_vehicleTypeTextController.isValid) valid = false;
      if (!_vehicleCategoryTextController.isValid) valid = false;

      return valid;
    } else if (timelineIndex == 2) {
      return
          //  _qrGeneratedCode.isValid &&
          _maximumCapacity.isValid && _loadType.isValid;
    } else if (timelineIndex == 4) {
      return _typeController.isValid && _valueController.isValid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.VehicleRegistrationBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vehicle Registration'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.VehicleRegistrationBloc,
            itembloc.VehicleRegistrationState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // final bool isUpdate;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.VehicleRegistrationBloc,
            itembloc.VehicleRegistrationState>(builder: (context, state) {
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
                  if (timelineIndex == 2) MaterialPage(child: screen2()),
                  if (timelineIndex == 3) MaterialPage(child: screen3(context)),
                  if (timelineIndex == 4) MaterialPage(child: screen4()),
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
                InAppTitle(title: 'Vehicle Registration'),
                CustomTextField(
                  title: "Vehicle ID",
                  controller: _vehicleIdTextController,
                  validate: Validate.withOption(
                    isRequired: true,
                    isNumber: true,
                  ),
                ),
                CustomTextField(
                  title: "Registration Number",
                  controller: _registrationNumberTextController,
                  validate: Validate.withOption(
                    isRequired: true,
                    isNumber: true,
                  ),
                ),
                CustomTextField(
                  title: "Number Plate",
                  controller: _numberPlateController,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<String>(
                  title: "Vehicle Type",
                  controller: _vehicleTypeTextController,
                  loadData: () async => [
                    "BUS",
                    "MICRO-BUS",
                    "PRIVATE CAR",
                    "JEEP",
                  ],
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomDropDownList<String>(
                  title: "Vehicle Category",
                  controller: _vehicleCategoryTextController,
                  loadData: () async => [
                    "BUSINESS",
                    "LUXURY",
                    "ECONOMIC",
                    "PREMIUM",
                  ],
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomActionButton(
          gradient: C.bgGradient,
          title: "Next",
          margin: EdgeInsets.only(
            left: 8,
            bottom: 24,
            right: 24,
            top: 44,
          ),
          onTap: () {
            if (_validate()) {
              ServiceVehicleModel _vehicle;
              if (_isUpdate) {
                _vehicle = widget.vehicleRegistrationModel.copyWith(
                  numberPlate: _numberPlateController.text,
                  registrationNum: _registrationNumberTextController.text,
                  vehicleType: _vehicleTypeTextController.text,
                  vehicleId: int.parse(_vehicleIdTextController.text),
                  vehicleCategory: _vehicleCategoryTextController.text,
                );
              } else {
                _vehicle = ServiceVehicleModel(
                  numberPlate: _numberPlateController.text,
                  registrationNum: _registrationNumberTextController.text,
                  vehicleType: _vehicleTypeTextController.text,
                  vehicleId: int.parse(_vehicleIdTextController.text),
                  vehicleCategory: _vehicleCategoryTextController.text,
                );
              }
              setState(() {
                timelineIndex++;
                _vehicleModel = _vehicle;
              });
              _initFiledValue();
            }
          },
        ),
      ],
    );
  }

  Widget screen2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'Vehicle Registration'),
                // CustomTextField(
                //   title: "Qr Generated Code",
                //   controller: _qrGeneratedCode,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                // CustomTextField(
                //   title: "Out Of Service Start Date",
                //   controller: _outOfServiceStartDate,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                // CustomTextField(
                //   title: "Out Of Service End Date",
                //   controller: _outOfServiceEndDate,
                //   validate: Validate.withOption(
                //     isRequired: false,
                //   ),
                // ),
                CustomTextField(
                  title: "Maximum Capacity",
                  controller: _maximumCapacity,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
                CustomDropDownList<String>(
                  title: "Load Type",
                  controller: _loadType,
                  loadData: () async => ["RIDE", "HEAVY", "SWIM", "JEEP"],
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomSwitchWithTitle(
                  title: "Is Active",
                  isEnabled: _isActive,
                  onChange: (x) {
                    _isActive = x;
                  },
                ),
                CustomSwitchWithTitle(
                  title: "Adhoc Rides",
                  isEnabled: _adHocRides,
                  onChange: (x) {
                    _adHocRides = x;
                  },
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
                isExpanded: true,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                  _initFiledValue();
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                gradient: C.bgGradient,
                title: "Next",
                isExpanded: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    ServiceVehicleModel _vehicle = _vehicleModel.copyWith(
                      isActive: _isActive,
                      forAdHocRides: _adHocRides,
                      generatedQrCode: _vehicleModel.numberPlate,
                      maxCapacity: int.parse(_maximumCapacity.text),
                      loadType: _loadType.text,
                    );

                    setState(() {
                      timelineIndex++;
                      _vehicleModel = _vehicle;
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

  Widget screen3(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(
                  title: 'Vehicle Registration',
                  subtitle: 'General Information',
                ),
                _vehicleModel.generalInfo != null
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _vehicleModel.generalInfo.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CommonListTile(
                            listState: ListStateClass(
                              title: _vehicleModel.generalInfo[index].type ??
                                  "Bad Type",
                              subtitle: _vehicleModel.generalInfo[index].value
                                  ?.toString(),
                              customAction_1: CustomAction(
                                title: 'Delete',
                                action: () {},
                              ),
                              tapAction: () {
                                setState(() {
                                  _index = index;
                                  timelineIndex++;
                                });
                                _initFiledValue();
                              },
                            ),
                          );
                        })
                    : SizedBox(height: height),
                Center(
                  child: Container(
                    width: width * 50,
                    child: CustomActionButton(
                      gradient: C.bgGradient,
                      title: "Add new type",
                      isExpanded: true,
                      margin: EdgeInsets.only(
                          left: 24, bottom: 24, right: 8, top: 44),
                      onTap: () {
                        setState(() {
                          timelineIndex++;
                        });
                        _initFiledValue();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: CustomActionButton(
                title: "Back",
                isExpanded: true,
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 44),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                  _initFiledValue();
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: _isUpdate ? "Update" : "Add",
                gradient: C.bgGradient,
                isExpanded: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  BlocProvider.of<itembloc.VehicleRegistrationBloc>(context)
                      .add(
                    itembloc.createItem(
                      item: _vehicleModel,
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InAppTitle(title: 'General Information'),
                CustomDropDownList<String>(
                  title: "Type",
                  controller: _typeController,
                  loadData: () async => ["Load Limit", "Capacity", "Milage"],
                  displayName: (x) => x,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: "Value",
                  controller: _valueController,
                  validate: Validate.withOption(
                    isRequired: true,
                    isNumber: true,
                  ),
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
                isExpanded: true,
                isOutline: true,
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
                gradient: C.bgGradient,
                title: "Confirm",
                isExpanded: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 44),
                onTap: () {
                  if (_validate()) {
                    List<GeneralInfo> _updatedList = [];
                    if (_isUpdate) {
                      _updatedList = _vehicleModel.generalInfo;
                      _updatedList[_index] = GeneralInfo(
                        type: _typeController.text,
                        value: int.parse(_valueController.text),
                      );
                    } else {
                      _updatedList.add(
                        GeneralInfo(
                            type: _typeController.text,
                            value: int.parse(_valueController.text)),
                      );
                    }
                    ServiceVehicleModel _vehicle = _vehicleModel.copyWith(
                      generalInfo: _updatedList,
                    );
                    setState(() {
                      timelineIndex--;
                      _vehicleModel = _vehicle;
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
}
