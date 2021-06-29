import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';

import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';
import 'package:complex/newentityfeatures/Models/complexmodel.dart';

class ServiceGateway {
  // ignore: missing_return
  static Future<ServiceModel> getService(UserService service) async {
    try {
      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/${service.serviceID}")
          .get()
          .then((x) {
        return ServiceModel.fromJson(
            x.data(), service.roles, service.serviceID);
      });
    } catch (e) {
      print('service error: $e');
    }
  }

  static Future<void> removeServiceRequestGateway(
      ServiceRequestModel service, String docId) async {
    return await FirebaseFirestore.instance
        .doc("COMPLEXES/icIns8DSaH6C81Q4h2Pz/SERVICEREQUESTS/$docId")
        .update({
      "data": FieldValue.arrayRemove([service.toJson()])
    });
  }

  static Future addNewServiceRequest({ServiceRequestModel service}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("COMPLEXES/icIns8DSaH6C81Q4h2Pz/")
          .doc(service.correspondingName)
          .set(service.toJson());
    } catch (e) {
      print(e);
    }
  }

  static Future updateServiceRequest({ServiceRequestModel service}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("COMPLEXES/icIns8DSaH6C81Q4h2Pz/SERVICEREQUESTS")
          .doc(service.correspondingName)
          .update(service.toJson());
    } catch (e) {
      print(e); // I Don't Know
    }
  }
}
