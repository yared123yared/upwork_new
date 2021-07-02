import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../model/models/route_points.dart';

/// Responsible of fetching route points, adding new route points, removing route
/// as well as editing existing route points from ROUTEPOINTS collection.
class RoutePointsRepository {
  static final _firestore = FirebaseFirestore.instance;
  // Fetches all route points that exist in firestore.
  static Future<List<RoutePointsModel>> fetchRoutePoints(
      {@required String serviceID}) async {
    try {
      final docs = await _firestore
          .collection("SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS")
          .get();

      List<RoutePointsModel> routePointsList =
          RoutePointsModel.listFromJson(docs.docs);

      return routePointsList;
    } catch (e) {
      print(e);
    }
  }

  /// Edit a specific route point with the help of document id.
  static Future<void> editRoutePoint(
      {@required RoutePointsModel routePoint,
      @required String serviceID}) async {
    try {
      await _firestore
          .doc("SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS/${routePoint.docId}")
          .update(routePoint.toJson());
    } catch (e) {
      print(e);
    }
  }

  /// Delete specific route point using route point id.
  static Future<void> removeRoutePoint(
      {@required RoutePointsModel routePoint,
      @required String serviceID}) async {
    try {
      await _firestore
          .doc("SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS/${routePoint.docId}")
          .delete();
    } catch (e) {
      print(e);
    }
  }

  /// Adds specific route point to route points collection.
  static Future<void> addRoutePoint(
      {@required RoutePointsModel routePoint,
      @required String serviceID}) async {
    try {
      await _firestore
          .collection("SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS")
          .add(routePoint.toJson());
    } catch (e) {
      print(e);
    }
  }

  /// Finds route points using zip code, town, state and district. Returning a list of route points.
  static Future<List<RoutePointsModel>> findRoutePoints({
    @required String zipCode,
    @required String town,
    @required String state,
    @required String district,
    @required String serviceID,
  }) async {
    try {
      var result = await _firestore
          .collection("SERVICEPROVIDERINFO/$serviceID/ROUTEPOINTS")
          .where('town', isEqualTo: town?.toLowerCase())
          .where('district', isEqualTo: district?.toLowerCase())
          .where('zipcode', isEqualTo: zipCode?.toLowerCase())
          .where('state', isEqualTo: state?.toLowerCase())
          .get();
      List<RoutePointsModel> routePointsList =
          RoutePointsModel.listFromJson(result.docs);

      return routePointsList;
    } catch (e) {
      print(e);
    }
  }
}
