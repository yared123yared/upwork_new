
import 'package:complex/newentityfeatures/trips/widgets/custom_list_item.dart';
import 'package:complex/newentityfeatures/trips/widgets/day_item.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:complex/common/helputil.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';

class TripCutForm extends StatefulWidget {
  final TripCut tripCut;
  final String entityid;
  final String entitytype;
  final reloadAction givenreloadaction;

  TripCutForm({
    @required this.tripCut,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _TripCutFormState createState() => _TripCutFormState();
}

class _TripCutFormState extends State<TripCutForm> {
  int timelineIndex = 1;
  bool isUpdate;
  bool isActive = false;
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
  Map<String, bool> routeDaysList = {
    'sun': false,
    'mon': false,
    'tue': false,
    'wed': false,
    'thu': false,
    'fri': false,
    'sat': false
  };
  String routeChosenDay;

  int _index;

  var searchState;

  TripCut _tripCut;

  var _startDateController = CustomTextFieldController();
  var _tripCutNameController = CustomTextFieldController();
  var _endDateController = CustomTextFieldController();
  var _checkInTimeController = CustomTextFieldController();

  var _routeNameController = CustomTextFieldController();

  Future _initFiledValue() async {
    isUpdate = widget.tripCut != null;
    if (timelineIndex == 1) {
      isActive = widget.tripCut?.isActive;
      var tripCut = widget.tripCut;
      Future.delayed(Duration(milliseconds: 100), () async {
        _chosenDay = widget.tripCut?.dayOfWeek;
        _daysList[_chosenDay] = true;

        if (tripCut?.startDate != null) {
          _startDateController.text =
              HelpUtil.formattedDateToString(
                  widget.tripCut.startDate, DateTimeMode.DATE);
        }
        if (tripCut?.name != null) {
          _tripCutNameController.text = widget.tripCut.name;
        }
        if (tripCut?.endDate != null) {
          _endDateController.text = HelpUtil.formattedDateToString(
              widget.tripCut.endDate, DateTimeMode.DATE);
        }
        if (tripCut?.checkInTime != null) {
          _checkInTimeController.text =
              secondsToDate(seconds: widget.tripCut.checkInTime);
        }
      });
    } else if (timelineIndex == 2) {
    } else if (timelineIndex == 3) {}
  }

  bool _validate({chosenDay}) {
    if (timelineIndex == 1) {
      return _startDateController.isValid &&
          _tripCutNameController.isValid &&
          _endDateController.isValid &&
          _checkInTimeController.isValid &&
          _chosenDay != "not found";
      // BlocProvider.of<DaysCubit>(context).chosenDay != 'not found';
    } else if (timelineIndex == 2) {
    } else if (timelineIndex == 3) {
      return chosenDay != 'not found' || _routeNameController.isValid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.TripCutBloc()
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
        body: BlocListener<itembloc.TripCutBloc, itembloc.TripCutState>(
            listener: (context, state) {
          if (state is itembloc.TripSearchSuccess ||
              state is itembloc.TripSearchNotFound) {
            setState(() {
              searchState = state;
              timelineIndex = 3;
            });
          }
          if (searchState is itembloc.TripSearchFailed) {
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
            _tripCut = widget.tripCut ?? TripCut();

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.TripCutBloc, itembloc.TripCutState>(
                builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.TripSearchLoading) {
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

          if (state is itembloc.IsReadyForDetailsPage || searchState != null) {
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
                  if (timelineIndex == 3) MaterialPage(child: screen3(context)),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1() {
    return StatefulBuilder(
      builder: (context, setInnerState) => Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CustomTextField(
                      title: 'Trip cut name',
                      controller: _tripCutNameController,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    Column(
                      children: [
                        CustomTextField(
                          onTap: () {
                            // newentitytimepicker.CustomDateTimePicker(
                            //   dateTime: DateTime.now(),
                            //   mode: DateTimeMode.DATE,
                            //   onChange: (date) {
                            //     setState(() {
                            //       _tripCut.startDate = date;
                            //       _startDateController.text = model
                            //           .CommonUIHandler.formattedDateToString(
                            //         date,
                            //         model.DateTimeMode.DATE,
                            //       );
                            //     });
                            //   },
                            //   title: 'Start date',
                            //   enabled: false,
                            //   controller: _startDateController,
                            //   validate:
                            //       Validate.withOption(isRequired: true),
                            // );
                            DatePicker.showDatePicker(context,
                                onConfirm: (date) {
                              setState(() {
                                _tripCut.startDate = date;
                                _startDateController.text =
                                    HelpUtil.formattedDateToString(
                                  date,
                                      DateTimeMode.DATE,
                                );
                              });
                            });
                          },
                          title: 'Start date',
                          enabled: false,
                          controller: _startDateController,
                          validate: Validate.withOption(isRequired: true),
                        ),
                        CustomTextField(
                          onTap: () {
                            DatePicker.showDatePicker(context,
                                onConfirm: (date) {
                              setState(() {
                                _tripCut.endDate = date;
                                _endDateController.text =
                                    HelpUtil.formattedDateToString(
                                        date, DateTimeMode.DATE);
                              });
                            });
                          },
                          title: 'End date',
                          enabled: false,
                          controller: _endDateController,
                          validate: Validate.withOption(isRequired: true),
                        ),
                        CustomTextField(
                          onTap: () {
                            DatePicker.showTime12hPicker(context,
                                onConfirm: (date) {
                              setState(() {
                                DateTime now = DateTime.now();

                                _tripCut.checkInTime = date
                                    .difference(
                                      DateTime(now.year, now.month, now.day),
                                    )
                                    .inSeconds;
                                _checkInTimeController.text =
                                    DateFormat.jm().format(date);
                              });
                            });
                          },
                          title: 'Check in time',
                          enabled: false,
                          controller: _checkInTimeController,
                          validate: Validate.withOption(isRequired: true),
                        ),
                      ],
                    ),
                    Card(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(_daysList.length, (index) {
                            return GestureDetector(
                                onTap: () {
                                  String selectedDay =
                                      _daysList.keys.toList()[index];
                                  _daysList.forEach((day, value) {
                                    if (day != selectedDay) {
                                      _daysList[day] = false;
                                    } else {
                                      setState(() {
                                        _daysList[day] = !_daysList[day];
                                      });
                                      setInnerState(() {
                                        _chosenDay = day;
                                      });
                                    }
                                  });
                                },
                                child: DayItem(
                                  dayName: _daysList.keys.toList()[index],
                                  isSelected: _daysList.keys.toList()[index] ==
                                      _chosenDay,
                                ));
                          })),
                    ),
                    SwitchListTile(
                      value: isActive,
                      onChanged: (val) {
                        setState(() {
                          isActive = val;
                        });
                        setInnerState(() {
                          isActive = val;
                        });
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
                  margin:
                      EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: CustomActionButton(
                  title: "Next",
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  isOutline: true,
                  margin:
                      EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 20),
                  onTap: () {
                    if (_validate()) {
                      setState(() {
                        timelineIndex++;
                      });
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Warning'),
                              content:
                                  Text('You have to fill the provided fields'),
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
      ),
    );
  }

  void _initController(CustomTextFieldController controller, String val) {
    Future.delayed(Duration(milliseconds: 20), () => controller.text = val);
  }

  /// Used to convert seconds into hh:mm am/pm string format.
  String secondsToDate({@required int seconds}) {
    var now = DateTime.now();
    var date =
        DateTime(now.year, now.month, now.day).add(Duration(seconds: seconds));
    return DateFormat.jm().format(date);
  }

  /// Used to extract data from fields. Note that there's no need to extract managed by field or isActive
  /// since they're already extracted in their widgets.
  TripCut extractData() {
    var routeTrip = _tripCut;
    routeTrip.name = _tripCutNameController.text;
    routeTrip.checkInTime = _tripCut.checkInTime;
    routeTrip.dayOfWeek = _chosenDay;
    routeTrip.routeTrips = _tripCut.routeTrips;
    routeTrip.startDate = _tripCut.startDate;
    routeTrip.endDate = _tripCut.endDate;
    routeTrip.id = _tripCut?.id;
    routeTrip.isActive = isActive;
    return routeTrip;
  }

  Widget screen2(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InAppTitle(
          title: 'Trip List',
          subtitle: 'Trip',
        ),
        SizedBox(height: height * 2),
        Expanded(
          child: _tripCut.routeTrips != null
              ? ListView.builder(
                  itemCount: _tripCut.routeTrips.length,
                  itemBuilder: (context, index) {
                    return CustomListItem(
                      isReorderable: false,
                      editAction: () {
                        setState(() {
                          timelineIndex++;
                          _index = index;
                        });
                      },
                      removeAction: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  title: Text(
                                      'Are you sure you want to remove this trip?'),
                                  actions: [
                                    CustomActionButton(
                                      onTap: () => Navigator.of(ctx).pop(false),
                                      title: 'No',
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      isOutline: true,
                                    ),
                                    CustomActionButton(
                                      onTap: () {
                                        /// Removing the main point at specific index and then
                                        /// update the trip cut list UI.
                                        setState(() {
                                          _tripCut.routeTrips.removeAt(index);
                                        });
                                      },
                                      title: 'Yes',
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18, vertical: 11),
                                      isOutline: true,
                                    ),
                                  ],
                                ));
                      },
                      title: _tripCut.routeTrips[index].name,
                    );
                  },
                )
              : SizedBox(height: height),
        ),
        Center(
          child: Container(
            width: width * 65,
            child: CustomActionButton(
              title: "Add New Trip",
              isExpanded: true,
              isOutline: true,
              margin: EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
              onTap: () {
                setState(() {
                  _index = -1;
                  timelineIndex++;
                });

                /// When creating new trip, use -1 as index so it's invalid index
                /// to the trip list which indicates the creation of new trip
                /// rather than editing an existing one.
                ;
              },
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
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
                onTap: () {
                  setState(() {
                    timelineIndex--;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                  title: "Confirm",
                  isExpanded: true,
                  // state: buttonState,
                  isOutline: true,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  margin:
                      EdgeInsets.only(left: 8, bottom: 24, right: 20, top: 20),
                  onTap: () {
                    if (!isUpdate) {
                      BlocProvider.of<itembloc.TripCutBloc>(context).add(
                        itembloc.createItem(
                          item: extractData(),
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    } else {
                      BlocProvider.of<itembloc.TripCutBloc>(context).add(
                        itembloc.updateItem(
                          item: extractData(),
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                        ),
                      );
                    }
                  }),
            ),
          ],
        ),
      ],
    );
  }

  Widget screen3(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        var tripSearchState = searchState;
        return Column(
          children: [
            InAppTitle(
              title: 'Search for trip via day or route name',
            ),
            Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(routeDaysList.length, (index) {
                    return GestureDetector(
                        onTap: () {
                          String selectedDay =
                              routeDaysList.keys.toList()[index];
                          routeDaysList.forEach((day, value) {
                            if (day != selectedDay) {
                              routeDaysList[day] = false;
                            } else {
                              setState(() {
                                routeDaysList[day] = !routeDaysList[day];
                              });
                              setInnerState(() {
                                routeChosenDay = day;
                              });
                            }
                          });
                        },
                        child: DayItem(
                          dayName: routeDaysList.keys.toList()[index],
                          isSelected: routeDaysList.keys.toList()[index] ==
                              routeChosenDay,
                        ));
                  })),
            ),
            CustomTextField(
              title: 'Route name',
              controller: _routeNameController,
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
                            timelineIndex--;
                          });
                        },
                      ),
                      CustomActionButton(
                        state: tripSearchState is! itembloc.TripSearchLoading
                            ? ButtonState.idle
                            : ButtonState.loading,
                        title: 'Search',
                        margin: EdgeInsets.zero,
                        isOutline: true,
                        onTap: () {
                          String chosenDay = routeChosenDay;

                          if (_validate(chosenDay: chosenDay)) {
                            BlocProvider.of<itembloc.TripCutBloc>(context).add(
                              itembloc.TripSearchFetched(
                                entityid: widget.entityid,
                                entitytype: widget.entitytype,
                                routeName: _routeNameController.text,
                                dayName: chosenDay,
                              ),
                            );
                          }
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
                if (tripSearchState is itembloc.TripSearchSuccess &&
                    (tripSearchState?.trips?.length ?? 0) != 0)
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      List trips = tripSearchState.trips;
                      var tripName = trips[i].name;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            /// If it was the first item, initialize trip list.
                            if (_tripCut.routeTrips == null) {
                              _tripCut.routeTrips = [];
                            }
                            _tripCut.routeTrips.add(trips[i]);

                            timelineIndex--;
                          });
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                tripName.replaceFirst(
                                    tripName[0], tripName[0].toUpperCase()),
                                style: tileSubTitle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black)),
                          ),
                        ),
                      );
                    },
                    itemCount: tripSearchState.trips.length,
                  ),
                if (tripSearchState != null &&
                    tripSearchState is itembloc.TripSearchNotFound)
                  Center(
                      child: Text(
                    'Trips are not found',
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
}
