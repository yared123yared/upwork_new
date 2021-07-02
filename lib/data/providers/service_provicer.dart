import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class ServiceProvider {
  Future<ServiceModel> getService(UserService service) async {
    print("service id check: ${service.serviceID}");

    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/${service.serviceID}")
        .get()
        .then((x) {
      return ServiceModel.fromJson(
        x.data(),
        service.roles,
        service.serviceID,
      );
    });
  }

  Future<ServiceModel> fetchService(String id) async {
    var result =
        await FirebaseFirestore.instance.doc("SERVICEPROVIDERINFO/$id").get();
    return ServiceModel.fromJson(result.data(), [], id);
  }

  Future<List<ServiceModel>> getServiceList() async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO")
          .get()
          .then((x) => x.docs
              .map((x) => ServiceModel.fromJson(x.data(), ["Manager"], x.id))
              .toList());
    } catch (e) {
      throw e;
    }
  }

  Future<List<ServiceModel>> endUserGetServiceListForServiceType(
      String servicetype,
      double latitube,
      double longitude,
      int distanceinmeter,
      int limit) async {
    try {
      List<String> mk = servicetype.split(',');
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO")
          .where('servicetype', arrayContainsAny: ['GROCERY'])
          .get()
          .then((x) => x.docs
              .map((x) => ServiceModel.fromJson(x.data(), [], x.id))
              .toList());
    } catch (e) {
      throw e;
    }
  }

  Stream<ServiceModel> getServiceAsStream(String id) {
    try {
      final serviceCollection =
          FirebaseFirestore.instance.collection('SERVICEPROVIDERINFO');

      Stream<ServiceModel> str =
          serviceCollection.doc(id).snapshots().map((obj) {
        Map data = obj.data();
        return ServiceModel.fromJson(data, [], obj.id);
      });
      return str;
    } on PlatformException catch (e) {
      print("getServiceAsStream $e");
      return null;
    } catch (err) {
      print("getServiceAsStream $err");
      return null;
    }
  }

  Future<List<ServiceModel>> endUserGetServiceListForIDS(
      List<String> docids) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO")
          .get()
          .then((x) => x.docs
              .map((x) => ServiceModel.fromJson(x.data(), ["Manager"], x.id))
              .toList());
    } catch (e) {
      throw e;
    }
  }

  Future<void> updateServiceProvider(
      {@required ServiceModel serviceModel}) async {
    serviceModel.toJson().forEach((key, value) {
      print("Service update request $key  =>  $value");
    });
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/${serviceModel.serviceID}")
        .update(serviceModel.toJson());
  }

  Future<void> createServiceProvider({
    @required ServiceModel serviceModel,
  }) async {
    final HttpsCallable newEntityCreateRequest = FirebaseFunctions.instance
        .httpsCallable('NewEntityCreateRequestModified');

    try {
      final HttpsCallableResult result =
          await newEntityCreateRequest.call(<String, dynamic>{
        'uid': serviceModel.createdBy,
        'entitydata': serviceModel.toJson(),
        'entitytype': "SERVICEPROVIDERINFO",
      });
      print(result.data);
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
      throw e;
    }
  }

  Future<Map<String, List<String>>> getFilterForServiceType(
      String servicetype, UserModel curuser) {
    Map<String, List<String>> empty = Map<String, List<String>>();
    Map<String, List<String>> bn = Map<String, List<String>>();
    bn["val1"] = null;
    bn["val2"] = null;
    bn["val3"] = null;
    List<String> sk = [];
    sk.add("child1");
    sk.add("child2");
    sk.add("child3");
    sk.add("child4");
    bn["val4"] = sk;
    bn["val5"] = sk;

    return Future.delayed(Duration.zero, () => bn);
  }

  Future<ComplexModel> getComplexDetail({String id}) {
    return FirebaseFirestore.instance.doc("COMPLEXES/$id").get().then((x) {
      return ComplexModel.fromData(x.data(), [], id);
    });
  }

  Future<void> makeEntityDefault({
    String newEntityId,
    UserModel user,
  }) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'GenericQueryActionRequest',
    );
    print("CloudFunction MakeEntityDefault" + "end");

    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": "s",
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
  }
}
