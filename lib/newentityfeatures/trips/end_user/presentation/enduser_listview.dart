import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart'
    as model;
import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut.dart';
import 'package:complex/newentityfeatures/trips/model/models/trip_cut_current_status.dart';
import 'package:complex/newentityfeatures/trips/widgets/autocomplete_textfield.dart';
import 'package:complex/newentityfeatures/trips/widgets/end_user_trip_cut_item.dart';
import 'package:complex/newentityfeatures/trips/widgets/end_user_trip_item.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../listbloc/bloc.dart' as listbloc;
import '../listbloc/bloc.dart' as listbloc;
import './end_user_form.dart';

import 'dart:async';

enum MainPoint { start, end }

class EndUserListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  // final RoutePointsModel startPoint;
  // final RoutePointsModel endPoint;

  EndUserListList({
    this.entityid,
    this.entitytype,
    // @required this.startPoint,
    // @required this.endPoint,
  });

  @override
  _EndUserListListState createState() => _EndUserListListState();
}

class _EndUserListListState extends State<EndUserListList> {
  int timelineIndex = 1;
  var searchState;

  List<TripCut> tripCuts;

  TripCut tripCut;

  List<RouteTripModel> trips;
  String tripCutId;

  MainPoint mainPoint;

  RoutePointsModel startPoint;
  RoutePointsModel endPoint;
  DateTime _startDate;

  TripCutCurrentStatus tripCutCurrentStatus;

  //

  var _startPointController = CustomTextFieldController();
  var _endPointController = CustomTextFieldController();
  var _startDateController = CustomTextFieldController();

  //
  var _zipCodeController = TextEditingController();
  var _townController = TextEditingController();

  GlobalKey zipKey = GlobalKey<AutoCompleteTextFieldState<RoutePointsModel>>();
  GlobalKey townKey = GlobalKey<AutoCompleteTextFieldState<RoutePointsModel>>();

  //

  //

  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _kGooglePlex;

  @override
  void initState() {
    super.initState();
    if (_startDate != null) {
      _initController(
        _startDateController,
        HelpUtil.formattedDateToString(
          /* widget. */ _startDate,
          DateTimeMode.DATE,
        ),
      );
    }
    if (/* widget. */ startPoint != null) {
      _initController(_startPointController, startPoint?.pointName);
    }
    if (/* widget. */ endPoint != null) {
      _initController(_endPointController, endPoint?.pointName);
    }
    //
  }

  initStaffPage(TripCutCurrentStatus tripCutCurrentStatus) {
    _kGooglePlex = CameraPosition(
      target:
          LatLng(tripCutCurrentStatus.staffLat, tripCutCurrentStatus.staffLong),
      zoom: 17,
    );
  }

  // Future _initFiledValue() async {
  //   if (timelineIndex == 1) {

  //   } else if (timelineIndex == 2) {

  //   } else if (timelineIndex == 3) {

  //   } else if (timelineIndex == 4) {

  //   }
  // }

  bool _validate() {
    if (timelineIndex == 1) {
      return _startPointController.isValid &&
          _endPointController.isValid &&
          _startDateController.isValid;
    } else if (timelineIndex == 2) {
      _townController.text != null && _zipCodeController.text != null;
    } else if (timelineIndex == 3) {}
  }

