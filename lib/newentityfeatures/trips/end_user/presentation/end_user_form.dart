import 'package:complex/newentityfeatures/trips/model/models/route_points.dart';
import 'package:complex/newentityfeatures/trips/model/models/route_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/common/helputil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
//
//import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;

class EndUserForm extends StatefulWidget {
  final RouteTripModel trip;
  final String tripCutId;
  // final VrAssignmentModel vrAssignmentModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final RoutePointsModel startPoint;
  final RoutePointsModel endPoint;

  EndUserForm({
    @required this.trip,
    @required this.tripCutId,
    // @required this.vrAssignmentModel,
    @required this.givenreloadaction,
    @required this.startPoint,
    @required this.endPoint,
    @required this.entityid,
    this.entitytype,
  });

  @override
  _EndUserFormState createState() => _EndUserFormState();
}

class _EndUserFormState extends State<EndUserForm> {
  var _numOfSeatsAdultController = CustomTextFieldController();
  var _numOfSeatsChildController = CustomTextFieldController();
  var _luggageWeightController = CustomTextFieldController();
  var _seatTypeController = CustomTextFieldController();

  bool _validate() {
    return _numOfSeatsAdultController.isValid &&
        _numOfSeatsChildController.isValid &&
        _luggageWeightController.isValid &&
        _seatTypeController.isValid;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.EndUserBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('End User'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.EndUserBloc, itembloc.EndUserState>(
            listener: (context, state) {
          if (state is itembloc.BookTripSuccess) {
            // BlocProvider.of<EndUserBloc>(context)
            //     .add(TripCutsResultsPageEvent());
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                      header: 'Ticket has been booked !',
                      content: Text('Order ID : ${state.orderId}'),
                    ));
          } else if (state is itembloc.BookTripFail) {
            // BlocProvider.of<EndUserBloc>(context)
            //     .add(TripCutsResultsPageEvent());
            showDialog(
                context: context,
                builder: (_) => CustomAlertDialog(
                      header: 'Booking a trip has failed',
                      content: Text(state.error),
                    ));
          }
          if (state is itembloc.IsSaved) {
            EasyLoading.showSuccess("Item is Created/Saved");
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.EndUserBloc, itembloc.EndUserState>(
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
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
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
                CustomDropDownList<String>(
                  displayName: (typeOfSeat) => typeOfSeat,
                  loadData: () async => ['Ordinary', 'Berth', 'Cushioned'],
                  title: 'Type of seat',
                  controller: _seatTypeController,
                  validate: Validate.withOption(isRequired: true),
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
                  // BlocProvider.of<EndUserBloc>(context)
                  //     .add(TripsListPageEvent());
                },
              ),
            ),
            Expanded(
              child: CustomActionButton(
                title: "Book Ticket",
                isExpanded: true,
                padding: EdgeInsets.symmetric(vertical: 10),
                isOutline: true,
                margin:
                    EdgeInsets.only(left: 8, bottom: 24, right: 24, top: 20),
                onTap: () {
                  if (_validate()) {
                    BlocProvider.of<itembloc.EndUserBloc>(context).add(
                      itembloc.BookTripEvent(
                          startPoint: widget.startPoint,
                          endPoint: widget.endPoint,
                          tripCutID: widget.tripCutId,
                          trip: widget.trip,
                          entityid: widget.entityid,
                          childCount:
                              int.tryParse(_numOfSeatsChildController.text),
                          adultCount:
                              int.tryParse(_numOfSeatsAdultController.text),
                          luggageWeight:
                              int.tryParse(_luggageWeightController.text),
                          seatType: _seatTypeController.text),
                    );
                  }
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
