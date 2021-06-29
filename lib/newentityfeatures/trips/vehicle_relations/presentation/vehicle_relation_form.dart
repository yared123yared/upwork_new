
import 'package:complex/newentityfeatures/trips/widgets/day_item.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/trips/model/models/relation.dart';

enum StaffNumber { Staff1, Staff2 }

class VehicleRelationForm extends StatefulWidget {
  final Relation vehicleRelation;
  final String entityid;
  final String entitytype;
  final reloadAction givenreloadaction;

  VehicleRelationForm({
    @required this.vehicleRelation,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _VehicleRelationFormState createState() => _VehicleRelationFormState();
}

class _VehicleRelationFormState extends State<VehicleRelationForm> {
  int timelineIndex = 1;
  Relation _vehicleRelation;

  Map<String, bool> _daysList = {
    'sun': false,
    'mon': false,
    'tue': false,
    'wed': false,
    'thu': false,
    'fri': false,
    'sat': false
  };
  String _chosenDay;

  // bool isActive = false;

  var searchState;

  var _startDateController = CustomTextFieldController();
  var _relationNameController = CustomTextFieldController();
  var _endDateController = CustomTextFieldController();
  var _staff1Controller = CustomTextFieldController();
  var _staff2Controller = CustomTextFieldController();
  var _vehicleController = CustomTextFieldController();
  var _tripCutController = CustomTextFieldController();

  final _staffNameController = CustomTextFieldController();
  StaffNumber staffNumber;

  final _numberPlateController = CustomTextFieldController();

  void initState() {
    super.initState();
    _initFiledValue();
  }

  Future _initFiledValue() async {
    _vehicleRelation = widget.vehicleRelation?.isActive ?? Relation();

    if (timelineIndex == 1) {
      // var vehicleRelation = widget.vehicleRelation;
      _vehicleRelation.isActive = widget.vehicleRelation?.isActive ?? false;
      Future.delayed(
        Duration(milliseconds: 100),
        () async {
          if (_vehicleRelation.name != null) {
            _relationNameController.text = _vehicleRelation.name;
          }
          if (_vehicleRelation.startDate != null) {
            _startDateController.text =
                HelpUtil.formattedDateToString(
                    _vehicleRelation.startDate, DateTimeMode.DATE);
          }
          if (_vehicleRelation.endDate != null) {
            _endDateController.text =
                HelpUtil.formattedDateToString(
                    _vehicleRelation.endDate, DateTimeMode.DATE);
          }
          if (_vehicleRelation.staff1 != null) {
            _staff1Controller.text = _vehicleRelation.staff1.name;
          }
          if (_vehicleRelation.staff2 != null) {
            _staff2Controller.text = _vehicleRelation.staff2.name;
          }
          if (_vehicleRelation.vehicleModel != null) {
            _vehicleController.text = _vehicleRelation.vehicleModel.numberPlate;
          }
          if (_vehicleRelation.tripCut != null) {
            _tripCutController.text = _vehicleRelation.tripCut.name;
          }
        },
      );
    } else if (timelineIndex == 2) {
    } else if (timelineIndex == 3) {
      if (widget.vehicleRelation.staff1 != null &&
          staffNumber == StaffNumber.Staff1) {
        _initStaffController(name: widget.vehicleRelation.staff1.name);
      } else if (widget.vehicleRelation.staff2 != null &&
          staffNumber == StaffNumber.Staff2) {
        _initStaffController(name: widget.vehicleRelation.staff2.name);
      }
    } else if (timelineIndex == 4) {
      if (widget.vehicleRelation.vehicleModel != null) {
        _initVehicleController(
            name: widget.vehicleRelation.vehicleModel.numberPlate);
      }
    }
  }

  bool _validate() {
    if (timelineIndex == 1) {
      return _startDateController.isValid &&
          _relationNameController.isValid &&
          _endDateController.isValid &&
          _staff1Controller.isValid &&
          _staff2Controller.isValid &&
          _vehicleController.isValid &&
          _tripCutController.isValid;
    } else if (timelineIndex == 2) {
      return _chosenDay != 'not found';
    } else if (timelineIndex == 3) {
      return _staffNameController.isValid;
    } else if (timelineIndex == 4) {
      return _numberPlateController.isValid;
    }
  }

  void _initController(
      {@required CustomTextFieldController controller, @required String val}) {
    Future.delayed(Duration(milliseconds: 20), () => controller.text = val);
  }

  /// Used to convert seconds into hh:mm am/pm string format.
  String secondsToDate({@required int seconds}) {
    var now = DateTime.now();
    var date =
        DateTime(now.year, now.month, now.day).add(Duration(seconds: seconds));
    return DateFormat.jm().format(date);
  }

  void _initStaffController({@required String name}) {
    Future.delayed(
        Duration(milliseconds: 20), () => _staffNameController.text = name);
  }

  void _initVehicleController({@required String name}) {
    Future.delayed(
        Duration(milliseconds: 20), () => _numberPlateController.text = name);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.VehicleRelationBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exam Form'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.VehicleRelationBloc,
            itembloc.VehicleRelationState>(listener: (context, state) {
          if (state is itembloc.TripCutListFound) {
            setState(() {
              // timelineIndex = 2;
              searchState = state;
            });
          } else if (state is itembloc.StaffListFound) {
            setState(() {
              // timelineIndex = 3;
              searchState = state;
            });
          } else if (state is itembloc.VehicleListFound) {
            setState(() {
              // timelineIndex = 4;
              searchState = state;
            });
          } else {
            setState(() {
              searchState = null;
            });
          }
          if (state is itembloc.RelationSearchFailed) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Error'),
                    content: Text(
                        'Something went wrong, check your internet connection.'),
                    actions: [
                      CustomActionButton(
                        title: 'OK',
                        isOutline: true,
                        onTap: () => Navigator.of(context).pop(),
                      )
                    ],
                  );
                });
          }

          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.VehicleRelationBloc,
            itembloc.VehicleRelationState>(builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.RelationSearchLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage ||
              state is itembloc.RelationSearchNotFound ||
              searchState != null) {
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
                  if (timelineIndex == 1) MaterialPage(child: screen1(context)),
                  if (timelineIndex == 2) MaterialPage(child: screen2(context)),
                  if (timelineIndex == 3) MaterialPage(child: screen3(context)),
                  if (timelineIndex == 4) MaterialPage(child: screen4(context)),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        CustomTextFieldController tripCutController = _tripCutController;
        CustomTextFieldController staff1Controller = _staff1Controller;
        CustomTextFieldController staff2Controller = _staff2Controller;
        CustomTextFieldController vehicleController = _vehicleController;
        bool isActive = _vehicleRelation.isActive;
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      CustomTextField(
                        title: 'Vehicle Relation Name',
                        controller: _relationNameController,
                        onChange: (name) {
                          setState(() {
                            _vehicleRelation.name = name;
                          });
                          // return widget.vehicleRelation.name = name;
                        },
                        validate: Validate.withOption(isRequired: true),
                      ),
                      Column(
                        children: [
                          CustomTextField(
                            onTap: () {
                              setState(() {
                                timelineIndex = 2;
                              });
                            },
                            title: 'Trip cut - Click to search',
                            enabled: false,
                            controller: tripCutController,
                            validate:
                                Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            onTap: () {
                              setState(() {
                                timelineIndex = 3;
                                staffNumber = StaffNumber.Staff1;
                              });
                            },
                            title: 'Staff 1 - Click to search',
                            enabled: false,
                            controller: staff1Controller,
                            validate:
                                Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            onTap: () {
                              setState(() {
                                timelineIndex = 3;
                                staffNumber = StaffNumber.Staff2;
                              });
                            },
                            title: 'Staff 2 - Click to search',
                            enabled: false,
                            controller: staff2Controller,
                            validate:
                                Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            title: 'Vehicle - Click to search',
                            onTap: () {
                              setState(() {
                                timelineIndex = 4;
                              });
                            },
                            enabled: false,
                            controller: vehicleController,
                            validate: Validate.withOption(
                              isRequired: true,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomTextField(
                            title: 'Start date',
                            onTap: () {
                              DatePicker.showDatePicker(
                                context,
                                onConfirm: (date) {
                                  setState(() {
                                    _vehicleRelation.startDate = date;
                                    _startDateController.text = HelpUtil.formattedDateToString(
                                      date,
                                      DateTimeMode.DATE,
                                    );
                                  });
                                },
                              );
                            },
                            enabled: false,
                            controller: _startDateController,
                            validate:
                                Validate.withOption(isRequired: true),
                          ),
                          CustomTextField(
                            onTap: () {
                              DatePicker.showDatePicker(context,
                                  onConfirm: (date) {
                                setState(() {
                                  _vehicleRelation.endDate = date;
                                  _endDateController.text =
                                      HelpUtil
                                          .formattedDateToString(
                                              date, DateTimeMode.DATE);
                                });
                              });
                            },
                            title: 'End date',
                            enabled: false,
                            controller: _endDateController,
                            validate:
                                Validate.withOption(isRequired: true),
                          ),
                        ],
                      ),
                      SwitchListTile(
                        value: isActive,
                        onChanged: (val) {
                          setState(() {
                            _vehicleRelation.isActive = val;
                          });
                          setInnerState(() {});
                          // setInnerState(() {
                          //   isActive = val;
                          // });
                        },
                        title: Text(
                          'Is Active',
                          style: tileSubTitle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  )),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: CustomActionButton(
                    title: "Back",
                    isExpanded: true,
                    isOutline: true,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    margin: EdgeInsets.only(
                        left: 24, bottom: 24, right: 8, top: 20),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Expanded(
                  child: CustomActionButton(
                    title: "Confirm",
                    isExpanded: true,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    isOutline: true,
                    // state: buttonState,
                    margin: EdgeInsets.only(
                        left: 8, bottom: 24, right: 24, top: 20),
                    onTap: () {
                      if (_validate()) {
                        if (widget.vehicleRelation != null) {
                          BlocProvider.of<itembloc.VehicleRelationBloc>(context)
                              .add(
                            itembloc.updateItem(
                              item: _vehicleRelation,
                              entityid: widget.entityid,
                              entitytype: widget.entitytype,
                            ),
                          );
                        } else {
                          BlocProvider.of<itembloc.VehicleRelationBloc>(context)
                              .add(
                            itembloc.createItem(
                              item: _vehicleRelation,
                              entityid: widget.entityid,
                              entitytype: widget.entitytype,
                            ),
                          );
                        }
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Warning'),
                                content: Text(
                                    'You have to fill the provided fields'),
                                actions: [
                                  CustomActionButton(
                                    title: 'OK',
                                    isOutline: true,
                                    onTap: () => Navigator.of(context).pop(),
                                  )
                                ],
                              );
                            });
                      }
                    },
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }

  Widget screen2(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        String chosenDay = _chosenDay;
        return Column(
          children: [
            InAppTitle(
              title: 'Search for trip cut via day',
            ),
            Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(_daysList.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          String selectedDay = _daysList.keys.toList()[index];
                          _daysList.forEach((day, value) {
                            if (day != selectedDay) {
                              _daysList[day] = false;
                            } else {
                              setState(() {
                                _daysList[day] = !_daysList[day];
                                _chosenDay = day;
                              });
                              setInnerState(() {
                                chosenDay = day;
                              });
                            }
                          });
                        },
                        child: DayItem(
                          dayName: _daysList.keys.toList()[index],
                          isSelected:
                              _daysList.keys.toList()[index] == chosenDay,
                        ));
                  })),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CustomActionButton(
                        title: 'Back',
                        margin: EdgeInsets.zero,
                        isOutline: true,
                        onTap: () {
                          setState(() {
                            timelineIndex = 1;
                          });
                        },
                      ),
                      CustomActionButton(
                        state: searchState is! itembloc.RelationSearchLoading
                            ? ButtonState.idle
                            : ButtonState.loading,
                        title: 'Search',
                        margin: EdgeInsets.zero,
                        isOutline: true,
                        onTap: () {
                          String chosenDay = _chosenDay;
                          if (_validate()) {
                            BlocProvider.of<itembloc.VehicleRelationBloc>(
                                    context)
                                .add(
                              itembloc.TripCutSearched(
                                entityid: widget.entityid,
                                day: chosenDay,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
                if (searchState is itembloc.TripCutListFound &&
                    (searchState?.tripCutList?.length ?? 0) != 0)
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      var tripCutName = searchState.tripCutList[i].name;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _vehicleRelation.tripCut =
                                searchState.tripCutList[i];
                            setSearchControllers(tripCutName: tripCutName);
                            timelineIndex = 1;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                tripCutName.replaceFirst(tripCutName[0],
                                    tripCutName[0].toUpperCase()),
                                style: tileSubTitle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ),
                        ),
                      );
                    },
                    itemCount: searchState?.tripCutList?.length,
                  ),
                if (searchState is itembloc.RelationSearchNotFound)
                  Center(
                      child: Text(
                    'Trip Cuts are not found',
                    style: tileSubTitle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget screen3(context) {
    return Column(
      children: [
        InAppTitle(
          title: 'Search for Staff via name',
        ),
        CustomTextField(
          title: 'Staff Name',
          controller: _staffNameController,
          validate: Validate.withOption(isRequired: true),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CustomActionButton(
                    title: 'Back',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      setState(() {
                        timelineIndex = 1;
                      });
                    },
                  ),
                  CustomActionButton(
                    state: searchState is! itembloc.RelationSearchLoading
                        ? ButtonState.idle
                        : ButtonState.loading,
                    title: 'Search',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      if (_validate()) {
                        BlocProvider.of<itembloc.VehicleRelationBloc>(context)
                            .add(
                          itembloc.StaffSearched(
                            entityid: widget.entityid,
                            staffName: _staffNameController.text,
                          ),
                        );
                      }
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            if (searchState is itembloc.StaffListFound &&
                (searchState?.staffList?.length ?? 0) != 0)
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  var staffName = searchState.staffList[i].name;
                  return GestureDetector(
                    onTap: () {
                      if (staffNumber == StaffNumber.Staff1) {
                        setState(() {
                          _vehicleRelation.staff1 = searchState.staffList[i];
                          setSearchControllers(staff1Name: staffName);
                          timelineIndex = 1;
                        });
                      } else if (staffNumber == StaffNumber.Staff2) {
                        setState(() {
                          _vehicleRelation.staff2 = searchState.staffList[i];
                          setSearchControllers(staff2Name: staffName);
                          timelineIndex = 1;
                        });
                      }
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(staffName,
                            style: tileSubTitle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                  );
                },
                itemCount: searchState.staffList.length,
              ),
            if (searchState is itembloc.RelationSearchNotFound)
              Center(
                child: Text(
                  'Staffs are not found',
                  style: tileSubTitle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget screen4(context) {
    return Column(
      children: [
        InAppTitle(
          title: 'Search for Vehicle via Number plate',
        ),
        CustomTextField(
          title: 'Number Plate',
          controller: _numberPlateController,
          validate: Validate.withOption(isRequired: true),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CustomActionButton(
                    title: 'Back',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      setState(() {
                        timelineIndex = 1;
                      });
                    },
                  ),
                  CustomActionButton(
                    state: searchState is! itembloc.RelationSearchLoading
                        ? ButtonState.idle
                        : ButtonState.loading,
                    title: 'Search',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      if (_validate()) {
                        BlocProvider.of<itembloc.VehicleRelationBloc>(context)
                            .add(
                          itembloc.VehicleSearched(
                            entityid: widget.entityid,
                            numberPlate: _numberPlateController.text,
                          ),
                        );
                      }
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            if (searchState is itembloc.VehicleListFound &&
                (searchState?.vehicleList?.length ?? 0) != 0)
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  var vehicleNumberPlate =
                      searchState.vehicleList[i].numberPlate;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _vehicleRelation.vehicleModel =
                            searchState.vehicleList[i];
                        setSearchControllers(
                          vehicleNumberPlate: vehicleNumberPlate,
                        );
                        timelineIndex = 1;
                      });
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(vehicleNumberPlate,
                            style: tileSubTitle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                  );
                },
                itemCount: searchState?.vehicleList?.length,
              ),
            if (searchState is itembloc.RelationSearchNotFound)
              Center(
                  child: Text(
                'Vehicle is not found',
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          ],
        ),
      ],
    );
  }

  void setSearchControllers({
    String tripCutName,
    String staff1Name,
    String staff2Name,
    String vehicleNumberPlate,
  }) {
    Future.delayed(Duration(milliseconds: 80), () {
      if (tripCutName != null) {
        _tripCutController.text = tripCutName;
      } else if (staff1Name != null) {
        _staff1Controller.text = staff1Name;
      } else if (staff2Name != null) {
        _staff2Controller.text = staff2Name;
      } else if (vehicleNumberPlate != null) {
        _vehicleController.text = vehicleNumberPlate;
      }
    });
  }
}
