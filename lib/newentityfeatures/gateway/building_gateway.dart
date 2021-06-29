import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';


class BuildingGateway {
  static Future<List<BuildingModel>> getBuildingList(
      {@required String complexID}) async {
    return await FirebaseFirestore.instance
        .collection("COMPLEXES/$complexID/BUILDING")
        .get()
        .then((x) {
      return BuildingModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<void> updateBuilding(
      {@required String complexID, @required BuildingModel building}) async {
    try {
      print('building ${building.buildingID}');
      return await FirebaseFirestore.instance
          .collection("COMPLEXES/$complexID/BUILDING")
          .doc(building.buildingID)
          .update(building.toJson());
    } catch (e) {
      print(e); // I Don't Know
    }
  }

  static Future<void> addNewBuilding(
      {@required String complexID, @required BuildingModel building}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("COMPLEXES/$complexID/BUILDING")
          .doc(building.buildingName)
          .set(building.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future<void> removeBuilding(
      {@required String complexID, @required BuildingModel building}) async {
    return await FirebaseFirestore.instance
        .collection("COMPLEXES/$complexID/BUILDING")
        .doc(building.buildingID)
        .delete();
  }
}
