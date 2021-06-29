import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

import '../../model/models.dart';
// import '../../model/models/relation.dart';
import 'registered_user_repository.dart';

class VehicleRelationRepository {
  static final _firestore = FirebaseFirestore.instance;

  static Future<List<Relation>> fetchRelations(
      {@required String serviceId}) async {
    final docs = await _firestore
        .collection('SERVICEPROVIDERINFO/$serviceId/TRIPCUTVEHSTAFFREL')
        .get();

    return Relation.listFromJson(docs.docs);
  }

  static Future<void> addRelation(
      {@required Relation relation, @required serviceId}) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('TripCutVehicleRelation');
    dynamic response = await callable.call(<String, dynamic>{
      'entityid': serviceId,
      'entitytype': 'SERVICEPROVIDERINFO',
      'actiontype': 'add',
      'newdata': relation.toJson(),
      'relationid': null,
      'olddata': null
    });
    print(response);
  }

  static Future<void> updateRelation({
    @required Relation relation,
    @required serviceId,
  }) async {
    final oldRelationDoc = await _firestore
        .doc('SERVICEPROVIDERINFO/$serviceId/TRIPCUTVEHSTAFFREL/${relation.id}')
        .get();
    final oldRelation = Relation.fromJson(
      json: oldRelationDoc.data(),
      docId: oldRelationDoc.id,
    );

    final diffRelationMap =
        _difference(oldRelation: oldRelation, newRelation: relation);
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'TripCutVehicleRelation',
    );
    print('relation id --> ${relation.id}');
    dynamic response = await callable.call(<String, dynamic>{
      'entityid': serviceId,
      'entitytype': 'SERVICEPROVIDERINFO',
      'actiontype': 'update',
      'relationid': relation.id,
      'newdata': diffRelationMap,
      'olddata': oldRelation.toJson()
    });
    print(response);
  }

  static Map<String, dynamic> _difference(
      {Relation oldRelation, Relation newRelation}) {
    final diffMap = Map<String, dynamic>();
    if (oldRelation.isActive != newRelation.isActive) {
      diffMap['isactive'] = newRelation.isActive;
    }
    if (oldRelation.endDate != newRelation.endDate) {
      diffMap['enddate'] = newRelation.endDate;
    }
    if (oldRelation.startDate != newRelation.startDate) {
      diffMap['startdate'] = newRelation.startDate;
    }
    if (oldRelation.vehicleModel != newRelation.vehicleModel) {
      diffMap['vehicle'] = newRelation.vehicleModel.toJson();
    }
    if (oldRelation.staff1 != newRelation.staff1) {
      diffMap['staff1'] = newRelation.staff1.toJson();
    }
    if (oldRelation.staff2 != newRelation.staff2) {
      diffMap['staff1'] = newRelation.staff2.toJson();
    }
    if (oldRelation.tripCut != newRelation.tripCut) {
      diffMap['tripcut'] = newRelation.tripCut.toJson();
    }
    if (oldRelation.name != newRelation.name) {
      diffMap['name'] = newRelation.name;
    }
    print('diff map -> $diffMap');
    return diffMap;
  }

  static Future<void> deleteRelation(
      {@required Relation relation, @required serviceId}) async {
    final HttpsCallable callable =FirebaseFunctions.instance.httpsCallable(
      'TripCutVehicleRelation',
    );
    dynamic response = await callable.call(<String, dynamic>{
      'entityid': serviceId,
      'entitytype': 'SERVICEPROVIDERINFO',
      'actiontype': 'delete',
      'relationid': relation.id,
      'newdata': null,
      'olddata': null
    });
    if (response['id'] == null) {
      throw response['error'];
    }
  }

  static Future<List<TripCutShort>> findTripCut(
      {@required String dayOfWeek, @required String serviceId}) async {
    final docs = await _firestore
        .collection('SERVICEPROVIDERINFO/$serviceId/TRIPCUTS')
        .where('dayofweek', isEqualTo: dayOfWeek)
        .get();

    return TripCutShort.listFromJson(docs.docs);
  }

  static Future<List<RegisteredUser>> findStaff({
    @required String name,
    @required String serviceId,
  }) async {
    return RegisteredUserRepo.registeredUser(serviceId).then((value) =>
        value.where((element) => element.name.contains(name)).toList());
    // final docs = await _firestore
    //     .collection('SERVICEPROVIDERINFO/$serviceId/TRIPREGISTEREDUSERS')
    //     .where('name', isEqualTo: name)
    //     .get();
    // return Staff.listFromJson(docs.documents);
  }

  static Future<List<Vehicle>> findVehicle(
      {@required String numberPlate, @required String serviceId}) async {
    final docs = await _firestore
        .collection('SERVICEPROVIDERINFO/$serviceId/REGISTEREDVEHICLES')
        .where('Numberplate', isEqualTo: numberPlate.toUpperCase())
        .get();

    return Vehicle.listFromJson(docs.docs);
  }
}
