// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceRequestModel _$_$_ServiceRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceRequestModel(
    adHocVisitorPhoto: json['adHocVisitorPhoto'] as String,
    correspondingName: json['correspondingName'] as String,
    generatedQrCode: json['generatedQrCode'] as String,
    groupReqName: json['groupReqName'] as String,
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    multipleEntryAllowed: json['multipleEntryAllowed'] as bool,
    notesInstructions: json['notesInstructions'] as String,
    phone: json['phone'] as String,
    requestType:
        _$enumDecodeNullable(_$ServiceRequestTypeEnumMap, json['requestType']),
    requestedDate: json['requestedDate'] == null
        ? null
        : DateTime.parse(json['requestedDate'] as String),
    requesterID: json['requesterID'] as String,
    requesterType: json['requesterType'] as String,
    requireNotificationEntry: json['requireNotificationEntry'] as bool,
    serviceRequestorMemberUserId:
        json['serviceRequestorMemberUserId'] as String,
    serviceProviderId: json['serviceProviderId'] as String,
    suspend: json['suspend'] as bool,
    terminate: json['terminate'] as bool,
    qrCodeLink: json['qrCodeLink'] as String,
    unitId: json['unitId'] as String,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    staffInfo: json['staffInfo'] == null
        ? null
        : StaffInfo.fromJson(json['staffInfo'] as Map<String, dynamic>),
    requestID: json['requestID'] as String,
    adhocstate: json['adhocstate'] as String,
  );
}

Map<String, dynamic> _$_$_ServiceRequestModelToJson(
        _$_ServiceRequestModel instance) =>
    <String, dynamic>{
      'adHocVisitorPhoto': instance.adHocVisitorPhoto,
      'correspondingName': instance.correspondingName,
      'generatedQrCode': instance.generatedQrCode,
      'groupReqName': instance.groupReqName,
      'endDate': instance.endDate?.toIso8601String(),
      'multipleEntryAllowed': instance.multipleEntryAllowed,
      'notesInstructions': instance.notesInstructions,
      'phone': instance.phone,
      'requestType': _$ServiceRequestTypeEnumMap[instance.requestType],
      'requestedDate': instance.requestedDate?.toIso8601String(),
      'requesterID': instance.requesterID,
      'requesterType': instance.requesterType,
      'requireNotificationEntry': instance.requireNotificationEntry,
      'serviceRequestorMemberUserId': instance.serviceRequestorMemberUserId,
      'serviceProviderId': instance.serviceProviderId,
      'suspend': instance.suspend,
      'terminate': instance.terminate,
      'qrCodeLink': instance.qrCodeLink,
      'unitId': instance.unitId,
      'startDate': instance.startDate?.toIso8601String(),
      'staffInfo': instance.staffInfo?.toJson(),
      'requestID': instance.requestID,
      'adhocstate': instance.adhocstate,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ServiceRequestTypeEnumMap = {
  ServiceRequestType.VISITOR: 'VISITOR',
  ServiceRequestType.ADHOCVISITOR: 'ADHOCVISITOR',
  ServiceRequestType.RIDE: 'RIDE',
  ServiceRequestType.DELIVERY: 'DELIVERY',
  ServiceRequestType.GATEPASS: 'GATEPASS',
  ServiceRequestType.HOMEHELP: 'HOMEHELP',
};

_$_StaffInfo _$_$_StaffInfoFromJson(Map<String, dynamic> json) {
  return _$_StaffInfo(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_StaffInfoToJson(_$_StaffInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
