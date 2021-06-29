import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';


class AppointmentModel {
  String id;
  String slotConfigurationType;
  String appointmentType;
  String serviceType;
  orderinfomodel mycartprods;
  String stuffId;
  bool onCreation; // appointment is now on creation ?
  String customerName;
  String customerLastName;
  String customerEmail;
  String customerContactNumber;
  String promoCode;
  String dayOfWeek;
  String startDate; //DateTime
  String slotDuration; //DateTime
  bool isActive; // 24 hours after creation -> inactive
  String customerId;
  String serviceProviderName;
  String serviceProviderId;
  int queueRunningNumber;
  bool waiting;
  String startTime; //Only Time
  bool assigned;
  String period;
  String homeAddress;
  bool instore;
  DateTime startdatetimestamp;

  AppointmentModel({
    this.id,
    this.slotConfigurationType,
    this.appointmentType,
    this.serviceType,
    this.stuffId,
    this.onCreation,
    this.customerName,
    this.customerLastName,
    this.customerEmail,
    this.customerContactNumber,
    this.promoCode,
    this.dayOfWeek,
    this.startDate,
    this.slotDuration,
    this.isActive,
    this.customerId,
    this.serviceProviderName,
    this.serviceProviderId,
    this.queueRunningNumber,
    this.waiting,
    this.startTime,
    this.assigned,
    this.period,
    this.homeAddress,
    this.mycartprods,
  });

  factory AppointmentModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();
    return AppointmentModel(
      id: doc.id,
      slotConfigurationType: data['slotConfigurationType'] ?? '',
      appointmentType: data['appointmentType'] ?? '',
      serviceType: data["serviceType"] ?? '',
      stuffId: data['stuffId'] ?? '',
      onCreation: data['onCreation'] ?? false,
      customerName: data['customerName'] ?? '',
      customerLastName: data['customerLastName'] ?? '',
      customerEmail: data['customerEmail'] ?? '',
      customerContactNumber: data['customerContactNumber'] ?? '',
      promoCode: data['promoCode'] ?? '',
      dayOfWeek: data['dayOfWeek'] ?? '',
      startDate: data['startDate'] ?? '',
      slotDuration: data['slotDuration'] ?? '',
      isActive: data['isActive'] ?? true,
      customerId: data['customerId'] ?? '',
      serviceProviderName: data['serviceProviderName'] ?? '',
      serviceProviderId: data['serviceProviderId'] ?? '',
      queueRunningNumber: data['queueRunningNumber'] ?? 0,
      waiting: data['waiting'] ?? false,
      startTime: data['startTime'] ?? '',
      assigned: data['assigned'] ?? false,
      period: data['period'] ?? '',
      homeAddress: data['homeAddress'] ?? '',

      mycartprods: data['mycartprods'] != null ?   orderinfomodel.fromJson(data['mycartprods'])       : null,
    );
  }

  Map<String, dynamic> toMapUpdate() {
    return {
      "serviceProviderName": serviceProviderName,
      "slotConfigurationType": slotConfigurationType,
      "appointmentType": appointmentType,
      "serviceType": serviceType,
      "stuffId": stuffId,
      "onCreation": onCreation,
      "customerName": customerName,
      "customerLastName": customerLastName,
      "customerEmail": customerEmail,
      "customerContactNumber": customerContactNumber,
      "promoCode": promoCode,
      "dayOfWeek": dayOfWeek,
      "startDate": startDate,
      "slotDuration": slotDuration,
      "isActive": isActive,
      "customerId": customerId,
      "serviceProviderId": serviceProviderId,
      "queueRunningNumber": queueRunningNumber,
      "waiting": waiting,
      "startTime": startTime,
      "assigned": assigned,
      "period": period,
      "homeAddress": homeAddress,
      //"mycartprods": mycartprods,
      "mycartprods": mycartprods != null
          ? mycartprods.toJson()
          : null,
    }..removeWhere((key, value) => value == null);
  }

  Map<String, dynamic> toMap() {
    return {
      "slotConfigurationType": slotConfigurationType,
      "appointmentType": appointmentType,
      "serviceType": serviceType,
      "stuffId": stuffId,
      "onCreation": onCreation,
      "customerName": customerName,
      "customerLastName": customerLastName,
      "customerEmail": customerEmail,
      "customerContactNumber": customerContactNumber,
      "promoCode": promoCode,
      "dayOfWeek": dayOfWeek,
      "startDate": startDate,
      "slotDuration": slotDuration,
      "isActive": isActive,
      "customerId": customerId,
      "serviceProviderName": serviceProviderName,
      "serviceProviderId": serviceProviderId,
      "queueRunningNumber": queueRunningNumber,
      "waiting": waiting,
      "startTime": startTime,
      "assigned": assigned,
      "period": period,
      "homeAddress": homeAddress,
    };
  }
}