  void _initController(CustomTextFieldController controller, String val) =>
      Future.delayed(Duration(milliseconds: 20), () => controller.text = val);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => listbloc.EndUserListBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('End User'),
          centerTitle: true,
        ),
        body: BlocListener<listbloc.EndUserListBloc, listbloc.EndUserListState>(
            listener: (context, state) {
          if (state is listbloc.TripCutsResultsPageState) {
            setState(() {
              tripCuts = state.tripCuts;
            });
          }
        }, child: BlocBuilder<listbloc.EndUserListBloc,
                listbloc.EndUserListState>(builder: (context, state) {
          if (state is listbloc.StaffPositionFailState) {
            // BlocProvider.of<listbloc.EndUserListBloc>(context)
            //     .add(listbloc.TripCutsResultsPageEvent());
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                      header: "Can't view bus position",
                      content: Text(state.errorMsg),
                    ));
          } else if (state is listbloc.StaffPositionPageState) {
            setState(() {
              tripCutCurrentStatus = state.tripCutCurrentStatus;
              initStaffPage(tripCutCurrentStatus);
            });
          }
          if (state is listbloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is listbloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is listbloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is listbloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is listbloc.IsDeleted) {
            return Center(child: Text("Deleted item"));
          }
          if (state is listbloc.IsSearchParaLoaded) {
            return _blocBuilder(context);
          }

          if (state is listbloc.IsListDataLoaded) {
            return _blocBuilder(context);
          }
          return _blocBuilder(context);
          // return Center(child: Text('Empty'));
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
                  if (timelineIndex == 3) MaterialPage(child: screen3()),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                CustomTextField(
                  onTap: () {
                    setState(() {
                      timelineIndex++;
                      mainPoint = MainPoint.start;
                    });
                    // BlocProvider.of<EndUserListBloc>(context).add(
                    //   MainPointSearchPageEvent(point: MainPoint.start),
                    // );
                  },
                  title: 'Start Point',
                  enabled: false,
                  controller: _startPointController,
                  validate: Validate.withOption(isRequired: true),
                ),
                CustomTextField(
                  onTap: () {
                    setState(() {
                      timelineIndex++;
                      mainPoint = MainPoint.end;
                    });
                    // BlocProvider.of<EndUserListBloc>(context).add(
                    //   MainPointSearchPageEvent(point: MainPoint.end),
                    // );
                  },
                  title: 'End Point',
                  controller: _endPointController,
                  enabled: false,
                  validate: Validate.withOption(isRequired: true),
                ),
                // BlocBuilder<DateCubit, DateState>(
                //   builder: (context, state) {
                //     if (state is FormatStartDate) {
                //       _initController(
                //           _startDateController, state.startDate);
                //     }
                CustomTextField(
                  onTap: () {
                    DatePicker.showDatePicker(context, onConfirm: (date) {
                      _startDate = date;
                      _startDateController.text =
                          HelpUtil.formattedDateToString(
                        date,
                        DateTimeMode.DATE,
                      );

                      // BlocProvider.of<DateCubit>(context)
                      //     .formatStartDate(startDate: date);
                    });
                  },
                  title: 'Start Date',
                  controller: _startDateController,
                  enabled: false,
                  validate: Validate.withOption(isRequired: true),
                  //   );
                  // },
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
                padding: EdgeInsets.symmetric(vertical: 10),
                margin:
                    EdgeInsets.only(left: 24, bottom: 24, right: 8, top: 20),
                onTap: () {
                  Navigator.pop(context);
                  // BlocProvider.of<TripBloc>(context)
                  //     .add(TripPageEvent());
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Search",
                isExpanded: true,
                padding: EdgeInsets.symmetric(vertical: 10),
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 20),
                onTap: () {
                  if (_validate()) {
                    DateTime startDate = _startDate ??
                        HelpUtil.formattedStringToDate(
                          _startDateController.text,
                          DateTimeMode.DATE,
                        );
                    setState(() {
                      timelineIndex = 3;
                    });
                    // final startDate =
                    //     BlocProvider.of<DateCubit>(context).startDate;
                    BlocProvider.of<listbloc.EndUserListBloc>(context).add(
                      listbloc.TripCutsResultsPageEvent(
                        entityid: widget.entityid,
                        startDate: startDate,
                        endPoint: endPoint,
                        startPoint: startPoint,
                      ),
                    );
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
    );
  }

  Widget screen2() {
    return Column(
      children: [
        InAppTitle(title: 'Route Main Point'),
        const SizedBox(height: 10),
        AutoCompleteTextField<RoutePointsModel>(
          itemSorter: (a, b) => a.town.compareTo(b.town),
          decoration: InputDecoration(labelText: 'Town'),
          itemBuilder: (context, point) => ListTile(
            title: Text(
              point.town,
              style: tileSubTitle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          itemFilter: (point, query) {
            return point.town.toLowerCase().startsWith(query.toLowerCase());
          },
          key: townKey,
          itemSubmitted: (point) {
            setState(() {
              _townController.text = point.town;
            });
          },
          // suggestions: widget.existingPoints,
          suggestions: [startPoint, endPoint],
          clearOnSubmit: false,
          controller: _townController,
        ),
        const SizedBox(height: 10),
        AutoCompleteTextField<RoutePointsModel>(
          decoration: InputDecoration(labelText: 'Zip code'),
          itemSorter: (a, b) => a.zipCode.compareTo(b.zipCode),
          itemBuilder: (context, point) => ListTile(
            title: Text(
              point.zipCode,
              style: tileSubTitle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          // suggestions: widget.existingPoints,
          suggestions: [startPoint, endPoint],
          itemFilter: (point, query) {
            return point.zipCode.toLowerCase().startsWith(query.toLowerCase());
          },
          key: zipKey,
          itemSubmitted: (point) {
            setState(() {
              _zipCodeController.text = point.zipCode;
            });
          },
          clearOnSubmit: false,
          controller: _zipCodeController,
        ),
        const SizedBox(
          height: 20,
        ),
        // BlocBuilder<EndUserPointsSearchBloc, EndUserPointsSearchState>(
        //     builder: (context, state) {
        //   List<RoutePointsModel> routePoints = [];
        //   if (state is EndUserPointsSearchSuccess) {
        //     routePoints = state.routePoints;
        //   }
        Column(
          children: [
            if ((searchState?.routePoints?.length ?? 0) != 0 &&
                searchState is listbloc.EndUserPointsSearchSuccess)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  var pointName = searchState.routePoints[i].pointName;
                  return GestureDetector(
                    onTap: () {
                      if (mainPoint == MainPoint.start) {
                        setState(() {
                          startPoint = searchState.routePoints[i];
                        });
                        // BlocProvider.of<EndUserListBloc>(context).add(
                        //     EndUserFormEvent(
                        //         startPoint: routePoints[i]));
                      } else {
                        setState(() {
                          endPoint = searchState.routePoints[i];
                        });
                        // BlocProvider.of<EndUserListBloc>(context).add(
                        //     EndUserFormEvent(
                        //         endPoint: routePoints[i]));
                      }
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            pointName.replaceFirst(
                                pointName[0], pointName[0].toUpperCase()),
                            style: tileSubTitle.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                  );
                },
                itemCount: searchState.routePoints.length,
              ),
            if (searchState != null &&
                searchState is listbloc.EndUserPointsSearchNotFound)
              Center(
                  child: Text(
                'Route points are not found',
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )),
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
                      //  BlocProvider.of<EndUserListBloc>(context)
                      //   .add(EndUserFormEvent());
                    },
                  ),
                  CustomActionButton(
                    // state: state is! EndUserPointsSearchLoading
                    state: searchState is! listbloc.IsBusy
                        ? ButtonState.idle
                        : ButtonState.loading,
                    title: 'Search',
                    margin: EdgeInsets.zero,
                    isOutline: true,
                    onTap: () {
                      if (_validate()) {
                        BlocProvider.of<listbloc.EndUserListBloc>(context).add(
                          listbloc.EndUserRoutePointsResultsFetched(
                            zipCode: _zipCodeController.text,
                            town: _townController.text,
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
          ],
          //   );
          // }
        ),
      ],
    );
  }

  Widget screen3() {
    return Column(
      children: [
        if (tripCuts.length != 0)
          Expanded(
            child: ListView.builder(
              itemCount: tripCuts.length,
              itemBuilder: (context, i) => EndUserTripCutItem(
                tripCutName: tripCuts[i].name,
                busPosition: () {
                  // takes the user to staff_search_field
                  setState(() {
                    tripCut = tripCuts[i];
                    timelineIndex = 5;
                  });
                  // BlocProvider.of<EndUserBloc>(context).add(
                  //   StaffPositionPageEvent(tripCut: tripCuts[i]),
                  // );
                },
                viewTimeSchedule: () {
                  // takes the user to TripsListPage
                  setState(() {
                    trips = tripCuts[i].routeTrips;
                    tripCutId = tripCuts[i].id;
                    timelineIndex++;
                  });
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => EndUserForm(),
                  //   ),
                  // );
                  // BlocProvider.of<EndUserBloc>(context).add(
                  //   TripsListPageEvent(
                  //     trips: tripCuts[i].routeTrips,
                  //     tripCutID: tripCuts[i].id,
                  //   ),
                  // );
                },
              ),
            ),
          )
        else
          Center(
              child: Text(
            'No trip cuts found for that day',
            style: tileSubTitle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          )),
        const SizedBox(
          height: 20,
        ),
        CustomActionButton(
            title: 'Back',
            isOutline: true,
            onTap: () {
              setState(() {
                timelineIndex--;
              });
              // BlocProvider.of<EndUserBloc>(context).add(EndUserFormEvent());
            })
      ],
    );
  }

  Widget screen4() {
    return Column(
      children: [
        // if (tripsList.length != 0)
        if (trips.length != 0)
          Expanded(
            child: ListView.builder(
              itemCount: trips.length,
              itemBuilder: (context, i) => EndUserTripItem(
                tripName: trips[i].name,
                bookTrip: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndUserForm(
                                trip: trips[i],
                                tripCutId: tripCutId,
                                entityid: widget.entityid,
                                entitytype: widget.entitytype,
                                givenreloadaction: null,
                                startPoint: startPoint,
                                endPoint: endPoint,
                              )));
                  // BlocProvider.of<EndUserBloc>(context).add(
                  //   BookTripPageEvent(
                  //       trip: trips[i], tripCutID: tripCutID));
                },
              ),
            ),
          )
        else
          Center(
              child: Text(
            'No trips found',
            style: tileSubTitle.copyWith(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          )),
        const SizedBox(
          height: 20,
        ),
        CustomActionButton(
          title: 'Back',
          isOutline: true,
          margin: EdgeInsets.symmetric(horizontal: 30),
          onTap: () {
            setState(() {
              timelineIndex--;
            });
            // BlocProvider.of<EndUserBloc>(context)
            //   .add(TripCutsResultsPageEvent(serviceID: serviceID));
          },
        )
      ],
    );
  }

  Widget screen5() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Stack(
            children: [
              GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
              Positioned.fill(
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 40,
                    )),
              )
            ],
          ),
        ),
        CustomActionButton(
            title: 'Back',
            isOutline: true,
            onTap: () {
              setState(() {
                timelineIndex = 3;
              });
              // BlocProvider.of<EndUserBloc>(context)
              //   .add(TripCutsResultsPageEvent());
            })
      ],
    );
  }
}

class ArbitrarySuggestionType {
  //For the mock data type we will use review (perhaps this could represent a restaurant);
  num stars;
  String name, imgURL;

  ArbitrarySuggestionType(this.stars, this.name, this.imgURL);
}
