import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

import '../models/models.dart';

abstract class AbstractAppointmentsRepository {
  Future<void> createAppointment(AppointmentModel appointment);

  Future<void> updateAppointment(AppointmentModel appointment);

  Future<void> editAppointment(AppointmentModel appointment);

  Future<void> deleteAppointment(
    String serviceProviderId,
    String appointmentId,
  );
}

class AppointmentsRepository implements AbstractAppointmentsRepository {
  // final appointmentsCollection = FirebaseFirestore.instance
  //     .collection('SERVICEPROVIDERINFO')
  //     // ignore: deprecated_member_use
  //     .document('tI7MXfOpg7fu81QOg4y0')
  //     .collection('APPOINTMENTS');

  ///
  /// CREATE APPOINTMENT
  ///

  Future<String> createAppointment(AppointmentModel appointment) async {
    try {
      return FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(appointment.serviceProviderId)
          .collection('APPOINTMENTS')
          .add(appointment.toMap())
          .then((appointment) {
        return appointment.id;
      });
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  ///
  /// UPDATE APPOINTMENT
  ///

  Future<void> updateAppointment(AppointmentModel appointment) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(appointment.serviceProviderId)
          .collection('APPOINTMENTS')
          .doc(appointment.id)
          .update({...appointment.toMapUpdate()});
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }

  ///
  /// EDIT APPOINTMENT
  ///

  Future<void> editAppointment(AppointmentModel appointment) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(appointment.serviceProviderId)
          .collection('APPOINTMENTS')
          .doc(appointment.id)
          .update({...appointment.toMap()});
    } on PlatformException catch (e) {
      print(e.message);
      throw e;
    }
  }

  ///
  /// DELETE APPOINTMENT
  ///

  Future<void> deleteAppointment(
      String serviceProviderId, String appointmentId) async {
    try {
      await FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .doc(appointmentId)
          .delete();
    } on PlatformException catch (e) {
      print(e.message);
      return null;
    }
  }

  ///
  /// GET APPOINTMENT
  ///

  Stream<AppointmentModel> getAppointment(
    String appointmentId,
    String serviceproviderid,
  ) {
    try {
      Stream<AppointmentModel> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceproviderid)
          .collection('APPOINTMENTS')
          .doc(appointmentId)
          .snapshots()
          .map((appointmentDoc) {
        return AppointmentModel.fromFirestore(appointmentDoc);
      });

      final observable = appointments.shareValue();
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
  /// GET CHECK IN APPOINTMENTS (UNASSIGNED)
  ///

  Stream<List<AppointmentModel>> getUnassignedQueue(String serviceProviderId) {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('startDate', isEqualTo: today)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: false)
          // TODO: Sort check in appointments by time
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET CHECK IN APPOINTMENTS (USER FLOW)
  ///

  Stream<List<AppointmentModel>> getAllStaffCheckIns(
      String staffId, String serviceProviderId, List<String> periodList) {
    String day = periodList[0].substring(0, 4) +
        '/' +
        periodList[0].substring(5, 7) +
        '/' +
        periodList[0].substring(8, 10);
    String period = periodList[1];

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .where('stuffId', isEqualTo: staffId)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET ALL SERVICE ASSIGNED CHECK INS FOR A SPECIFIC DAY AND SPECIFIC PERIOD
  ///

  Stream<List<AppointmentModel>> getAllServicePeriodAssignedCheckIns(
      String staffId, String serviceProviderId, List<String> periodList) {
    String day = periodList[0].substring(0, 4) +
        '/' +
        periodList[0].substring(5, 7) +
        '/' +
        periodList[0].substring(8, 10);
    String period = periodList[1];

    // print("day : $day");
    // print("period : $period");

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .where('stuffId', isEqualTo: null)
          .orderBy('queueRunningNumber')
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET ALL CHECK IN APPOINTMENTS OF SPECIFIC SERVICE PROVIDER
  ///

  Stream<List<AppointmentModel>> getAllServiceCheckIns(
      String serviceProviderId) {
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('startDate', isEqualTo: today)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .orderBy('queueRunningNumber')
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET FIXED TIME APPOINTMENTS (CALENDAR)
  ///

  Stream<List<AppointmentModel>> getFixedTime(
      String serviceProviderId, String startDate) {
    String date;
    if (startDate.substring(0, 1) == '0') {
      date = startDate.substring(1, startDate.length);
    } else {
      date = startDate;
    }

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'fixedTime')
          .where('startDate', isEqualTo: date)
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET HOME VISIT APPOINTMENTS (CALENDAR)
  ///

  Stream<List<AppointmentModel>> getHomeVisit(
      String serviceProviderId, String startDate) {
    String date;
    if (startDate.substring(0, 1) == '0') {
      date = startDate.substring(1, startDate.length);
    } else {
      date = startDate;
    }

    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'homeVisit')
          .where('startDate', isEqualTo: date)
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  Stream<List<AppointmentModel>> getAllServiceFixedTime(
      String serviceProviderId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'fixedTime')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  Stream<List<AppointmentModel>> getAllServiceHomeVisit(
      String serviceProviderId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'homeVisit')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  Stream<List<AppointmentModel>> getAppointments(String serviceProviderId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  Stream<List<AppointmentModel>> getAllStaffFixedTime(
      String serviceProviderId, String stuffId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'fixedTime')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('stuffId', isEqualTo: stuffId)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }

  Stream<List<AppointmentModel>> getAllStaffHomeVisit(
      String serviceProviderId, String stuffId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'homeVisit')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('stuffId', isEqualTo: stuffId)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET ALL SERVICE PROVIDER CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD
  ///

  Stream<List<AppointmentModel>> getAllPeriodServiceCheckIns(
      String serviceProviderId, String day, String period) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .where('stuffId', isEqualTo: null)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });

      final observable = appointments.shareValue();
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
  /// GET ALL SERVICE PROVIDER CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD, THAT ARE STILL UNASSIGNED
  ///

  Stream<List<AppointmentModel>> getAllPeriodServiceUnassignedCheckIns(
      String serviceProviderId, String day, String period) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: false)
          .where('stuffId', isNull: true)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });
      final observable = appointments.shareValue();
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
  /// GET ALL SERVICE PROVIDER CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD, THAT ARE STILL UNASSIGNED
  ///

  Stream<List<AppointmentModel>> getAllPeriodServiceAssignedCheckIns(
      String serviceProviderId, String day, String period) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .where('stuffId', isNull: true)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .orderBy('queueRunningNumber')
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });
      final observable = appointments.shareValue();
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
  /// GET ALL STAFF CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD, THAT ARE STILL UNASSIGNED
  ///

  Stream<List<AppointmentModel>> getAllPeriodStuffUnassignedCheckIns(
      String serviceProviderId, String day, String period, String stuffId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: false)
          .where('stuffId', isEqualTo: stuffId)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });
      final observable = appointments.shareValue();
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
  /// GET ALL STAFF CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD, THAT ARE STILL UNASSIGNED
  ///

  Stream<List<AppointmentModel>> getAllPeriodStuffAssignedCheckIns(
      String serviceProviderId, String day, String period, String stuffId) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: true)
          .where('stuffId', isEqualTo: stuffId)
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .orderBy('queueRunningNumber')
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });
      final observable = appointments.shareValue();
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
  /// GET ALL SERVICE PROVIDER CHECK-IN APPOINTMENTS FOR A CHOSEN DAY AND PERIOD, THAT ARE STILL UNASSIGNED
  ///

  Stream<List<AppointmentModel>> getAllPeriodServiceUnassignedCheckInsWithStaff(
      String serviceProviderId, String day, String period) {
    try {
      Stream<List<AppointmentModel>> appointments = FirebaseFirestore.instance
          .collection('SERVICEPROVIDERINFO')
          .doc(serviceProviderId)
          .collection('APPOINTMENTS')
          .where('appointmentType', isEqualTo: 'checkIn')
          .where('onCreation', isEqualTo: false)
          .where('isActive', isEqualTo: true)
          .where('waiting', isEqualTo: true)
          .where('assigned', isEqualTo: false)
          .where('stuffId', isGreaterThanOrEqualTo: ' ')
          .where('startDate', isEqualTo: day)
          .where('period', isEqualTo: period)
          .snapshots()
          .map((list) {
        return list.docs.map((doc) {
          return AppointmentModel.fromFirestore(doc);
        }).toList();
      });
      final observable = appointments.shareValue();
      return observable;
    } on PlatformException catch (e) {
      print(e);
      return null;
    } catch (err) {
      print(err);
      return null;
    }
  }
}
