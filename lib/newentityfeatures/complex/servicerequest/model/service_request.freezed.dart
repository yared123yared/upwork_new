// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'service_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
class _$ServiceRequestModelTearOff {
  const _$ServiceRequestModelTearOff();

// ignore: unused_element
  _ServiceRequestModel call(
      {String adHocVisitorPhoto,
      @required String correspondingName,
      @required String generatedQrCode,
      @required String groupReqName,
      @required DateTime endDate,
      @required bool multipleEntryAllowed,
      @required String notesInstructions,
      @required String phone,
      @required ServiceRequestType requestType,
      @required DateTime requestedDate,
      @required String requesterID,
      @required String requesterType,
      @required bool requireNotificationEntry,
      @required String serviceRequestorMemberUserId,
      @required String serviceProviderId,
      @required bool suspend,
      @required bool terminate,
      @required String qrCodeLink,
      @required String unitId,
      @required DateTime startDate,
      @required StaffInfo staffInfo,
      @required String requestID,
      @required String adhocstate}) {
    return _ServiceRequestModel(
      adHocVisitorPhoto: adHocVisitorPhoto,
      correspondingName: correspondingName,
      generatedQrCode: generatedQrCode,
      groupReqName: groupReqName,
      endDate: endDate,
      multipleEntryAllowed: multipleEntryAllowed,
      notesInstructions: notesInstructions,
      phone: phone,
      requestType: requestType,
      requestedDate: requestedDate,
      requesterID: requesterID,
      requesterType: requesterType,
      requireNotificationEntry: requireNotificationEntry,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId,
      serviceProviderId: serviceProviderId,
      suspend: suspend,
      terminate: terminate,
      qrCodeLink: qrCodeLink,
      unitId: unitId,
      startDate: startDate,
      staffInfo: staffInfo,
      requestID: requestID,
      adhocstate: adhocstate,
    );
  }

// ignore: unused_element
  ServiceRequestModel fromJson(Map<String, Object> json) {
    return ServiceRequestModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ServiceRequestModel = _$ServiceRequestModelTearOff();

/// @nodoc
mixin _$ServiceRequestModel {
  String get adHocVisitorPhoto;
  String get correspondingName;
  String get generatedQrCode;
  String get groupReqName;
  DateTime get endDate;
  bool get multipleEntryAllowed;
  String get notesInstructions;
  String get phone;
  ServiceRequestType get requestType;
  DateTime get requestedDate;
  String get requesterID;
  String get requesterType;
  bool get requireNotificationEntry;
  String get serviceRequestorMemberUserId;
  String get serviceProviderId;
  bool get suspend;
  bool get terminate;
  String get qrCodeLink;
  String get unitId;
  DateTime get startDate;
  StaffInfo get staffInfo;
  String get requestID;
  String get adhocstate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ServiceRequestModelCopyWith<ServiceRequestModel> get copyWith;
}

/// @nodoc
abstract class $ServiceRequestModelCopyWith<$Res> {
  factory $ServiceRequestModelCopyWith(
          ServiceRequestModel value, $Res Function(ServiceRequestModel) then) =
      _$ServiceRequestModelCopyWithImpl<$Res>;
  $Res call(
      {String adHocVisitorPhoto,
      String correspondingName,
      String generatedQrCode,
      String groupReqName,
      DateTime endDate,
      bool multipleEntryAllowed,
      String notesInstructions,
      String phone,
      ServiceRequestType requestType,
      DateTime requestedDate,
      String requesterID,
      String requesterType,
      bool requireNotificationEntry,
      String serviceRequestorMemberUserId,
      String serviceProviderId,
      bool suspend,
      bool terminate,
      String qrCodeLink,
      String unitId,
      DateTime startDate,
      StaffInfo staffInfo,
      String requestID,
      String adhocstate});

  $StaffInfoCopyWith<$Res> get staffInfo;
}

/// @nodoc
class _$ServiceRequestModelCopyWithImpl<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  _$ServiceRequestModelCopyWithImpl(this._value, this._then);

  final ServiceRequestModel _value;
  // ignore: unused_field
  final $Res Function(ServiceRequestModel) _then;

  @override
  $Res call({
    Object adHocVisitorPhoto = freezed,
    Object correspondingName = freezed,
    Object generatedQrCode = freezed,
    Object groupReqName = freezed,
    Object endDate = freezed,
    Object multipleEntryAllowed = freezed,
    Object notesInstructions = freezed,
    Object phone = freezed,
    Object requestType = freezed,
    Object requestedDate = freezed,
    Object requesterID = freezed,
    Object requesterType = freezed,
    Object requireNotificationEntry = freezed,
    Object serviceRequestorMemberUserId = freezed,
    Object serviceProviderId = freezed,
    Object suspend = freezed,
    Object terminate = freezed,
    Object qrCodeLink = freezed,
    Object unitId = freezed,
    Object startDate = freezed,
    Object staffInfo = freezed,
    Object requestID = freezed,
    Object adhocstate = freezed,
  }) {
    return _then(_value.copyWith(
      adHocVisitorPhoto: adHocVisitorPhoto == freezed
          ? _value.adHocVisitorPhoto
          : adHocVisitorPhoto as String,
      correspondingName: correspondingName == freezed
          ? _value.correspondingName
          : correspondingName as String,
      generatedQrCode: generatedQrCode == freezed
          ? _value.generatedQrCode
          : generatedQrCode as String,
      groupReqName: groupReqName == freezed
          ? _value.groupReqName
          : groupReqName as String,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      multipleEntryAllowed: multipleEntryAllowed == freezed
          ? _value.multipleEntryAllowed
          : multipleEntryAllowed as bool,
      notesInstructions: notesInstructions == freezed
          ? _value.notesInstructions
          : notesInstructions as String,
      phone: phone == freezed ? _value.phone : phone as String,
      requestType: requestType == freezed
          ? _value.requestType
          : requestType as ServiceRequestType,
      requestedDate: requestedDate == freezed
          ? _value.requestedDate
          : requestedDate as DateTime,
      requesterID:
          requesterID == freezed ? _value.requesterID : requesterID as String,
      requesterType: requesterType == freezed
          ? _value.requesterType
          : requesterType as String,
      requireNotificationEntry: requireNotificationEntry == freezed
          ? _value.requireNotificationEntry
          : requireNotificationEntry as bool,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId == freezed
          ? _value.serviceRequestorMemberUserId
          : serviceRequestorMemberUserId as String,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId as String,
      suspend: suspend == freezed ? _value.suspend : suspend as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      qrCodeLink:
          qrCodeLink == freezed ? _value.qrCodeLink : qrCodeLink as String,
      unitId: unitId == freezed ? _value.unitId : unitId as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      staffInfo:
          staffInfo == freezed ? _value.staffInfo : staffInfo as StaffInfo,
      requestID: requestID == freezed ? _value.requestID : requestID as String,
      adhocstate:
          adhocstate == freezed ? _value.adhocstate : adhocstate as String,
    ));
  }

  @override
  $StaffInfoCopyWith<$Res> get staffInfo {
    if (_value.staffInfo == null) {
      return null;
    }
    return $StaffInfoCopyWith<$Res>(_value.staffInfo, (value) {
      return _then(_value.copyWith(staffInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ServiceRequestModelCopyWith<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  factory _$ServiceRequestModelCopyWith(_ServiceRequestModel value,
          $Res Function(_ServiceRequestModel) then) =
      __$ServiceRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String adHocVisitorPhoto,
      String correspondingName,
      String generatedQrCode,
      String groupReqName,
      DateTime endDate,
      bool multipleEntryAllowed,
      String notesInstructions,
      String phone,
      ServiceRequestType requestType,
      DateTime requestedDate,
      String requesterID,
      String requesterType,
      bool requireNotificationEntry,
      String serviceRequestorMemberUserId,
      String serviceProviderId,
      bool suspend,
      bool terminate,
      String qrCodeLink,
      String unitId,
      DateTime startDate,
      StaffInfo staffInfo,
      String requestID,
      String adhocstate});

  @override
  $StaffInfoCopyWith<$Res> get staffInfo;
}

/// @nodoc
class __$ServiceRequestModelCopyWithImpl<$Res>
    extends _$ServiceRequestModelCopyWithImpl<$Res>
    implements _$ServiceRequestModelCopyWith<$Res> {
  __$ServiceRequestModelCopyWithImpl(
      _ServiceRequestModel _value, $Res Function(_ServiceRequestModel) _then)
      : super(_value, (v) => _then(v as _ServiceRequestModel));

  @override
  _ServiceRequestModel get _value => super._value as _ServiceRequestModel;

  @override
  $Res call({
    Object adHocVisitorPhoto = freezed,
    Object correspondingName = freezed,
    Object generatedQrCode = freezed,
    Object groupReqName = freezed,
    Object endDate = freezed,
    Object multipleEntryAllowed = freezed,
    Object notesInstructions = freezed,
    Object phone = freezed,
    Object requestType = freezed,
    Object requestedDate = freezed,
    Object requesterID = freezed,
    Object requesterType = freezed,
    Object requireNotificationEntry = freezed,
    Object serviceRequestorMemberUserId = freezed,
    Object serviceProviderId = freezed,
    Object suspend = freezed,
    Object terminate = freezed,
    Object qrCodeLink = freezed,
    Object unitId = freezed,
    Object startDate = freezed,
    Object staffInfo = freezed,
    Object requestID = freezed,
    Object adhocstate = freezed,
  }) {
    return _then(_ServiceRequestModel(
      adHocVisitorPhoto: adHocVisitorPhoto == freezed
          ? _value.adHocVisitorPhoto
          : adHocVisitorPhoto as String,
      correspondingName: correspondingName == freezed
          ? _value.correspondingName
          : correspondingName as String,
      generatedQrCode: generatedQrCode == freezed
          ? _value.generatedQrCode
          : generatedQrCode as String,
      groupReqName: groupReqName == freezed
          ? _value.groupReqName
          : groupReqName as String,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      multipleEntryAllowed: multipleEntryAllowed == freezed
          ? _value.multipleEntryAllowed
          : multipleEntryAllowed as bool,
      notesInstructions: notesInstructions == freezed
          ? _value.notesInstructions
          : notesInstructions as String,
      phone: phone == freezed ? _value.phone : phone as String,
      requestType: requestType == freezed
          ? _value.requestType
          : requestType as ServiceRequestType,
      requestedDate: requestedDate == freezed
          ? _value.requestedDate
          : requestedDate as DateTime,
      requesterID:
          requesterID == freezed ? _value.requesterID : requesterID as String,
      requesterType: requesterType == freezed
          ? _value.requesterType
          : requesterType as String,
      requireNotificationEntry: requireNotificationEntry == freezed
          ? _value.requireNotificationEntry
          : requireNotificationEntry as bool,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId == freezed
          ? _value.serviceRequestorMemberUserId
          : serviceRequestorMemberUserId as String,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId as String,
      suspend: suspend == freezed ? _value.suspend : suspend as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      qrCodeLink:
          qrCodeLink == freezed ? _value.qrCodeLink : qrCodeLink as String,
      unitId: unitId == freezed ? _value.unitId : unitId as String,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      staffInfo:
          staffInfo == freezed ? _value.staffInfo : staffInfo as StaffInfo,
      requestID: requestID == freezed ? _value.requestID : requestID as String,
      adhocstate:
          adhocstate == freezed ? _value.adhocstate : adhocstate as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ServiceRequestModel implements _ServiceRequestModel {
  const _$_ServiceRequestModel(
      {this.adHocVisitorPhoto,
      @required this.correspondingName,
      @required this.generatedQrCode,
      @required this.groupReqName,
      @required this.endDate,
      @required this.multipleEntryAllowed,
      @required this.notesInstructions,
      @required this.phone,
      @required this.requestType,
      @required this.requestedDate,
      @required this.requesterID,
      @required this.requesterType,
      @required this.requireNotificationEntry,
      @required this.serviceRequestorMemberUserId,
      @required this.serviceProviderId,
      @required this.suspend,
      @required this.terminate,
      @required this.qrCodeLink,
      @required this.unitId,
      @required this.startDate,
      @required this.staffInfo,
      @required this.requestID,
      @required this.adhocstate})
      : assert(correspondingName != null),
        assert(generatedQrCode != null),
        assert(groupReqName != null),
        assert(endDate != null),
        assert(multipleEntryAllowed != null),
        assert(notesInstructions != null),
        assert(phone != null),
        assert(requestType != null),
        assert(requestedDate != null),
        assert(requesterID != null),
        assert(requesterType != null),
        assert(requireNotificationEntry != null),
        assert(serviceRequestorMemberUserId != null),
        assert(serviceProviderId != null),
        assert(suspend != null),
        assert(terminate != null),
        assert(qrCodeLink != null),
        assert(unitId != null),
        assert(startDate != null),
        assert(staffInfo != null),
        assert(requestID != null),
        assert(adhocstate != null);

  factory _$_ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceRequestModelFromJson(json);

  @override
  final String adHocVisitorPhoto;
  @override
  final String correspondingName;
  @override
  final String generatedQrCode;
  @override
  final String groupReqName;
  @override
  final DateTime endDate;
  @override
  final bool multipleEntryAllowed;
  @override
  final String notesInstructions;
  @override
  final String phone;
  @override
  final ServiceRequestType requestType;
  @override
  final DateTime requestedDate;
  @override
  final String requesterID;
  @override
  final String requesterType;
  @override
  final bool requireNotificationEntry;
  @override
  final String serviceRequestorMemberUserId;
  @override
  final String serviceProviderId;
  @override
  final bool suspend;
  @override
  final bool terminate;
  @override
  final String qrCodeLink;
  @override
  final String unitId;
  @override
  final DateTime startDate;
  @override
  final StaffInfo staffInfo;
  @override
  final String requestID;
  @override
  final String adhocstate;

  @override
  String toString() {
    return 'ServiceRequestModel(adHocVisitorPhoto: $adHocVisitorPhoto, correspondingName: $correspondingName, generatedQrCode: $generatedQrCode, groupReqName: $groupReqName, endDate: $endDate, multipleEntryAllowed: $multipleEntryAllowed, notesInstructions: $notesInstructions, phone: $phone, requestType: $requestType, requestedDate: $requestedDate, requesterID: $requesterID, requesterType: $requesterType, requireNotificationEntry: $requireNotificationEntry, serviceRequestorMemberUserId: $serviceRequestorMemberUserId, serviceProviderId: $serviceProviderId, suspend: $suspend, terminate: $terminate, qrCodeLink: $qrCodeLink, unitId: $unitId, startDate: $startDate, staffInfo: $staffInfo, requestID: $requestID, adhocstate: $adhocstate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceRequestModel &&
            (identical(other.adHocVisitorPhoto, adHocVisitorPhoto) ||
                const DeepCollectionEquality()
                    .equals(other.adHocVisitorPhoto, adHocVisitorPhoto)) &&
            (identical(other.correspondingName, correspondingName) ||
                const DeepCollectionEquality()
                    .equals(other.correspondingName, correspondingName)) &&
            (identical(other.generatedQrCode, generatedQrCode) ||
                const DeepCollectionEquality()
                    .equals(other.generatedQrCode, generatedQrCode)) &&
            (identical(other.groupReqName, groupReqName) ||
                const DeepCollectionEquality()
                    .equals(other.groupReqName, groupReqName)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.multipleEntryAllowed, multipleEntryAllowed) ||
                const DeepCollectionEquality().equals(
                    other.multipleEntryAllowed, multipleEntryAllowed)) &&
            (identical(other.notesInstructions, notesInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.notesInstructions, notesInstructions)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.requestType, requestType) ||
                const DeepCollectionEquality()
                    .equals(other.requestType, requestType)) &&
            (identical(other.requestedDate, requestedDate) ||
                const DeepCollectionEquality()
                    .equals(other.requestedDate, requestedDate)) &&
            (identical(other.requesterID, requesterID) ||
                const DeepCollectionEquality()
                    .equals(other.requesterID, requesterID)) &&
            (identical(other.requesterType, requesterType) ||
                const DeepCollectionEquality()
                    .equals(other.requesterType, requesterType)) &&
            (identical(other.requireNotificationEntry, requireNotificationEntry) ||
                const DeepCollectionEquality().equals(
                    other.requireNotificationEntry,
                    requireNotificationEntry)) &&
            (identical(other.serviceRequestorMemberUserId, serviceRequestorMemberUserId) ||
                const DeepCollectionEquality().equals(
                    other.serviceRequestorMemberUserId,
                    serviceRequestorMemberUserId)) &&
            (identical(other.serviceProviderId, serviceProviderId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProviderId, serviceProviderId)) &&
            (identical(other.suspend, suspend) ||
                const DeepCollectionEquality()
                    .equals(other.suspend, suspend)) &&
            (identical(other.terminate, terminate) ||
                const DeepCollectionEquality()
                    .equals(other.terminate, terminate)) &&
            (identical(other.qrCodeLink, qrCodeLink) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeLink, qrCodeLink)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality().equals(other.startDate, startDate)) &&
            (identical(other.staffInfo, staffInfo) || const DeepCollectionEquality().equals(other.staffInfo, staffInfo)) &&
            (identical(other.requestID, requestID) || const DeepCollectionEquality().equals(other.requestID, requestID)) &&
            (identical(other.adhocstate, adhocstate) || const DeepCollectionEquality().equals(other.adhocstate, adhocstate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adHocVisitorPhoto) ^
      const DeepCollectionEquality().hash(correspondingName) ^
      const DeepCollectionEquality().hash(generatedQrCode) ^
      const DeepCollectionEquality().hash(groupReqName) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(multipleEntryAllowed) ^
      const DeepCollectionEquality().hash(notesInstructions) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(requestType) ^
      const DeepCollectionEquality().hash(requestedDate) ^
      const DeepCollectionEquality().hash(requesterID) ^
      const DeepCollectionEquality().hash(requesterType) ^
      const DeepCollectionEquality().hash(requireNotificationEntry) ^
      const DeepCollectionEquality().hash(serviceRequestorMemberUserId) ^
      const DeepCollectionEquality().hash(serviceProviderId) ^
      const DeepCollectionEquality().hash(suspend) ^
      const DeepCollectionEquality().hash(terminate) ^
      const DeepCollectionEquality().hash(qrCodeLink) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(staffInfo) ^
      const DeepCollectionEquality().hash(requestID) ^
      const DeepCollectionEquality().hash(adhocstate);

  @JsonKey(ignore: true)
  @override
  _$ServiceRequestModelCopyWith<_ServiceRequestModel> get copyWith =>
      __$ServiceRequestModelCopyWithImpl<_ServiceRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceRequestModelToJson(this);
  }
}

abstract class _ServiceRequestModel implements ServiceRequestModel {
  const factory _ServiceRequestModel(
      {String adHocVisitorPhoto,
      @required String correspondingName,
      @required String generatedQrCode,
      @required String groupReqName,
      @required DateTime endDate,
      @required bool multipleEntryAllowed,
      @required String notesInstructions,
      @required String phone,
      @required ServiceRequestType requestType,
      @required DateTime requestedDate,
      @required String requesterID,
      @required String requesterType,
      @required bool requireNotificationEntry,
      @required String serviceRequestorMemberUserId,
      @required String serviceProviderId,
      @required bool suspend,
      @required bool terminate,
      @required String qrCodeLink,
      @required String unitId,
      @required DateTime startDate,
      @required StaffInfo staffInfo,
      @required String requestID,
      @required String adhocstate}) = _$_ServiceRequestModel;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequestModel.fromJson;

  @override
  String get adHocVisitorPhoto;
  @override
  String get correspondingName;
  @override
  String get generatedQrCode;
  @override
  String get groupReqName;
  @override
  DateTime get endDate;
  @override
  bool get multipleEntryAllowed;
  @override
  String get notesInstructions;
  @override
  String get phone;
  @override
  ServiceRequestType get requestType;
  @override
  DateTime get requestedDate;
  @override
  String get requesterID;
  @override
  String get requesterType;
  @override
  bool get requireNotificationEntry;
  @override
  String get serviceRequestorMemberUserId;
  @override
  String get serviceProviderId;
  @override
  bool get suspend;
  @override
  bool get terminate;
  @override
  String get qrCodeLink;
  @override
  String get unitId;
  @override
  DateTime get startDate;
  @override
  StaffInfo get staffInfo;
  @override
  String get requestID;
  @override
  String get adhocstate;
  @override
  @JsonKey(ignore: true)
  _$ServiceRequestModelCopyWith<_ServiceRequestModel> get copyWith;
}

StaffInfo _$StaffInfoFromJson(Map<String, dynamic> json) {
  return _StaffInfo.fromJson(json);
}

/// @nodoc
class _$StaffInfoTearOff {
  const _$StaffInfoTearOff();

// ignore: unused_element
  _StaffInfo call({@required int id, @required String name}) {
    return _StaffInfo(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  StaffInfo fromJson(Map<String, Object> json) {
    return StaffInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StaffInfo = _$StaffInfoTearOff();

/// @nodoc
mixin _$StaffInfo {
  int get id;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StaffInfoCopyWith<StaffInfo> get copyWith;
}

/// @nodoc
abstract class $StaffInfoCopyWith<$Res> {
  factory $StaffInfoCopyWith(StaffInfo value, $Res Function(StaffInfo) then) =
      _$StaffInfoCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$StaffInfoCopyWithImpl<$Res> implements $StaffInfoCopyWith<$Res> {
  _$StaffInfoCopyWithImpl(this._value, this._then);

  final StaffInfo _value;
  // ignore: unused_field
  final $Res Function(StaffInfo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$StaffInfoCopyWith<$Res> implements $StaffInfoCopyWith<$Res> {
  factory _$StaffInfoCopyWith(
          _StaffInfo value, $Res Function(_StaffInfo) then) =
      __$StaffInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$StaffInfoCopyWithImpl<$Res> extends _$StaffInfoCopyWithImpl<$Res>
    implements _$StaffInfoCopyWith<$Res> {
  __$StaffInfoCopyWithImpl(_StaffInfo _value, $Res Function(_StaffInfo) _then)
      : super(_value, (v) => _then(v as _StaffInfo));

  @override
  _StaffInfo get _value => super._value as _StaffInfo;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_StaffInfo(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StaffInfo implements _StaffInfo {
  const _$_StaffInfo({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  factory _$_StaffInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_StaffInfoFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StaffInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StaffInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$StaffInfoCopyWith<_StaffInfo> get copyWith =>
      __$StaffInfoCopyWithImpl<_StaffInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StaffInfoToJson(this);
  }
}

abstract class _StaffInfo implements StaffInfo {
  const factory _StaffInfo({@required int id, @required String name}) =
      _$_StaffInfo;

  factory _StaffInfo.fromJson(Map<String, dynamic> json) =
      _$_StaffInfo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$StaffInfoCopyWith<_StaffInfo> get copyWith;
}
