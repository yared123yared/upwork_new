import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/utils/log.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/material.dart';

class ComplexProvider {
  ComplexProvider({@required this.api});

  ApiService api;

  Future<void> createComplex({ComplexModel complexModel}) async {
    final HttpsCallable newEntityCreateRequest =
        FirebaseFunctions.instance.httpsCallable(
      'NewEntityCreateRequestModified',
    );
    final HttpsCallableResult result =
        await newEntityCreateRequest.call(<String, dynamic>{
      'entitydata': {
        'version': 1,
        'complexName': complexModel.complexName,
        'address': complexModel.address,
        'town': complexModel.town,
        'state': complexModel.state,
        'zipcode': complexModel.zipCode,
        'latitude': complexModel.latitude,
        'longitude': complexModel.longitude,
        "geohash": complexModel.geoHash,
        'complextype': complexModel.complexType,
        'buildingtype': complexModel.buildingType,
        'deviceallocated': complexModel.deviceAllowed,
        'hassecurity': complexModel.hasSecurity,
        'startdate': Utility.toTimeStamp(dateTime: complexModel.startDate),
        'enddate': Utility.toTimeStamp(dateTime: complexModel.endDate),
        'isactive': complexModel.isActive,
        'createdby': complexModel.createdBy,
        'createddatetime': Utility.toTimeStamp(dateTime: DateTime.now()),
      },
      'entitytype': "COMPLEXES",
    });
    Log.v("Responde : ${result.data}");
  }

  Future<ComplexModel> getComplexDetail({String id}) {
    return FirebaseFirestore.instance.doc("COMPLEXES/$id").get().then((x) {
      return ComplexModel.fromData(x.data(), [], id);
    });
  }

  Future<void> updateComplex({ComplexModel complexModel}) async {
    print("request  ${complexModel.toData()}");
    return await FirebaseFirestore.instance
        .doc("COMPLEXES/${complexModel.complexID}")
        .update(complexModel.toData());
  }

  Future<void> setDefaultComplexEntity({
    @required String newEntityId,
    @required UserModel user,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'GenericQueryActionRequest',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "c",
      "entityid": newEntityId,
      "userid": user.userID,
      "qtype": "MAKEENTITYDEFAULT",
    });
    UserEntity _userentity;
    String mydocid = "USERINFO/" + user.userID;
    _userentity = await FirebaseFirestore.instance
        .doc(mydocid)
        .get()
        .then((x) => UserEntity.fromData(x.data()));

    UserEntity.setDefaultEntity(_userentity, user);
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }
}
