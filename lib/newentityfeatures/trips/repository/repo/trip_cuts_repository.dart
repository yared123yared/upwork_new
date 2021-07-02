import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

export 'package:complex/newentityfeatures/Models/common/models.dart';
// import '../../../../common/models.dart';
import '../../model/models/trip_cut.dart';
import '../../model/models/routes.dart';

class TripCutsRepository {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<TripCut>> fetchTripCuts({
    @required String serviceID,
  }) async {
    try {
      final docs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS')
          .get();
      return TripCut.listFromJson(docs.docs);
    } catch (e) {
      print(e);
    }
  }

  static Future<void> addTripCut(
      {@required TripCut tripCut, @required String serviceID}) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final tripCutRef = _firestore
            .collection('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS')
            .doc();

        /// Add trip cut to all routes that trip cut uses.
        for (var trip in tripCut.routeTrips) {
          final routeRef = _firestore
              .doc('SERVICEPROVIDERINFO/$serviceID/ROUTES/${trip.routeId}');
          final routeDoc = await transaction.get(routeRef);
          final route = RouteModel.fromJson(routeDoc.data(), routeDoc.id);
          route.tripCutIDs.add(tripCutRef.id);
          transaction.update(routeRef, route.toJson());
        }
        transaction.set(tripCutRef, tripCut.toJson());
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<void> removeTripCut(
      {@required TripCut tripCut, @required String serviceID}) async {
    try {
      /// If a trip cut is usd in a relation, prevent its deletion.
      final docs = await _firestore
          .collection('SERVICEPROVIDERINFO/$serviceID/TRIPCUTVEHSTAFFREL')
          .where('tripcut.id', isEqualTo: tripCut.id)
          .get();

      if (docs.docs.length == 0) {
        await _firestore.runTransaction((transaction) async {
          for (var trip in tripCut.routeTrips) {
            final routeRef = _firestore
                .doc('SERVICEPROVIDERINFO/$serviceID/ROUTES/${trip.routeId}');
            final routeSnapshot = await transaction.get(routeRef);
            final route =
                RouteModel.fromJson(routeSnapshot.data(), routeSnapshot.id);
            route.tripCutIDs
                .removeWhere((tripCutID) => tripCutID == tripCut.id);
            transaction.update(routeRef, route.toJson());
          }

          /// Delete trip cut id from tripcutlist in a route via its trips.
          final tripCutRef = _firestore
              .doc('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS/${tripCut.id}');
          transaction.delete(tripCutRef);
        });
      } else {
        throw "Can't delete a trip cut since it's used in a relation";
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> updateTripCut({
    @required TripCut tripCut,
    @required String serviceID,
  }) async {
    try {
      await _firestore
          .doc('SERVICEPROVIDERINFO/$serviceID/TRIPCUTS/${tripCut.id}')
          .update(tripCut.toJson());
    } catch (e) {
      print(e);
    }
  }
}
