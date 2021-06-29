import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../model/models.dart';
// import '../../model/models/route_points.dart';
// import '../../model/models/route_trip.dart';
// import '../../model/models/routes.dart';
// import '../../model/models/trip_cut.dart';
// import '../../model/models/trip_cut_current_status.dart';

class EndUserRepository {
  static final _firestore = FirebaseFirestore.instance;

  /// Finds route points using zip code and town. Returning a list of route points.
  static Future<List<RoutePointsModel>> findRoutePoints({
    @required String zipCode,
    @required String serviceID,
    @required String town,
  }) async {
    var result = await _firestore
        .collection('SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS')
        .where('town', isEqualTo: town.toLowerCase())
        .where('zipcode', isEqualTo: zipCode.toLowerCase())
        .get();
    List<RoutePointsModel> routePointsList =
        RoutePointsModel.listFromJson(result.docs);

    return routePointsList;
  }

  /// Finds route points using zip code and town. Returning a list of route points.
  static Future<List<TripCut>> findTripCuts({
    @required DateTime startDate,
    @required String serviceID,
    @required RoutePointsModel startPoint,
    @required RoutePointsModel endPoint,
  }) async {
    List<TripCut> tripCutList = [];

    var result = await _firestore
        .collection('SERVICEPROVIDERINFO/$serviceID/ROUTES')
        .where('startpointlist.${startPoint.pointName}', isEqualTo: true)
        .where('startpointlist.${endPoint.pointName}', isEqualTo: true)
        .get();
    List<RouteModel> routes = RouteModel.listFromJson(result.docs);
    for (var route in routes) {
      var tripCuts =
          await _getTripCutsById(route.tripCutIDs, startDate, serviceID);
      if (tripCuts.length != 0) {
        tripCutList.addAll([...tripCuts]);
      }
    }

    return tripCutList;
  }

  static Future<TripCutCurrentStatus> getTripCutStatus(
      {@required String serviceID, @required TripCut tripCut}) async {
    final tripCutStatusDoc = await _firestore
        .doc('SERVICEPROVIDERINFO/$serviceID/CURTRIPCUTSTATUS/${tripCut.id}')
        .get();

    return TripCutCurrentStatus.fromJson(tripCutStatusDoc.data());
  }

  static Future<String> bookTrip(
      {@required RouteTripModel trip,
      @required String tripCutID,
      @required String serviceID,
      @required RoutePointsModel startPoint,
      @required RoutePointsModel endPoint,
      @required int adultCount,
      @required int childCount,
      @required int luggageWeight,
      @required String seatType}) async {
    return '124';
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'TripTicketBookingRequest',
    );
    dynamic response = await callable.call(<String, dynamic>{
      'entityid': serviceID,
      'entitytype': 'SERVICEPROVIDERINFO',
      'tripcutid': tripCutID,
      'tripid': trip.id,
      'startpoint': startPoint.toJsonCloud(),
      'endpoint': endPoint.toJsonCloud(),
      'routeid': trip.routeId,
      'adultcount': adultCount,
      'childcount': childCount,
      'luggageweight': luggageWeight,
      'seattype': seatType
    });
    if (response['id'] == null) {
      throw response['error'];
    }

    return response['id'];
  }

  static Future<List<TripCut>> _getTripCutsById(
      List<String> tripCutsID, DateTime startDate, String serviceID) async {
    List<TripCut> tripCuts = [];
    if (tripCutsID.length != 0) {
      for (var tripCutId in tripCutsID) {
        var tripCutDoc = await _firestore
            .doc('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS/$tripCutId')
            .get();
        var tripCut =
            TripCut.fromJson(json: tripCutDoc.data(), docId: tripCutId);
        if (_isTripCutExist(tripCut, startDate)) {
          tripCuts.add(tripCut);
        }
      }
    }
    return tripCuts;
  }

  static bool _isTripCutExist(TripCut tripCut, DateTime userStartDate) {
    var tripCutStartDate = tripCut.startDate;
    var tripCutEndDate = tripCut.endDate;
    String enteredDayOfWeek =
        DateFormat('EEEE').format(userStartDate).substring(0, 3).toLowerCase();
    return (userStartDate.isAfter(tripCutStartDate) ||
            userStartDate.isAtSameMomentAs(tripCutStartDate)) &&
        (userStartDate.isBefore(tripCutEndDate)) &&
        tripCut.dayOfWeek.compareTo(enteredDayOfWeek) == 0 &&
        tripCut.isActive;
  }
}
