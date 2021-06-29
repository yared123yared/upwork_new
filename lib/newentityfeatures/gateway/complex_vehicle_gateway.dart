import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';


class ComplexVehicleGateway {
  static Future<List<ComplexVehicleModel>> getVehicleList({
    @required String entitytype,
    @required String entityid,

  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/COMPLEXVEHICLEREG")
          .get()
          .then((x) {
        return ComplexVehicleModel.listFromJson(
            x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<ComplexVehicleModel>> getMyVehicleList({
    @required String entitytype ,String entityid,
    @required List<String> myUnits,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/COMPLEXVEHICLEREG")
          .where('unitaddress', whereIn: myUnits)
          .get()
          .then((x) {
        return ComplexVehicleModel.listFromJson(
            x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future newComplexVehicleCreateRequest(
      {@required ComplexVehicleModel vehicle,
      @required UserModel user,
        @required String entitytype ,String entityid}) async {
    final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
      'NewComplexVehicleCreateRequestModified',
    );
    dynamic resp = await callable.call(<String, dynamic>{
      'vehicledata': {
        'unitaddress': vehicle.unitAddress,
        'ownername': vehicle.ownerName,
        'appuserid': user.userID,
        'numberplate': vehicle.numberPlate,
        'registrationnum': vehicle.registrationNum,
        'isstaff': vehicle.isStaff,
        'vehicletype': vehicle.vehicleType,
        'photolink': vehicle.photoLink,
        'startdate': HelpUtil.toTimeStamp(dateTime: vehicle.startDate),
        'enddate': HelpUtil.toTimeStamp(dateTime: vehicle.endDate),
        'isactive': vehicle.isActive,
        'isvisitor': vehicle.isVisitor,
        'username': vehicle.userName,
        'userphonenum': vehicle.userPhoneNum,
        'ispickanddrop': vehicle.isPickAndDrop
      },
      'entitytype': entitytype,
      'entityid': entityid,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<void> updateVehicle(
      {@required String entitytype ,String entityid,
      @required ComplexVehicleModel oldVehicle,
      @required ComplexVehicleModel newVehicle,
      @required UserModel user}) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('ComplexVehicleUpdateRequestModified');

    newVehicle.appUserId = oldVehicle.appUserId;

    dynamic resp = await callable.call(<String, dynamic>{
      'myolddata': toData(vehicle: oldVehicle, userID: user.userID),
      'mynewdata': newVehicle.toJson(),
      'isvisitor': oldVehicle.isVisitor,
      'userid': oldVehicle.appUserId,
      'byuserid': user.userID,
      'residentdetailsid': oldVehicle.unitAddress,
      'numplate': oldVehicle.numberPlate,
      'entitytype': entitytype,
      'entityid': entityid,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }

  static Future<void> deleteVehicle(
      {@required String entitytype ,String entityid,
        @required String numplate,

        @required UserModel user}) async {
    final HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable('ComplexVehicleUpdateRequestModified');



    dynamic resp = await callable.call(<String, dynamic>{
      'byuserid': user.userID,

      'numplate': numplate,
      'entitytype': entitytype,
      'entityid': entityid,
    });
    print("CloudFunction " + callable.toString());
    print("CloudFunction " + resp.data.toString());
  }


  static Map<String, dynamic> toData(
      {@required ComplexVehicleModel vehicle, @required String userID}) {
    return {
      'version': 1,
      'unitaddress': vehicle.unitAddress,
      'ownername': vehicle.ownerName,
      'appuserid': userID,
      'numberplate': vehicle.numberPlate,
      'registrationnum': vehicle.registrationNum,
      'isstaff': vehicle.isStaff,
      'vehicletype': vehicle.vehicleType,
      'photolink': vehicle.photoLink,
      'startdate': HelpUtil.toTimeStamp(dateTime: vehicle.startDate),
      'enddate': HelpUtil.toTimeStamp(dateTime: vehicle.endDate),
      'isactive': vehicle.isActive,
      'isvisitor': vehicle.isVisitor,
      'username': vehicle.userName,
      'userphonenum': vehicle.userPhoneNum,
      'ispickanddrop': vehicle.isPickAndDrop
    };
  }

  static Map<String, dynamic> toUpdateData(
      {@required ComplexVehicleModel newVehicle,
      @required ComplexVehicleModel oldVehicle}) {
    return {
      if (oldVehicle.endDate != newVehicle.startDate)
        'enddate': HelpUtil.toTimeStamp(dateTime: newVehicle.endDate),
    };
  }
}
