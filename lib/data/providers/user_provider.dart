import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:flutter/material.dart';

class UserProvider {
  UserProvider({@required this.api});

  ApiService api;

  Future<dynamic> uploadFileStorage({
    final String uploadType,
    final String variantName,
    final String fileName,
    String entityid,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'geturlforstorage',
    );
    print("CloudFunction " + "end");
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "COMPLEXES",
      "entityid": entityid,
      "uploadtype": uploadType,
      "variantname": variantName,
      "filename": fileName,
    });
    print("CloudFunction " + callable.toString());
    //print("CloudFunction " + resp.data.toString());
    return resp;
  }
}
