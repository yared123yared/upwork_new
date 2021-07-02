import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

export 'package:complex/newentityfeatures/Models/common/models.dart';
// import '../../../../common/models.dart';
import '../../model/models.dart';
// import '../../model/models/relation.dart';
// import '../../model/models/route_main_point.dart';
// import '../../model/models/route_trip.dart';
// import '../../model/models/ticket.dart';
// import '../../model/models/trip_cut.dart';

class HandleRelationRepository {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Relation>> findRelations(
      {@required String serviceID,
      @required RegisteredUser staff,
      @required DateTime startDate}) async {
    try {
      List<Relation> relationList = [];
      final relationsDocs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/TRIPCUTVEHSTAFFREL')
          .where('isactive', isEqualTo: true)
          .orderBy('startdate', descending: false)
          .get();

      relationList = [
        ...Relation.listFromJson(relationsDocs.docs)
            .where((relation) =>
                (relation.startDate.isAfter(startDate) ||
                    relation.startDate.isAtSameMomentAs(startDate)) &&
                (staff.userId == relation.staff1.userId ||
                    staff.userId == relation.staff2.userId))
            .toList(),
      ];
      return relationList;
    } catch (e) {
      print(e);
    }
  }

  static Future<List<RouteTripModel>> findTrips(
      {@required String serviceID, @required TripCutShort tripCutShort}) async {
    try {
      final tripCutDoc = await _firestore
          .doc('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS/${tripCutShort.docId}')
          .get();
      return TripCut.fromJson(json: tripCutDoc.data(), docId: tripCutDoc.id)
          .routeTrips;
    } catch (e) {
      print(e);
    }
  }

  static Future<String> relationCheckIn(
      {@required Relation relation,
      @required String serviceID,
      @required RegisteredUser staff,
      @required DateTime staffStartDate,
      @required Position position}) async {
    try {
      if (_canCheckIn(relation, staffStartDate, staff)) {
        bool isStaff1 = relation.staff1.userId == staff.userId;
        if (isStaff1) {
          await _firestore
              .doc(
                  'SERVICEPROVIDERINFO/$serviceID/TRIPCUTVEHSTAFFREL/${relation.id}')
              .update({
            'lastcheckindatestaff1':
                CommonUIHandler.toTimeStamp(dateTime: DateTime.now()).toInt(),
          });
        } else {
          await _firestore
              .doc(
                  'SERVICEPROVIDERINFO/$serviceID/TRIPCUTVEHSTAFFREL/${relation.id}')
              .update({
            'lastcheckindatestaff2':
                CommonUIHandler.toTimeStamp(dateTime: DateTime.now()).toInt(),
          });
        }

        /// TODO : Remove this when cloud function is ready to use.
        return '1234';
        final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
          'TripCutCheckInRequest',
        );
        dynamic response = await callable.call(<String, dynamic>{
          'entityid': serviceID,
          'entitytype': 'SERVICEPROVIDERINFO',
          'tripcutid': relation.tripCut.docId,
          'relationshipid': relation.id,
          'staffid': staff.userId,
          'curlong': position?.longitude,
          'curlat': position?.latitude
        });
        if (response['id'] == null) {
          throw response['error'];
        }

        return response['id'];
      } else {
        throw 'Can\'t make a check in when you\'re not on the same relation day or relation has already been checked in.';
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> startTrip(
      {@required Relation relation,
      @required RouteTripModel trip,
      @required DateTime tripStartTime,
      @required Position position,
      @required String serviceID}) async {
    try {
      await _firestore
          .doc(
              'SERVICEPROVIDERINFO/$serviceID/CURTRIPCUTSTATUS/${relation.tripCut.docId}')
          .update({
        'isactive': true,
        'lat_staff': position.latitude,
        'long_staff': position.longitude,
        'tripid': trip.id,
        'tripstarttime':
            CommonUIHandler.toTimeStamp(dateTime: tripStartTime).toInt(),
        'vehplatenum': relation.vehicleModel.numberPlate
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<void> trackStaff(
      {@required Relation relation,
      @required Position position,
      @required String serviceID}) async {
    try {
      await _firestore
          .doc(
              'SERVICEPROVIDERINFO/$serviceID/CURTRIPCUTSTATUS/${relation.tripCut.docId}')
          .update({
        'lat_staff': position.latitude,
        'long_staff': position.longitude,
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<void> endTrip(
      {@required Relation relation,
      @required Position position,
      @required String serviceID}) async {
    try {
      await _firestore
          .doc(
              'SERVICEPROVIDERINFO/$serviceID/CURTRIPCUTSTATUS/${relation.tripCut.docId}')
          .update({
        'isactive': false,
        'lat_staff': position.latitude,
        'long_staff': position.longitude,
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<List<RouteMainPoints>> fetchRoutePoints(
      {@required String serviceID, @required RouteTripModel trip}) async {
    try {
      final routeDoc = await _firestore
          .doc('SERVICEPROVIDERINFO/$serviceID/ROUTES/${trip.routeId}')
          .get();
      return RouteModel.fromJson(routeDoc.data(), routeDoc.id).mainPoints;
    } catch (e) {
      print(e);
    }
  }

  /// TODO : Generate ticket using these fields and return ticket price.
  static Future<String> generateTicket(
      {@required Relation relation,
      @required RouteTripModel trip,
      @required List<RouteMainPoints> routePoints,
      @required Ticket ticket,
      @required String serviceID}) async {
    try {
      print(relation.id);
      print(trip.id);
      routePoints.forEach((element) => print(element.pointName));
      print(ticket.adultNum);
      print(ticket.childNum);
      print(ticket.endPoint.pointName);
      print(ticket.startPoint.pointName);
      return '56 RS';
    } catch (e) {
      print(e);
    }
  }

  static bool _canCheckIn(
      Relation relation, DateTime staffStartDate, RegisteredUser staff) {
    try {
      var relationStartDate = relation.startDate;
      var relationEndDate = relation.endDate;
      bool isStaff1 = relation.staff1.userId == staff.userId;
      DateTime lastCheckIn;
      if (isStaff1) {
        lastCheckIn = relation.lastCheckInDateStaff1;
      } else {
        lastCheckIn = relation.lastCheckInDateStaff2;
      }
      String enteredDayOfWeek = DateFormat('EEEE')
          .format(staffStartDate)
          .substring(0, 3)
          .toLowerCase();
      return (staffStartDate.isAfter(relationStartDate) ||
              staffStartDate.isAtSameMomentAs(relationStartDate)) &&
          (staffStartDate.isBefore(relationEndDate)) &&
          relation.dayOfWeek.compareTo(enteredDayOfWeek) == 0 &&
          relation.isActive &&
          (lastCheckIn == null ||
              lastCheckIn.isBefore(DateFormat('dd-MM-yyyy')
                  .parse(DateTime.now().toIso8601String())));
    } catch (e) {
      print(e);
    }
  }
}
