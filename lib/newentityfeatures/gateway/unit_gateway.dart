import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/unit_model.dart';

class UnitGateway {
  static Future<List<UnitModel>> getUnitList(
      {@required String entitytype, String entityid}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .get()
        .then((x) {
      print(x.docs);
      return UnitModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<UnitModel>> getUnitListForBuildingFloor(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .get()
        .then((x) {
      print(x.docs);
      return UnitModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<UnitModel>> getUnitListForBuildingFloorOwnerAvailable(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .get()
        .then((x) {
      print(x.docs);
      return UnitModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<UnitModel>> getUnitListForBuildingFloorResidentAvailable(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .get()
        .then((x) {
      print(x.docs);
      return UnitModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<List<UnitModel>> getUnitListForResidentAvailableForOwner(
      {@required String entitytype,
      @required String entityid,
      @required List<String> unitlist}) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .get()
        .then((x) {
      print(x.docs);
      return UnitModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future<UnitModel> getUnit({
    @required String entitytype,
    String entityid,
    @required String unitID,
  }) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .doc(unitID)
        .get()
        .then((x) {
      // if (x.data() == null) return null;
      return UnitModel.fromJson(x.data(), x.id);
    });
  }

  static Future<void> updateUnit(
      {@required String entitytype,
      String entityid,
      UnitModel unitModel}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("$entitytype/$entityid/UNITS")
          .doc(unitModel.unitID)
          .update(unitModel.toJson());
    } catch (e) {
      print(e); // I Don't Know
    }
  }

  Future<void> addNewUnit(
      {@required String entitytype,
      String entityid,
      UnitModel unitModel}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("$entitytype/$entityid/UNITS")
          .doc(unitModel.unitID)
          .set(unitModel.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future newUnitRequest(
      {@required String entitytype,
      String entityid,
      UnitModel unitModel}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'NewUnitRequestModified',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      'unitdata': {
        'version': 1,
        'address': unitModel.address,
        'buildingname': unitModel.buildingName,
        'floornum': unitModel.floorNum,
        'numvisitorparking': unitModel.numVisitorParking,
        'numfixedparking': unitModel.numFixedParking,
        'channel': null
      },
      'entitytype': entitytype,
      'entityid': entityid,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<void> removeUnit(
      {@required String entitytype,
      String entityid,
      @required UnitModel unitModel}) async {
    await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/UNITS")
        .doc(unitModel.unitID)
        .delete();
  }
}
