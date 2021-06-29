import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../model/models.dart';

/// Responsible for fetching, adding, editing and deleting Routes.
class RoutesRepository {
  static final _firestore = FirebaseFirestore.instance;
  static Future<List<RouteModel>> fetchRoutesList(
      {@required String serviceID}) async {
    final routesList = await _firestore
        .collection("SERVICEPROVIDERINFO/$serviceID/ROUTES")
        .get();

    return RouteModel.listFromJson(routesList.docs);
  }

  static Future<void> addRoute(
      {@required RouteModel route, @required String serviceID}) async {
    try {
      if (route.isRouteReversed) {
        await _firestore
            .collection("SERVICEPROVIDERINFO/$serviceID/ROUTES")
            .add(route.toJsonReversed());
      }
      await _firestore
          .collection("SERVICEPROVIDERINFO/$serviceID/ROUTES")
          .add(route.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future<void> editRoute(
      {@required RouteModel route, @required String serviceID}) async {
    await _firestore
        .doc("SERVICEPROVIDERINFO/$serviceID/ROUTES/${route.id}")
        .update(route.toJson());
  }

  static Future<void> removeRoute(
      {@required RouteModel route, @required String serviceID}) async {
    final doc = await _firestore
        .collection("SERVICEPROVIDERINFO/$serviceID/ROUTETRIPS")
        .where('routeid', isEqualTo: route.id)
        .get();
    if (doc.docs.length == 0) {
      await _firestore
          .doc("SERVICEPROVIDERINFO/$serviceID/ROUTES/${route.id}")
          .delete();
    } else {
      throw 'Route can\'t be deleted because it\'s used in a trip';
    }
  }

  static Future<List<RouteModel>> findRoutes(
      {@required String routeName, @required String serviceID}) async {
    var result = await _firestore
        .collection("SERVICEPROVIDERINFO/$serviceID/ROUTES")
        .where('routename', isEqualTo: routeName.toLowerCase())
        .get();
    List<RouteModel> routePointsList =
        RouteModel.listFromJson(result.docs);

    return routePointsList;
  }

  // static Future<List<RegisteredUser>> fetchStaffs({@required serviceID}) async {
  //   var staffDoc = await _firestore
  //       .collection("SERVICEPROVIDERINFO/$serviceID/RegisteredUser")
  //       .getDocuments();
  //   final staffList = Staff.listFromJson(staffDoc.documents);

  //   return staffList;
  // }
}
