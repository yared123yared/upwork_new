import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart'
    as model;
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';
import 'package:complex/newentityfeatures/trips/model/models/relation.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_main_point.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:complex/newentityfeatures/trips/model/models/ticket.dart';
import 'package:complex/newentityfeatures/trips/widgets/relation_item.dart';
import 'package:complex/newentityfeatures/trips/widgets/trip_item.dart';
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
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/common/widgets/date_time_picker_newentity.dart'
    as newentitytimepicker;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../itembloc/bloc.dart' as itembloc;
import '../listbloc/bloc.dart' as listbloc;
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';

enum MainPoint { start, end }

class HandleRelationForm extends StatefulWidget {
  final VrAssignmentModel vrAssignmentModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  HandleRelationForm({
    @required this.vrAssignmentModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _HandleRelationFormState createState() => _HandleRelationFormState();
}

class _HandleRelationFormState extends State<HandleRelationForm> {
  int timelineIndex = 1;

  RegisteredUser staff = RegisteredUser(
    userId: 'N620fjHYEehEJUfuJ6aB1G5OUEv1',
    name: 'ins3reg3',
    isActive: true,
    userType: 'MANAGER',
  );
  DateTime _startDate;

  List<Relation> relationList;

  List<RouteTripModel> trips;
  Relation relation;

  RouteTripModel trip;
  List<RouteMainPoints> routePoints;
  Ticket ticket;

  MainPoint startOrEndPoint;

  var _startDateController = CustomTextFieldController();

  var _numOfSeatsAdultController = CustomTextFieldController();
  var _numOfSeatsChildController = CustomTextFieldController();
  var _luggageWeightController = CustomTextFieldController();
  var _startPointController = CustomTextFieldController();
  var _endPointController = CustomTextFieldController();

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 0),
      () => _startDateController.text =
          model.CommonUIHandler.formattedDateToString(
        DateTime.now(),
        model.DateTimeMode.DATE,
      ),
    );
    Future.delayed(Duration(milliseconds: 0), () {
      // var ticket = widget.ticket;
      if (ticket.adultNum != null) {
        _numOfSeatsAdultController.text = ticket?.adultNum?.toString() ?? "";
      }
      if (ticket.childNum != null) {
        _numOfSeatsChildController.text = ticket?.childNum?.toString() ?? "";
      }
      if (ticket.luggageWeight != null) {
        _luggageWeightController.text = ticket?.luggageWeight?.toString() ?? "";
      }
      if (ticket.startPoint != null) {
        _startPointController.text = ticket?.startPoint?.pointName ?? "";
      }
      if (ticket.endPoint != null) {
        _endPointController.text = ticket?.endPoint?.pointName ?? "";
      }
    });
  }

  void _initController(CustomTextFieldController controller, String startDate) {
    Future.delayed(
        Duration(milliseconds: 10), () => controller.text = startDate);
  }

  Future _initFiledValue() async {
    if (timelineIndex == 1) {
    } else if (timelineIndex == 2) {
    } else if (timelineIndex == 3) {
    } else if (timelineIndex == 4) {}
  }

  bool _validate() {
    if (timelineIndex == 1) {
      return _startDateController.isValid;
    } else if (timelineIndex == 2) {
    } else if (timelineIndex == 3) {
    } else if (timelineIndex == 4) {
      return _numOfSeatsAdultController.isValid &&
          _numOfSeatsChildController.isValid &&
          _luggageWeightController.isValid &&
          _startPointController.isValid &&
          _endPointController.isValid;
    }
    return false;
  }

  Ticket extract() {
    var _ticket = ticket;
    _ticket.luggageWeight = int.parse(_luggageWeightController.text);
    _ticket.childNum = int.parse(_numOfSeatsChildController.text);
    _ticket.adultNum = int.parse(_numOfSeatsAdultController.text);

    return _ticket;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.HandleRelationBloc()
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
        body: BlocListener<itembloc.HandleRelationBloc,
            itembloc.HandleRelationState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
          if (state is itembloc.GenerateTicketPageState) {
            setState(() {
              routePoints = state.routePoints;
            });
          }
          if (state is itembloc.RelationCheckInSuccess) {
            BlocProvider.of<itembloc.HandleRelationBloc>(context)
                // .add(RelationsSearchedEvent(entityid: widget.entityid));
                .add(
              itembloc.RelationsSearchedEvent(
                entityid: widget.entityid,
                startDate: _startDate,
                staff: staff,
              ),
            );
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                      header: 'Relation has been checked in !',
                      content: Text('Order ID : ${state.checkInId}'),
                    ));
          } else if (state is itembloc.RelationCheckInFail) {
            BlocProvider.of<itembloc.HandleRelationBloc>(context)
                // .add(RelationsSearchedEvent(entityid: widget.entityid));
                .add(
              itembloc.RelationsSearchedEvent(
                entityid: widget.entityid,
                startDate: _startDate,
                staff: staff,
              ),
            );
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                    header: 'Error has occurred !',
                    content: Text(
                      state.errorMsg,
                    )));
          } else if (state is itembloc.GenerateTicketSuccess) {
            BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
              itembloc.TripListRetrievedEvent(),
            );
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                      header: 'Ticket is generated successfully',
                      content: Text('Price : ${state.ticketPrice}'),
                    ));
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // sessiontermlist = state.sessiontermlist;

            _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.HandleRelationBloc,
            itembloc.HandleRelationState>(builder: (context, state) {
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
                  if (timelineIndex == 3) MaterialPage(child: screen3()),
                  if (timelineIndex == 4) MaterialPage(child: screen4()),
                  if (timelineIndex == 4) MaterialPage(child: screen5()),
                ];
              }),
        ),
      ],
    );
  }

  Widget screen1() {
    return Column(
      children: [
        InAppTitle(
          title: 'Handle Relations',
          subtitle: 'Search for relations via start date',
        ),
        // BlocBuilder<DateCubit, DateState>(builder: (context, state) {
        //   if (state is FormatStartDate) {
        //     _initController(_startDateController, state.startDate);
        //   }
        CustomTextField(
          onTap: () {
            setState(() {
              DatePicker.showDatePicker(context, onConfirm: (date) {
                _startDate = date;
                _startDateController.text =
                    model.CommonUIHandler.formattedDateToString(
                  date,
                  model.DateTimeMode.DATE,
                );
              });
              //   BlocProvider.of<DateCubit>(context)
              //       .formatStartDate(startDate: date);
            });
          },
          title: 'Start Date',
          enabled: false,
          controller: _startDateController,
          validate: Validate.withOption(isRequired: true),
          //   );
          // }
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
                  // BlocProvider.of<TripBloc>(context).add(TripPageEvent());
                },
              ),
            ),
            Expanded(
              // child: BlocBuilder<StateHandlerCubit, StateHandlerState>(
              //     builder: (context, state) {
              //   ButtonState buttonState = ButtonState.idle;
              //   if (state is StateHandlerLoadingState) {
              //     buttonState = ButtonState.loading;
              //   }
              child: CustomActionButton(
                  title: "Search",
                  // state: buttonState,
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  isOutline: true,
                  margin:
                      EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 20),
                  onTap: () {
                    if (_validate()) {
                      // BlocProvider.of<StateHandlerCubit>(context)
                      //     .switchLoading();
                      // DateTime startDate;
                      // var dateCurrentState =
                      //     BlocProvider.of<DateCubit>(context).state;
                      // if (dateCurrentState is FormatStartDate) {
                      //   startDate =
                      //       BlocProvider.of<DateCubit>(context).startDate;
                      // }
                      setState(() {
                        timelineIndex++;
                      });
                      DateTime startDate = _startDate ??
                          model.CommonUIHandler.formattedStringToDate(
                            _startDateController.text,
                            model.DateTimeMode.DATE,
                          );
                      BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                        itembloc.RelationsSearchedEvent(
                          entityid: widget.entityid,
                          startDate: startDate,
                          staff: staff,
                        ),
                      );

                      // BlocProvider.of<HandleRelationBloc>(context).add(
                      //     RelationsSearchedEvent(
                      //         entityid: widget.widget.entityid,
                      //         startDate: startDate ??
                      //             CommonUIHandler.formattedStringToDate(
                      //                 _startDateController.text,
                      //                 DateTimeMode.DATE),
                      //         staff: widget.staff));
                    }
                    //   },
                    // );
                  }),
            )
          ],
        )
      ],
    );
  }

  Widget screen2() {
    return Column(
      children: [
        if (relationList?.length != 0)
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, i) => RelationItem(
                relationName: relationList[i].name,
                checkInAction: () {
                  BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                    itembloc.RelationCheckedInEvent(
                      entityid: widget.entityid,
                      staff: staff,
                      startDate: _startDate,
                      relation: relationList[i],
                    ),
                  );
                },
                viewTripsAction: () {
                  setState(() {
                    timelineIndex++;
                    relation = relationList[i];
                  });
                  BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                    itembloc.TripListRetrievedEvent(
                      entityid: widget.entityid,
                      relation: relationList[i],
                    ),
                  );
                },
                //   return BlocProvider.of<HandleRelationBloc>(context).add(
                //       TripListRetrievedEvent(
                //           relation: relationList[i], entityid: widget.entityid));
              ),
              itemCount: relationList.length,
            ),
          )
        else
          Center(
            child: Text('No active relations found for that start date.',
                textAlign: TextAlign.center,
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
        const SizedBox(height: 20),
        Center(
          child: CustomActionButton(
            title: "Back",
            isExpanded: true,
            isOutline: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            onTap: () {
              setState(() {
                timelineIndex--;
              });
              // BlocProvider.of<HandleRelationBloc>(context)
              //     .add(CalenderPageEvent());
            },
          ),
        ),
      ],
    );
  }

  Widget screen3() {
    return Column(
      children: [
        if (trips.length != 0)
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, i) => TripItem(
                hasStarted: true,
                tripName: trips[i].name,
                cancelAction: () => print('cancel'),
                endAction: () =>
                    BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                  itembloc.RelationTripEnded(
                    entityid: widget.entityid,
                    relation: relation,
                  ),
                ),
                startAction: () {
                  BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                    itembloc.RelationTripStarted(
                      relation: relation,
                      entityid: widget.entityid,
                      trip: trips[i],
                    ),
                  );
                },
                ticketAction: () {
                  setState(() {
                    timelineIndex++;
                    ticket = Ticket();
                    trip = trips[i];
                  });
                  BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                    itembloc.GenerateTicketPageEvent(
                      entityid: widget.entityid,
                      entitytype: widget.entitytype,
                      relation: relation,
                      trip: trips[i],
                      ticket: ticket,
                    ),
                  );
                },
              ),
              itemCount: trips.length,
            ),
          )
        else
          Center(
            child: Text(
              'No Trips found for that relation.',
              style: tileSubTitle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        Center(
          child: CustomActionButton(
            title: "Back",
            isExpanded: true,
            isOutline: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            onTap: () {
              setState(() {
                timelineIndex--;
              });
              // var startDate =
              //     BlocProvider.of<HandleRelationBloc>(context)
              //         .startDate;
              // BlocProvider.of<HandleRelationBloc>(context).add(
              //     RelationsSearchedEvent(
              //         entityid: widget.entityid,
              //         staff: staff,
              //         startDate: startDate));
            },
          ),
        ),
      ],
    );
  }

  Widget screen4() {
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
                      startOrEndPoint = MainPoint.start;
                    });
                    // BlocProvider.of<HandleRelationBloc>(context).add(
                    //     MainPointSelectPageEvent(
                    //         ticket: widget.ticket,
                    //         relation: widget.relation,
                    //         trip: widget.trip,
                    //         routePoints: widget.routePoints,
                    //         startOrEndPoint: MainPoint.start));
                  },
                  title: 'Start Point - Click to select a point',
                  enabled: false,
                  controller: _startPointController,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  onTap: () {
                    setState(() {
                      timelineIndex++;
                      startOrEndPoint = MainPoint.start;
                    });
                    // BlocProvider.of<HandleRelationBloc>(context).add(
                    //     MainPointSelectPageEvent(
                    //         ticket: widget.ticket,
                    //         relation: widget.relation,
                    //         trip: widget.trip,
                    //         routePoints: widget.routePoints,
                    //         startOrEndPoint: MainPoint.end));
                  },
                  title: 'End Point - Click to select a point',
                  enabled: false,
                  controller: _endPointController,
                  validate: Validate.withOption(
                    isRequired: true,
                  ),
                ),
                CustomTextField(
                  title: 'Number of seats for adults',
                  controller: _numOfSeatsAdultController,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
                CustomTextField(
                  title: 'Number of seats for children',
                  controller: _numOfSeatsChildController,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
                CustomTextField(
                  title: 'Luggage Weight',
                  controller: _luggageWeightController,
                  validate:
                      Validate.withOption(isRequired: true, isNumber: true),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: CustomActionButton(
                  title: "Back",
                  isExpanded: true,
                  isOutline: true,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: EdgeInsets.zero,
                  onTap: () {
                    setState(() {
                      timelineIndex--;
                    });
                    // BlocProvider.of<HandleRelationBloc>(context)
                    //     .add(TripListRetrievedEvent());
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: CustomActionButton(
                  title: "Generate Ticket",
                  isExpanded: true,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  isOutline: true,
                  margin: EdgeInsets.zero,
                  onTap: () {
                    if (_validate()) {
                      BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                        itembloc.RelationTripTicketGenerated(
                          entityid: widget.entityid,
                          entitytype: widget.entitytype,
                          ticket: extract(),
                          routePoints: routePoints,
                          trip: trip,
                          relation: relation,
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget screen5() {
    return Column(
      children: [
        Expanded(
            child: routePoints.length != 0
                ? ListView.builder(
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        if (startOrEndPoint == MainPoint.start) {
                          ticket.startPoint = routePoints[i];
                        } else {
                          ticket.endPoint = routePoints[i];
                        }
                        BlocProvider.of<itembloc.HandleRelationBloc>(context)
                            .add(
                          itembloc.GenerateTicketPageEvent(
                            entityid: widget.entityid,
                            entitytype: widget.entitytype,
                            trip: trip,
                            relation: relation,
                            ticket: ticket,
                          ),
                        );
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            routePoints[i].pointName,
                            style: tileSubTitle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    itemCount: routePoints.length,
                  )
                : Text('No route points found',
                    style: tileSubTitle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black))),
        Center(
          child: CustomActionButton(
            title: "Back",
            isExpanded: true,
            isOutline: true,
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 50),
            onTap: () {
              BlocProvider.of<itembloc.HandleRelationBloc>(context).add(
                itembloc.GenerateTicketPageEvent(
                  entityid: widget.entityid,
                  entitytype: widget.entitytype,
                  relation: relation,
                  trip: trip, //[i],
                  ticket: ticket,
                ),
              );

              //  BlocProvider.of<HandleRelationBloc>(context).add(
              //     GenerateTicketPageEvent(
              //         trip: trip, relation: relation, ticket: ticket));
            },
          ),
        ),
      ],
    );
  }
}
