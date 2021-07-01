import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';
import 'package:complex/newentityfeatures/trips/model/models/routes.dart';
import 'package:complex/newentityfeatures/trips/repository/repo/registered_user_repository.dart';
import 'package:complex/newentityfeatures/trips/widgets/day_item.dart';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';

class RouteTripForm extends StatefulWidget {
  final RouteTripModel routeTripModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RouteTripForm({
    @required this.routeTripModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _RouteTripFormState createState() => _RouteTripFormState();
}

class _RouteTripFormState extends State<RouteTripForm> {
  int timelineIndex = 1;
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
  var searchState;
  var routes;
  RouteTripModel _routeTripModel;

  var _managedByController = CustomTextFieldController();
  var _tripNameController = CustomTextFieldController();
  var _startTimeController = CustomTextFieldController();
  var _maximumAdvancedTicketsController = CustomTextFieldController();
  var _routeNameController = CustomTextFieldController();

  var _routeNameSearchController = CustomTextFieldController();

  @override
  void initState() {
    super.initState();
    _initFiledValue();
  }

  Future _initFiledValue() async {
    if (widget.routeTripModel != null) {
      isActive = widget.routeTripModel.isActive;
      Future.delayed(Duration(milliseconds: 100), () async {
        _chosenDay = widget.routeTripModel.dayOfWeek;
        _daysList[_chosenDay] = true;
        _tripNameController.text = widget.routeTripModel.name;
        _startTimeController.text = widget.routeTripModel.startTime;
        _maximumAdvancedTicketsController.text =
            widget.routeTripModel.maximumAdvancedTicket;
        _managedByController.text = widget.routeTripModel.managedByName;
        _routeNameController.text = widget.routeTripModel.routeName;
      });
    }
  }

  bool _validate() {
    if (timelineIndex == 1) {
      return _startTimeController.isValid &&
          _maximumAdvancedTicketsController.isValid &&
          _managedByController.isValid &&
          _routeNameController.isValid;
    } else if (timelineIndex == 2) {
      return _routeNameSearchController.isValid;
    }
    return false;
  }

  Future _filedRouteValues(RouteModel route) async {
    Future.delayed(Duration(milliseconds: 80), () {
      print('hey');
      _routeNameController.text = route.name;
      _routeTripModel.routeId = route.id;
      _routeTripModel.routeType =
          route.type == RouteType.Public ? 'PUBLIC' : 'PRIVATE';
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.RouteTripBloc()
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
        body: BlocListener<itembloc.RouteTripBloc, itembloc.RouteTripState>(
            listener: (context, state) {
          if (state is itembloc.RouteTripSearchSuccess) {
            setState(() {
              searchState = state;
              timelineIndex = 2;
            });
          }

          // if (state is itembloc.RoutePointsSearchFound) {
          //   _routeNameController.text = state.route.name;
          //   widget.routeTripModel.routeId = state.route.id;
          //   widget.routeTripModel.routeType =
          //       state.route.type == RouteType.Public ? 'PUBLIC' : 'PRIVATE';
          // }

          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            _routeTripModel = widget.routeTripModel ?? RouteTripModel();
            // sessiontermlist = state.sessiontermlist;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.RouteTripBloc, itembloc.RouteTripState>(
                builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.LoadingRouteTripSearch) {
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
              state is itembloc.RouteTripSearchSuccess) {
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
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1(context) {
    return StatefulBuilder(
      builder: (context, setInnerState) {
        CustomTextFieldController routeController = _routeNameController;
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(15.0),
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    InAppTitle(
                      title: 'Route Trips',
                    ),
                    if (widget.routeTripModel != null)
                      CustomTextField(
                        controller: _tripNameController,
                        title: 'Trip Name',
                        onTap: () {},
                        enabled: false,
                        validate: Validate.withOption(isRequired: true),
                      ),
                    CustomTextField(
                      controller: _startTimeController,
                      title: 'Start Time',
                      enabled: false,
                      onTap: () async {
                        var date = await DatePicker.showPicker(
                          context,
                          pickerModel: DatePickerModel(),
                          showTitleActions: true,
                          // theme: DatePickerTheme()
                        );
                        if (date != null)
                          _startTimeController.text =
                              date.toFormattedString(DateTimeMode.DATE);
                      },
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      onTap: () => widget.routeTripModel != null
                          ? null
                          : setState(() {
                              timelineIndex = 2;
                            }),
                      title: "Click here to search for routes",
                      controller: routeController,
                      enabled: false,
                      validate: Validate.withOption(
                        isRequired: true,
                      ),
                    ),
                    CustomDropDownList<RegisteredUser>(
                      title: 'Managed By',
                      loadData: () {
                        /// List of managed trip is fetched here since loadData method is an async
                        /// method.
                        return RegisteredUserRepo.registeredUser(
                          widget.entityid,
                        );
                      },
                      displayName: (managedRoute) => managedRoute.name,
                      onSelected: (managedRoute, index) {
                        setState(() {
                          _routeTripModel.managedByName = managedRoute.userId;
                          _routeTripModel.managedById = managedRoute.email;
                        });
                      },
                      controller: _managedByController,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      controller: _maximumAdvancedTicketsController,
                      title: 'Maximum Advanced Tickets',
                      validate: Validate.withOption(isRequired: true),
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
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(0, -10), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
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
                                });
                                setInnerState(() {
                                  _chosenDay = day;
                                });
                              }
                            });
                            print(_daysList);
                          },
                          child: DayItem(
                            dayName: _daysList.keys.toList()[index],
                            isSelected:
                                _daysList.keys.toList()[index] == _chosenDay,
                            // isSelected: _daysList.values.toList()[index],
                          ));
                    }),
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
                          // state: buttonState,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          isOutline: true,
                          margin: EdgeInsets.only(
                              left: 8, bottom: 24, right: 24, top: 20),
                          onTap: () {
                            String chosenDay = _chosenDay ??
                                _daysList.keys.toList().firstWhere(
                                    (day) => _daysList[day],
                                    orElse: () => 'not found');

                            if (_validate() && chosenDay != 'not found') {
                              if (!(widget.routeTripModel != null)) {
                                BlocProvider.of<itembloc.RouteTripBloc>(context)
                                    .add(
                                  itembloc.createItem(
                                    item: extractData(
                                      chosenDay: chosenDay,
                                    ),
                                    entityid: widget.entityid,
                                    entitytype: widget.entitytype,
                                  ),
                                );
                              } else {
                                BlocProvider.of<itembloc.RouteTripBloc>(context)
                                    .add(
                                  itembloc.updateItem(
                                    item: extractData(
                                      chosenDay: chosenDay,
                                    ),
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
                                          'You have to fill the provided fields and select a day for the trip'),
                                      actions: [
                                        CustomActionButton(
                                          title: 'OK',
                                          isOutline: true,
                                          onTap: () =>
                                              Navigator.of(context).pop(),
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
            ),
          ],
        );
      },
    );
  }

  /// Used to extract data from fields. Note that there's no need to extract managed by field or isActive
  /// since they're already extracted in their widgets.
  RouteTripModel extractData({@required String chosenDay}) {
    var routeTrip = widget.routeTripModel ?? _routeTripModel;
    routeTrip.name = _tripNameController.text;
    routeTrip.startTime = _startTimeController.text;
    routeTrip.dayOfWeek = chosenDay;
    routeTrip.maximumAdvancedTicket = _maximumAdvancedTicketsController.text;
    routeTrip.routeName = _routeNameController.text;
    return routeTrip;
  }

  Widget screen2(context) {
    return Column(
      children: [
        InAppTitle(
          title: 'Routes',
        ),
        CustomTextField(
          title: 'Route Name',
          controller: _routeNameSearchController,
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
                    state: searchState is! itembloc.LoadingRouteTripSearch
                        ? ButtonState.idle
                        : ButtonState.loading,
                    title: 'Search',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      if (_validate()) {
                        BlocProvider.of<itembloc.RouteTripBloc>(context).add(
                          itembloc.RouteTripSearchResultsFetched(
                            routeName: _routeNameSearchController.text,
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                          ),
                        );
                      }
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            if ((searchState?.routes?.length ?? 0) != 0 &&
                searchState is itembloc.RouteTripSearchSuccess)
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  var routeName = searchState.routes[i].name;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _filedRouteValues(searchState.routes[i]);

                        timelineIndex = 1;
                      });
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            routeName.replaceFirst(
                                routeName[0], routeName[0].toUpperCase()),
                            style: tileSubTitle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                  );
                },
                itemCount: searchState.routes.length,
              ),
            if (searchState != null &&
                searchState is itembloc.RouteTripSearchNotFound)
              Center(
                  child: Text(
                'Routes are not found',
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
          ],
        )
      ],
    );
  }
}
