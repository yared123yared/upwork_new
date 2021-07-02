import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../model/models.dart';

class RoutesTripRepository {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<RouteTripModel>> fetchRouteTripList(
      {@required String serviceID}) async {
    try {
      final docs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS')
          .get();
      return RouteTripModel.listFromJson(docs.docs);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> removeRouteTrip({
    @required RouteTripModel routeTrip,
    @required String serviceID,
  }) async {
    try {
      /// If a trip is usd in a trip cut, prevent its deletion.

      final docs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS')
          .where('routetrips', arrayContains: routeTrip.toJson())
          .get();
      if (docs.docs.length == 0) {
        await _firestore
            .doc('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS/${routeTrip.id}')
            .delete();
      } else {
        throw "Can't remove a trip since it's used in a trip cut.";
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> addNewRouteTrip(
      {@required RouteTripModel routeTrip, @required String serviceID}) async {
    try {
      await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS')
          .doc(
            routeTrip.routeName +
                '@' +
                routeTrip.startTime +
                '@' +
                routeTrip.dayOfWeek,
          )
          .set(routeTrip.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future<void> updateRouteTrip(
      {RouteTripModel routeTrip, @required String serviceID}) async {
    try {
      await _firestore
          .doc('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS/${routeTrip.id}')
          .update(routeTrip.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future<List<ManagedTrip>> fetchManagedTrips({
    @required String serviceID,
  }) async {
    try {
      final docs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/MANAGEDTRIPS')
          .get();
      return ManagedTrip.listFromJson(docs.docs);
    } catch (e) {
      print(e);
    }
  }

  static Future<List<RouteTripModel>> findTrip(
      {@required String dayName,
      @required routeName,
      @required String serviceID}) async {
    try {
      QuerySnapshot docs;
      if (dayName != 'not found') {
        docs = await _firestore
            .collection('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS')
            .where('dayofweek', isEqualTo: dayName)
            .get();
      } else if (routeName != null) {
        docs = await _firestore
            .collection('SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS')
            .where('routename', isEqualTo: routeName)
            .get();
      }
      return RouteTripModel.listFromJson(docs.docs);
    } catch (e) {
      print(e);
    }
  }
}
