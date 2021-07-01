import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/user_complex.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/qrcode_model.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/family_member.dart';

class ComplexGateway {
  static Future<ComplexModel> getComplex({
    @required UserComplex complex,
  }) async {
    return await FirebaseFirestore.instance
        .doc("COMPLEXES/${complex.complexID}")
        .get()
        .then((x) {
      return ComplexModel.fromData(x.data(), complex.roles, complex.complexID);
    });
  }

  static Future<ComplexModel> fetchComplex(String id) {
    return FirebaseFirestore.instance.doc("COMPLEXES/$id").get().then((x) {
      return ComplexModel.fromData(x.data(), [], id);
    });
  }

  static Future<QRCodeModel> getQRCodeData({
    @required String entityType,
    @required String entityId,
    @required String qrCode,
  }) =>
      FirebaseFirestore.instance
          .doc("$entityType/$entityId/QRCODE/$qrCode")
          .get()
          .then((x) {
        var data = x.data();
        if (data == null) return null;
        return QRCodeModel.fromJson(data);
      });

  static Future<ComplexModel> getServiceProvider(
      {@required UserService mService}) async {
    return await FirebaseFirestore.instance
        .doc("SERVICEPROVIDERINFO/${mService.serviceID}")
        .get()
        .then((x) {
      return ComplexModel.fromData(
          x.data(), mService.roles, mService.serviceID);
    });
  }

  static Future<void> createComplex(
      {@required ComplexModel complexModel}) async {
    final HttpsCallable newEntityCreateRequest =
        FirebaseFunctions.instance.httpsCallable(
      'NewEntityCreateRequestModified',
    );
    // try {
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
        'startdate': HelpUtil.toTimeStamp(dateTime: complexModel.startDate),
        'enddate': HelpUtil.toTimeStamp(dateTime: complexModel.endDate),
        'isactive': complexModel.isActive,
        'createdby': complexModel.createdBy,
        'createddatetime': HelpUtil.toTimeStamp(dateTime: DateTime.now()),
        //'serversidetimestamp':FieldValue.serverTimestamp(),
      },
      'entitytype': "COMPLEXES",
    });
    print(result.data);
    // } on CloudFunctionsException catch (e) {
    //   print('caught firebase functions exception');
    //   print(e.code);
    //   print(e.message);
    //   print(e.details);
    // } catch (e) {
    //   print('caught generic exception');
    //   print(e);
    // }
  }

  static Future<void> updateComplex(
      {@required ComplexModel complexModel}) async {
    return await FirebaseFirestore.instance
        .doc("COMPLEXES/${complexModel.complexID}")
        .update(complexModel.toData());
  }

  static Future<List<String>> getDocID({
    @required UserComplex complex,
  }) async {
    List<String> docIDList = [];
    await FirebaseFirestore.instance
        .collection("COMPLEXES/${complex.complexID}/UNITGRPMEM")
        .get()
        .then((x) {
      x.docs.forEach((element) {
        docIDList.add(element.id.toString());
        print(element.id.toString());
      });
    });

    return docIDList;
  }

  static Future<void> addFamilyMember(
      {@required FamilyMember member,
      @required bool giveAccess,
      @required String entitytype,
      String entityid}) async {
    // ShareSubscriptionForResidentUnitRequest
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'ShareSubscriptionForResidentUnitRequestModified',
    );
    HttpsCallableResult resp = await callable.call(<String, dynamic>{
      'actiontype': giveAccess ? 'share' : 'unshare',
      'sharewithuserid': member.userId,
      'residentdetailsid': member.modelId,
      'entitytype': entitytype,
      'entityid': entityid,
    });

    if (resp.data['id'] != null) {
      if (giveAccess)
        await FirebaseFirestore.instance
            .collection("${entitytype}/${entityid}/FamilyMembers")
            .doc("${member.modelId}-${member.email}")
            .set(member.toJson());
      else
        await FirebaseFirestore.instance
            .collection("${entitytype}/${entityid}/FamilyMembers")
            .doc("${member.modelId}-${member.email}")
            .delete();
    } else {}
  }

  static Future<List<FamilyMember>> getFamilyMembersList({
    @required String entitytype,
    String entityid,
    @required List<String> units,
    @required String userId,
  }) async {
    return FirebaseFirestore.instance
        .collection("${entitytype}/${entityid}/FamilyMembers")
        .where('modelId', whereIn: units)
        .get()
        .then((value) {
      return value.docs.map((e) => FamilyMember.fromJson(e.data())).toList();
    });
  }
}

// static Future removeAppAccessForUnitMemberRequest() async {
//    final FirebaseUser user = await FirebaseAuth.instance.currentUser();
//    final uid = user.uid;
//    print("CloudFunction " + "uid: " + uid);
//    final HttpsCallable callable = CloudFunctions.instance.getHttpsCallable(
//      functionName: 'ShareSubscriptionForResidentUnit',
//    );
//    print("CloudFunction " + "end");
//    dynamic resp = await callable.call(<String, dynamic>{
//      'actiontype': 'unshare',
//      'sharewithuserid': 'owner1',
//      'residentdetailsid': 'ratyE78RplVEJTUPZOftKKRD8Yu1',
//      'entitytype': "COMPLEXES",
//      'entityid': "gAw0j2JLxwr3RfxqaiLH",
//    });
//    print("CloudFunction " + callable.toString());
//    print("CloudFunction " + resp.data.toString());
//  }
