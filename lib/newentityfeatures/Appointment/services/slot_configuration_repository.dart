import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

import '../models/slot_configuration_model/slot_configuration_model.dart';

class SlotConfigurationRepository {
  // final slotConfigurationCollection = Firestore.instance
  //     .collection('SERVICEPROVIDERINFO')
  //     .document('tI7MXfOpg7fu81QOg4y0')
  //     .collection('APPOINTMENTSLOTCONFIGURATION');
  //
  // ///
  // /// GET SPECIFIC SLOT CONFIGURATION
  // ///

  Stream<SlotConfigurationModel> getSlotConfiguration(
      String serviceProviderId, String slotId) {
    try {
      Stream<SlotConfigurationModel> slotConfigStream = FirebaseFirestore
          .instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTSLOTCONFIGURATION')
          .doc(slotId)
          .snapshots()
          .map((doc) {
        return SlotConfigurationModel.fromFirestore(doc);
      });

      // final SlotConfigurationModel slotConfiguration = SlotConfigurationModel();
      //
      // var slotConfigStream = Stream.value(slotConfiguration);

      final observable = slotConfigStream.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  ///
  /// CREATE SLOT CONFIGURATION
  ///

  static Future<void> createSlotConfigurationPerStore(
      SlotConfigurationModel slotConfiguration, String serviceId) async {
    print('length before firebase');
    print(slotConfiguration.checkIn.periods.length);
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceId)
          .collection('APPOINTMENTSLOTCONFIGURATION')
          .doc(serviceId)
          .set({
        ...slotConfiguration.toMap(),
      });
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  static Future<void> createSlotConfigurationPerEmployee({
    SlotConfigurationModel slotConfiguration,
    String serviceId,
    String staffId,
    String employerName,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceId)
          .collection('APPOINTMENTSLOTCONFIGURATION')
          .doc(staffId)
          .set({
        ...slotConfiguration.toMap(),
        'name': employerName,
      });
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  ///
  /// EDIT SLOT CONFIGURATION
  ///

  // Future<void> editSlotConfiguration(
  //     SlotConfigurationModel slotConfiguration) async {
  //   try {
  //     await slotConfigurationCollection
  //         .document(slotConfiguration.slotConfigurationId)
  //         .updateData({...slotConfiguration.toMap()});
  //   } on PlatformException catch (e) {
  //     print(e.message);
  //     throw e;
  //   }
  // }

  ///
  /// DELETE SLOT CONFIGURATION
  ///

  // Future<void> deleteSlotConfiguration(String slotConfigurationId) async {
  //   try {
  //     await slotConfigurationCollection.document(slotConfigurationId).delete();
  //   } on PlatformException catch (e) {
  //     print(e.message);
  //     return null;
  //   }
  // }
}
