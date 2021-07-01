import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

import '../models/appointment_counter_model.dart';

abstract class AbstractAppointmentCounterRepository {
  Stream<AppointmentCounterModel> getAppointmentCounter(
      String serviceId, String ownerId);
}

class AppointmentCounterRepository
    implements AbstractAppointmentCounterRepository {
  ///
  /// GET APPOINTMENT COUNTER
  ///

  @override
  Stream<AppointmentCounterModel> getAppointmentCounter(
      String serviceId, String ownerId) {
    Stream<AppointmentCounterModel> appointmentCounter = FirebaseFirestore
        .instance
        .collection('SERVICEPROVIDERINFO')
        .doc(serviceId)
        .collection('APPOINTMENTCOUNTER')
        .doc(ownerId)
        .snapshots()
        .map(
          (doc) => AppointmentCounterModel.fromFirestore(doc),
        );

    final observable = appointmentCounter.shareValue();
    return observable;
  }

  ///
  /// GET CHECK IN APPOINTMENT COUNTER
  ///

  /*
  //example for Rajesh'slearning
  / get user posts stream
  Stream<List<PostData>> get userPosts {
    return databaseReference
        // .where('uid', isEqualTo: this.user.uid)
        .orderBy('date', descending: true)
        .snapshots()
        .map(_postListFromSnapshot);
  }
  List<PostData> _postListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents
        .where((doc) => doc.data['uid'] == user.uid)
        .map((doc) {
      return PostData(
          date: doc.data['date'] ?? DateTime.now(),
          text: doc.data['text'] ?? '',
          email: doc.data['email'] ?? ''
    }).toList();
  }

   */

  List<AppointmentCounterModel> createDummyData(QuerySnapshot snapshot) {
    List<AppointmentCounterModel> mylist = List<AppointmentCounterModel>();
    int a = 1;
    a = a + 5;
    return mylist;
  }

  Future<List<AppointmentCounterModel>> getCheckInCounterFuture(
      String serviceId, String ownerId, String date, String period) async {
    final HttpsCallable callable =
        FirebaseFunctions.instance.httpsCallable('GenericQueryActionRequest');
    print("CloudFunction " + "end");
    List<AppointmentCounterModel> kindlist = [];
    dynamic resp = await callable.call(<String, dynamic>{
      "entitytype": 'SERVICEPROVIDERINFO',
      "entityid": serviceId,
      "qtype": "GETAPPOINTMENTCOUNTERVALUE",
      "ownerId": ownerId,
      "date": 1609632000,
      "period": period,
    });

    print(resp.data);
    Map<String, dynamic> mdata = Map<String, dynamic>.from(resp.data);
    if (mdata['error'] != null) return kindlist;

    kindlist = List<AppointmentCounterModel>();
    for (dynamic d in mdata['lm']) {
      Map<String, dynamic> m = Map<String, dynamic>.from(d);
      kindlist.add(AppointmentCounterModel.fromData(d));
    }

    return kindlist;
  }

  Stream<List<AppointmentCounterModel>> getCheckInCounter(
      String serviceId, String ownerId, String date, String period) {
    Stream<List<AppointmentCounterModel>> appointmentCounter = FirebaseFirestore
        .instance
        .collection('SERVICEPROVIDERINFO')
        .doc(serviceId)
        .collection('APPOINTMENTCOUNTER')
        .where('ownerId', isEqualTo: ownerId)
        .where('date', isEqualTo: date)
        .where('period', isEqualTo: period)
        .snapshots()
        //.map(createDummyData);

        .map((list) {
      print('Raj1111111111111222222222222222222Raj');
      print(list);
      print('Baj1111111111111222222222222222222Baj');

      var mk = list.docs.map((doc) {
        return AppointmentCounterModel.fromFirestore(doc);
      }).toList();

      if (mk.length == 0) {
        AppointmentCounterModel acm = AppointmentCounterModel();
        acm.ownerId = ownerId;
        acm.date = date;
        acm.period = period;
        //String md =await createAppointmentCounter(acm,serviceId);

      }
      return mk;
    });

    final observable = appointmentCounter.shareValue();
    print('1111111111111222222222222222222');
    //print(observable.value[0].date.length);
    print('1111111111111222222222222222222');
    return observable;
  }

  ///
  /// CREATE APPOINTMENT COUNTER
  ///

  Future<String> createAppointmentCounter(
      AppointmentCounterModel appointmentCounter,
      String serviceProviderId) async {
    try {
      return FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTCOUNTER')
          // .document(appointmentCounter.ownerId)
          .add({
        ...appointmentCounter.toMap(),
      }).then((appointmentCounter) {
        return appointmentCounter.id;
      });
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  ///
  /// CREATE APPOINTMENT COUNTER
  ///

  Future<void> updateAppointmentCounter(
      AppointmentCounterModel appointmentCounter,
      String serviceProviderId) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTCOUNTER')
          .doc(appointmentCounter.ownerId)
          .update({...appointmentCounter.toMapUpdate()});
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }

  Future<void> updateCheckInCounter(
      String serviceProviderId, String documentId, int maxRunningNumber) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTCOUNTER')
          .doc(documentId)
          .update({
        ...AppointmentCounterModel(maxRunningNumber: maxRunningNumber + 1)
            .toMapUpdate()
      });
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }

  Future<void> updateCheckInRunningNumber(String serviceProviderId,
      AppointmentCounterModel appointmentCounter) async {
    try {
      print(serviceProviderId);
      print(appointmentCounter.id);
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTCOUNTER')
          .doc(appointmentCounter.id)
          .update({
        ...AppointmentCounterModel(
          ownerId: appointmentCounter.ownerId,
          runningNumber: appointmentCounter.runningNumber,
          maxRunningNumber: appointmentCounter.maxRunningNumber,
          date: appointmentCounter.date,
          period: appointmentCounter.period,
        ).toMapUpdate()
      });
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }
}
