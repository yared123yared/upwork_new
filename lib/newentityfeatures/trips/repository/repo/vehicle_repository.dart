import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../model/models.dart';

class VehicleRepository {
  Future<ServiceVehicleModel> getVehicleByID({
    @required String serviceId,
    @required String docId,
  }) async {
    return await FirebaseFirestore.instance
        .doc(
          "SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES/$docId",
        )
        .get()
        .then((x) {
      print(x.data);
      return ServiceVehicleModel.fromData(x.data());
    });
  }

  static Future<List<ServiceVehicleModel>> getVehicleList({
    @required String serviceId,
  }) async {
    return await FirebaseFirestore.instance
        .collection("SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES")
        .get(GetOptions(source: Source.server))
        .then((x) {
      return ServiceVehicleModel.listFromData(
        x.docs.map((d) => d.data()).toList(),
      );
    });
  }

  static Future addNewVehicle({
    @required String serviceId,
    @required ServiceVehicleModel vehicle,
  }) async {
    // try {
    return await FirebaseFirestore.instance
        .collection(
          "SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES",
        )
        .doc(vehicle.numberPlate)
        .set(vehicle.toData());
    // } catch (e) {
    //   print(e);
    // }
  }

  static Future deleteVehicle({
    @required String serviceId,
    @required ServiceVehicleModel vehicle,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
            "SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES",
          )
          .doc(vehicle.numberPlate)
          .delete();
    } catch (e) {
      print(e);
    }
  }

  static Future updateVehicle({
    @required String serviceId,
    @required ServiceVehicleModel vehicle,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
            "SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES",
          )
          .doc(vehicle.numberPlate)
          .update(vehicle.toData());
    } catch (e) {
      print(e);
    }
  }
}
