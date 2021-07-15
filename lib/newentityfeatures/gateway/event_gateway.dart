import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/event_model.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';

class EventGateway {
  static Future submitEventOfferings({
    @required EventModel eventModel,
    @required List<HomeWork> homeWorkList,
    @required RegisteredIdModel listOfRegisteredId,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitEventRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "AefWmZc5Z3HwLhBd6nRU",
        "info": infoForAdd(homeWorkList, listOfRegisteredId),
        "date": 23456,
        "actiontype": "ofr",
        "sessionterm": "2020-2021",
        "virtualroomname": "None"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future updateEventOfferings(
      {@required EventModel eventModel,
      @required List<HomeWork> homeWorkList,
      @required RegisteredIdModel listOfRegisteredId,
      HomeWork newData,
      HomeWork oldData,
      RegisteredIdModel newData1,
      RegisteredIdModel oldData1}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitEventRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "AefWmZc5Z3HwLhBd6nRU",
        "info": infoForUpdate(newData, oldData, newData1, oldData1,
            homeWorkList, listOfRegisteredId),
        "date": 23456,
        "actiontype": "ofr",
        "sessionterm": "2020-2021",
        "virtualroomname": "None"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Map<String, dynamic> infoForAdd(
      List<HomeWork> homeWorkList, RegisteredIdModel listOfRegisteredId) {

      return {
        "evtype": "hw",
        "newval": homeWorkList.map((homework) => homework.toData()).toList(),
        "oldval": "None",
        "vr": listOfRegisteredId.vr
      };

  }

  static Map<String, dynamic> infoForUpdate(
      HomeWork newData,
      HomeWork oldData,
      RegisteredIdModel newData1,
      RegisteredIdModel oldData1,
      List<HomeWork> homeWorkList,
      RegisteredIdModel listOfRegisteredId) {

      return {
        "evtype": "hw",
        "newval": toUpdateData(newData, oldData, newData1, oldData1),
        "oldval": homeWorkList.map((homework) => homework.toData()).toList(),
        "vr": listOfRegisteredId.vr
      };

  }

  static Map<String, dynamic> toUpdateData(HomeWork newData, HomeWork oldData,
      RegisteredIdModel newData1, RegisteredIdModel oldData1) {

      if (oldData.info != newData.info) {
        print("correct: ${oldData.info} and new ${newData.info} ");
      } else {
        print("incorrect: ${oldData.info} and new ${newData.info} ");
      }
      return {
        if (oldData.info != newData.info) 'info': newData.info,
        if (oldData.ofr != newData.ofr) 'ofr': newData.ofr,
      };

  }

  static Future submitEventVirtualRoom(
      {@required EventModel eventModel,
      @required List<HomeWork> homeWorkList,
      @required RegisteredIdModel listOfRegisteredId}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitEventRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "AefWmZc5Z3HwLhBd6nRU",
        "info": infoForAddV(homeWorkList),
        "date": 23456,
        "actiontype": "ofr",
        "sessionterm": "2020-2021",
        "virtualroomname": "None"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future updateEventVirtualRoom(
      {@required EventModel eventModel,
      @required List<HomeWork> homeWorkList,
      @required RegisteredIdModel listOfRegisteredId,
      HomeWork newData,
      HomeWork oldData,
      RegisteredIdModel newData1,
      RegisteredIdModel oldData1}) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'SubmitEventRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "AefWmZc5Z3HwLhBd6nRU",
        "info": infoForUpdate(newData, oldData, newData1, oldData1,
            homeWorkList, listOfRegisteredId),
        "date": 23456,
        "actiontype": "ofr",
        "sessionterm": "2020-2021",
        "virtualroomname": "None"
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Map<String, dynamic> infoForAddV(List<HomeWork> homeWorkList) {

      return {
        "evtype": "hw",
        "newval": homeWorkList.map((homework) => homework.toData()).toList(),
        "oldval": "None",
      };

  }

  static Map<String, dynamic> infoForUpdateV(HomeWork newData, HomeWork oldData,
      List<HomeWork> homeWorkList, RegisteredIdModel listOfRegisteredId) {

      return {
        "evtype": "hw",
        "newval": toUpdateDataV(newData, oldData),
        "oldval": homeWorkList.map((homework) => homework.toData()).toList(),
      };

  }

  static Map<String, dynamic> toUpdateDataV(
      HomeWork newData, HomeWork oldData) {

      if (oldData.info != newData.info) {
        print("correct: ${oldData.info} and new ${newData.info} ");
      } else {
        print("incorrect: ${oldData.info} and new ${newData.info} ");
      }
      return {
        if (oldData.info != newData.info) 'info': newData.info,
        if (oldData.ofr != newData.ofr) 'ofr': newData.ofr,
      };

  }
}
