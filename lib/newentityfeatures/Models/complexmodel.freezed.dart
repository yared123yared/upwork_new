// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'complexmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BuildingModel _$BuildingModelFromJson(Map<String, dynamic> json) {
  return _BuildingModel.fromJson(json);
}

/// @nodoc
class _$BuildingModelTearOff {
  const _$BuildingModelTearOff();

// ignore: unused_element
  _BuildingModel call(
      {@JsonKey(name: 'attachedgate') List<String> attachedGate,
      @JsonKey(name: 'buildingid') String buildingID,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'version') num version}) {
    return _BuildingModel(
      attachedGate: attachedGate,
      buildingID: buildingID,
      buildingName: buildingName,
      address: address,
      latitude: latitude,
      longitude: longitude,
      version: version,
    );
  }

// ignore: unused_element
  BuildingModel fromJson(Map<String, Object> json) {
    return BuildingModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BuildingModel = _$BuildingModelTearOff();

/// @nodoc
mixin _$BuildingModel {
  @JsonKey(name: 'attachedgate')
  List<String> get attachedGate;
  @JsonKey(name: 'buildingid')
  String get buildingID;
  @JsonKey(name: 'buildingname')
  String get buildingName;
  @JsonKey(name: 'address')
  String get address;
  @JsonKey(name: 'latitude')
  double get latitude;
  @JsonKey(name: 'longitude')
  double get longitude;
  @JsonKey(name: 'version')
  num get version;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BuildingModelCopyWith<BuildingModel> get copyWith;
}

/// @nodoc
abstract class $BuildingModelCopyWith<$Res> {
  factory $BuildingModelCopyWith(
          BuildingModel value, $Res Function(BuildingModel) then) =
      _$BuildingModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'attachedgate') List<String> attachedGate,
      @JsonKey(name: 'buildingid') String buildingID,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'version') num version});
}

/// @nodoc
class _$BuildingModelCopyWithImpl<$Res>
    implements $BuildingModelCopyWith<$Res> {
  _$BuildingModelCopyWithImpl(this._value, this._then);

  final BuildingModel _value;
  // ignore: unused_field
  final $Res Function(BuildingModel) _then;

  @override
  $Res call({
    Object attachedGate = freezed,
    Object buildingID = freezed,
    Object buildingName = freezed,
    Object address = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object version = freezed,
  }) {
    return _then(_value.copyWith(
      attachedGate: attachedGate == freezed
          ? _value.attachedGate
          : attachedGate as List<String>,
      buildingID:
          buildingID == freezed ? _value.buildingID : buildingID as String,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName as String,
      address: address == freezed ? _value.address : address as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

/// @nodoc
abstract class _$BuildingModelCopyWith<$Res>
    implements $BuildingModelCopyWith<$Res> {
  factory _$BuildingModelCopyWith(
          _BuildingModel value, $Res Function(_BuildingModel) then) =
      __$BuildingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'attachedgate') List<String> attachedGate,
      @JsonKey(name: 'buildingid') String buildingID,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'version') num version});
}

/// @nodoc
class __$BuildingModelCopyWithImpl<$Res>
    extends _$BuildingModelCopyWithImpl<$Res>
    implements _$BuildingModelCopyWith<$Res> {
  __$BuildingModelCopyWithImpl(
      _BuildingModel _value, $Res Function(_BuildingModel) _then)
      : super(_value, (v) => _then(v as _BuildingModel));

  @override
  _BuildingModel get _value => super._value as _BuildingModel;

  @override
  $Res call({
    Object attachedGate = freezed,
    Object buildingID = freezed,
    Object buildingName = freezed,
    Object address = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object version = freezed,
  }) {
    return _then(_BuildingModel(
      attachedGate: attachedGate == freezed
          ? _value.attachedGate
          : attachedGate as List<String>,
      buildingID:
          buildingID == freezed ? _value.buildingID : buildingID as String,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName as String,
      address: address == freezed ? _value.address : address as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BuildingModel with DiagnosticableTreeMixin implements _BuildingModel {
  _$_BuildingModel(
      {@JsonKey(name: 'attachedgate') this.attachedGate,
      @JsonKey(name: 'buildingid') this.buildingID,
      @JsonKey(name: 'buildingname') this.buildingName,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'version') this.version});

  factory _$_BuildingModel.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingModelFromJson(json);

  @override
  @JsonKey(name: 'attachedgate')
  final List<String> attachedGate;
  @override
  @JsonKey(name: 'buildingid')
  final String buildingID;
  @override
  @JsonKey(name: 'buildingname')
  final String buildingName;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;
  @override
  @JsonKey(name: 'version')
  final num version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BuildingModel(attachedGate: $attachedGate, buildingID: $buildingID, buildingName: $buildingName, address: $address, latitude: $latitude, longitude: $longitude, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BuildingModel'))
      ..add(DiagnosticsProperty('attachedGate', attachedGate))
      ..add(DiagnosticsProperty('buildingID', buildingID))
      ..add(DiagnosticsProperty('buildingName', buildingName))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingModel &&
            (identical(other.attachedGate, attachedGate) ||
                const DeepCollectionEquality()
                    .equals(other.attachedGate, attachedGate)) &&
            (identical(other.buildingID, buildingID) ||
                const DeepCollectionEquality()
                    .equals(other.buildingID, buildingID)) &&
            (identical(other.buildingName, buildingName) ||
                const DeepCollectionEquality()
                    .equals(other.buildingName, buildingName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attachedGate) ^
      const DeepCollectionEquality().hash(buildingID) ^
      const DeepCollectionEquality().hash(buildingName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$BuildingModelCopyWith<_BuildingModel> get copyWith =>
      __$BuildingModelCopyWithImpl<_BuildingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingModelToJson(this);
  }
}

abstract class _BuildingModel implements BuildingModel {
  factory _BuildingModel(
      {@JsonKey(name: 'attachedgate') List<String> attachedGate,
      @JsonKey(name: 'buildingid') String buildingID,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude,
      @JsonKey(name: 'version') num version}) = _$_BuildingModel;

  factory _BuildingModel.fromJson(Map<String, dynamic> json) =
      _$_BuildingModel.fromJson;

  @override
  @JsonKey(name: 'attachedgate')
  List<String> get attachedGate;
  @override
  @JsonKey(name: 'buildingid')
  String get buildingID;
  @override
  @JsonKey(name: 'buildingname')
  String get buildingName;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'latitude')
  double get latitude;
  @override
  @JsonKey(name: 'longitude')
  double get longitude;
  @override
  @JsonKey(name: 'version')
  num get version;
  @override
  @JsonKey(ignore: true)
  _$BuildingModelCopyWith<_BuildingModel> get copyWith;
}

ComplexVehicleModel _$ComplexVehicleModelFromJson(Map<String, dynamic> json) {
  return _ComplexVehicleModel.fromJson(json);
}

/// @nodoc
class _$ComplexVehicleModelTearOff {
  const _$ComplexVehicleModelTearOff();

// ignore: unused_element
  _ComplexVehicleModel call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'generatedqrcode')
          String generatedQRCode,
      @JsonKey(name: 'generatedqrcodelink')
          String generatedQRCodeLink,
      @JsonKey(name: 'numberplate')
          String numberPlate,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'photolink')
          String photoLink,
      @JsonKey(name: 'registrationnum')
          String registrationNum,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'useremail')
          String userEmail,
      @JsonKey(name: 'username')
          String userName,
      @JsonKey(name: 'vehicletype')
          String vehicleType,
      @JsonKey(name: 'vehicleid')
          String vehicleID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'isactivate')
          bool isActivate,
      @JsonKey(name: 'ispickanddrop')
          bool isPickAndDrop,
      @JsonKey(name: 'isstaff')
          bool isStaff,
      @JsonKey(name: 'issubemployee')
          bool isSubEmployee,
      @JsonKey(name: 'isvisitor')
          bool isVisitor,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'userphonenum')
          num userPhoneNum}) {
    return _ComplexVehicleModel(
      appUserId: appUserId,
      generatedQRCode: generatedQRCode,
      generatedQRCodeLink: generatedQRCodeLink,
      numberPlate: numberPlate,
      ownerName: ownerName,
      photoLink: photoLink,
      registrationNum: registrationNum,
      unitAddress: unitAddress,
      userEmail: userEmail,
      userName: userName,
      vehicleType: vehicleType,
      vehicleID: vehicleID,
      forstaffid: forstaffid,
      forstaffname: forstaffname,
      endDate: endDate,
      startDate: startDate,
      isActivate: isActivate,
      isPickAndDrop: isPickAndDrop,
      isStaff: isStaff,
      isSubEmployee: isSubEmployee,
      isVisitor: isVisitor,
      terminate: terminate,
      userPhoneNum: userPhoneNum,
    );
  }

// ignore: unused_element
  ComplexVehicleModel fromJson(Map<String, Object> json) {
    return ComplexVehicleModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ComplexVehicleModel = _$ComplexVehicleModelTearOff();

/// @nodoc
mixin _$ComplexVehicleModel {
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @JsonKey(name: 'generatedqrcode')
  String get generatedQRCode;
  @JsonKey(name: 'generatedqrcodelink')
  String get generatedQRCodeLink;
  @JsonKey(name: 'numberplate')
  String get numberPlate;
  @JsonKey(name: 'ownername')
  String get ownerName;
  @JsonKey(name: 'photolink')
  String get photoLink;
  @JsonKey(name: 'registrationnum')
  String get registrationNum;
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @JsonKey(name: 'useremail')
  String get userEmail;
  @JsonKey(name: 'username')
  String get userName;
  @JsonKey(name: 'vehicletype')
  String get vehicleType;
  @JsonKey(name: 'vehicleid')
  String get vehicleID;
  @JsonKey(name: 'forstaffid')
  String get forstaffid;
  @JsonKey(name: 'forstaffname')
  String get forstaffname;
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(name: 'isactivate')
  bool get isActivate;
  @JsonKey(name: 'ispickanddrop')
  bool get isPickAndDrop;
  @JsonKey(name: 'isstaff')
  bool get isStaff;
  @JsonKey(name: 'issubemployee')
  bool get isSubEmployee;
  @JsonKey(name: 'isvisitor')
  bool get isVisitor;
  @JsonKey(name: 'terminate')
  bool get terminate;
  @JsonKey(name: 'userphonenum')
  num get userPhoneNum;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ComplexVehicleModelCopyWith<ComplexVehicleModel> get copyWith;
}

/// @nodoc
abstract class $ComplexVehicleModelCopyWith<$Res> {
  factory $ComplexVehicleModelCopyWith(
          ComplexVehicleModel value, $Res Function(ComplexVehicleModel) then) =
      _$ComplexVehicleModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'generatedqrcode')
          String generatedQRCode,
      @JsonKey(name: 'generatedqrcodelink')
          String generatedQRCodeLink,
      @JsonKey(name: 'numberplate')
          String numberPlate,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'photolink')
          String photoLink,
      @JsonKey(name: 'registrationnum')
          String registrationNum,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'useremail')
          String userEmail,
      @JsonKey(name: 'username')
          String userName,
      @JsonKey(name: 'vehicletype')
          String vehicleType,
      @JsonKey(name: 'vehicleid')
          String vehicleID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'isactivate')
          bool isActivate,
      @JsonKey(name: 'ispickanddrop')
          bool isPickAndDrop,
      @JsonKey(name: 'isstaff')
          bool isStaff,
      @JsonKey(name: 'issubemployee')
          bool isSubEmployee,
      @JsonKey(name: 'isvisitor')
          bool isVisitor,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'userphonenum')
          num userPhoneNum});
}

/// @nodoc
class _$ComplexVehicleModelCopyWithImpl<$Res>
    implements $ComplexVehicleModelCopyWith<$Res> {
  _$ComplexVehicleModelCopyWithImpl(this._value, this._then);

  final ComplexVehicleModel _value;
  // ignore: unused_field
  final $Res Function(ComplexVehicleModel) _then;

  @override
  $Res call({
    Object appUserId = freezed,
    Object generatedQRCode = freezed,
    Object generatedQRCodeLink = freezed,
    Object numberPlate = freezed,
    Object ownerName = freezed,
    Object photoLink = freezed,
    Object registrationNum = freezed,
    Object unitAddress = freezed,
    Object userEmail = freezed,
    Object userName = freezed,
    Object vehicleType = freezed,
    Object vehicleID = freezed,
    Object forstaffid = freezed,
    Object forstaffname = freezed,
    Object endDate = freezed,
    Object startDate = freezed,
    Object isActivate = freezed,
    Object isPickAndDrop = freezed,
    Object isStaff = freezed,
    Object isSubEmployee = freezed,
    Object isVisitor = freezed,
    Object terminate = freezed,
    Object userPhoneNum = freezed,
  }) {
    return _then(_value.copyWith(
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      generatedQRCode: generatedQRCode == freezed
          ? _value.generatedQRCode
          : generatedQRCode as String,
      generatedQRCodeLink: generatedQRCodeLink == freezed
          ? _value.generatedQRCodeLink
          : generatedQRCodeLink as String,
      numberPlate:
          numberPlate == freezed ? _value.numberPlate : numberPlate as String,
      ownerName: ownerName == freezed ? _value.ownerName : ownerName as String,
      photoLink: photoLink == freezed ? _value.photoLink : photoLink as String,
      registrationNum: registrationNum == freezed
          ? _value.registrationNum
          : registrationNum as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      userName: userName == freezed ? _value.userName : userName as String,
      vehicleType:
          vehicleType == freezed ? _value.vehicleType : vehicleType as String,
      vehicleID: vehicleID == freezed ? _value.vehicleID : vehicleID as String,
      forstaffid:
          forstaffid == freezed ? _value.forstaffid : forstaffid as String,
      forstaffname: forstaffname == freezed
          ? _value.forstaffname
          : forstaffname as String,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      isActivate:
          isActivate == freezed ? _value.isActivate : isActivate as bool,
      isPickAndDrop: isPickAndDrop == freezed
          ? _value.isPickAndDrop
          : isPickAndDrop as bool,
      isStaff: isStaff == freezed ? _value.isStaff : isStaff as bool,
      isSubEmployee: isSubEmployee == freezed
          ? _value.isSubEmployee
          : isSubEmployee as bool,
      isVisitor: isVisitor == freezed ? _value.isVisitor : isVisitor as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      userPhoneNum:
          userPhoneNum == freezed ? _value.userPhoneNum : userPhoneNum as num,
    ));
  }
}

/// @nodoc
abstract class _$ComplexVehicleModelCopyWith<$Res>
    implements $ComplexVehicleModelCopyWith<$Res> {
  factory _$ComplexVehicleModelCopyWith(_ComplexVehicleModel value,
          $Res Function(_ComplexVehicleModel) then) =
      __$ComplexVehicleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'generatedqrcode')
          String generatedQRCode,
      @JsonKey(name: 'generatedqrcodelink')
          String generatedQRCodeLink,
      @JsonKey(name: 'numberplate')
          String numberPlate,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'photolink')
          String photoLink,
      @JsonKey(name: 'registrationnum')
          String registrationNum,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'useremail')
          String userEmail,
      @JsonKey(name: 'username')
          String userName,
      @JsonKey(name: 'vehicletype')
          String vehicleType,
      @JsonKey(name: 'vehicleid')
          String vehicleID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'isactivate')
          bool isActivate,
      @JsonKey(name: 'ispickanddrop')
          bool isPickAndDrop,
      @JsonKey(name: 'isstaff')
          bool isStaff,
      @JsonKey(name: 'issubemployee')
          bool isSubEmployee,
      @JsonKey(name: 'isvisitor')
          bool isVisitor,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'userphonenum')
          num userPhoneNum});
}

/// @nodoc
class __$ComplexVehicleModelCopyWithImpl<$Res>
    extends _$ComplexVehicleModelCopyWithImpl<$Res>
    implements _$ComplexVehicleModelCopyWith<$Res> {
  __$ComplexVehicleModelCopyWithImpl(
      _ComplexVehicleModel _value, $Res Function(_ComplexVehicleModel) _then)
      : super(_value, (v) => _then(v as _ComplexVehicleModel));

  @override
  _ComplexVehicleModel get _value => super._value as _ComplexVehicleModel;

  @override
  $Res call({
    Object appUserId = freezed,
    Object generatedQRCode = freezed,
    Object generatedQRCodeLink = freezed,
    Object numberPlate = freezed,
    Object ownerName = freezed,
    Object photoLink = freezed,
    Object registrationNum = freezed,
    Object unitAddress = freezed,
    Object userEmail = freezed,
    Object userName = freezed,
    Object vehicleType = freezed,
    Object vehicleID = freezed,
    Object forstaffid = freezed,
    Object forstaffname = freezed,
    Object endDate = freezed,
    Object startDate = freezed,
    Object isActivate = freezed,
    Object isPickAndDrop = freezed,
    Object isStaff = freezed,
    Object isSubEmployee = freezed,
    Object isVisitor = freezed,
    Object terminate = freezed,
    Object userPhoneNum = freezed,
  }) {
    return _then(_ComplexVehicleModel(
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      generatedQRCode: generatedQRCode == freezed
          ? _value.generatedQRCode
          : generatedQRCode as String,
      generatedQRCodeLink: generatedQRCodeLink == freezed
          ? _value.generatedQRCodeLink
          : generatedQRCodeLink as String,
      numberPlate:
          numberPlate == freezed ? _value.numberPlate : numberPlate as String,
      ownerName: ownerName == freezed ? _value.ownerName : ownerName as String,
      photoLink: photoLink == freezed ? _value.photoLink : photoLink as String,
      registrationNum: registrationNum == freezed
          ? _value.registrationNum
          : registrationNum as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      userEmail: userEmail == freezed ? _value.userEmail : userEmail as String,
      userName: userName == freezed ? _value.userName : userName as String,
      vehicleType:
          vehicleType == freezed ? _value.vehicleType : vehicleType as String,
      vehicleID: vehicleID == freezed ? _value.vehicleID : vehicleID as String,
      forstaffid:
          forstaffid == freezed ? _value.forstaffid : forstaffid as String,
      forstaffname: forstaffname == freezed
          ? _value.forstaffname
          : forstaffname as String,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      isActivate:
          isActivate == freezed ? _value.isActivate : isActivate as bool,
      isPickAndDrop: isPickAndDrop == freezed
          ? _value.isPickAndDrop
          : isPickAndDrop as bool,
      isStaff: isStaff == freezed ? _value.isStaff : isStaff as bool,
      isSubEmployee: isSubEmployee == freezed
          ? _value.isSubEmployee
          : isSubEmployee as bool,
      isVisitor: isVisitor == freezed ? _value.isVisitor : isVisitor as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      userPhoneNum:
          userPhoneNum == freezed ? _value.userPhoneNum : userPhoneNum as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ComplexVehicleModel
    with DiagnosticableTreeMixin
    implements _ComplexVehicleModel {
  _$_ComplexVehicleModel(
      {@JsonKey(name: 'appuserid')
          this.appUserId,
      @JsonKey(name: 'generatedqrcode')
          this.generatedQRCode,
      @JsonKey(name: 'generatedqrcodelink')
          this.generatedQRCodeLink,
      @JsonKey(name: 'numberplate')
          this.numberPlate,
      @JsonKey(name: 'ownername')
          this.ownerName,
      @JsonKey(name: 'photolink')
          this.photoLink,
      @JsonKey(name: 'registrationnum')
          this.registrationNum,
      @JsonKey(name: 'unitaddress')
          this.unitAddress,
      @JsonKey(name: 'useremail')
          this.userEmail,
      @JsonKey(name: 'username')
          this.userName,
      @JsonKey(name: 'vehicletype')
          this.vehicleType,
      @JsonKey(name: 'vehicleid')
          this.vehicleID,
      @JsonKey(name: 'forstaffid')
          this.forstaffid,
      @JsonKey(name: 'forstaffname')
          this.forstaffname,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate,
      @JsonKey(name: 'isactivate')
          this.isActivate,
      @JsonKey(name: 'ispickanddrop')
          this.isPickAndDrop,
      @JsonKey(name: 'isstaff')
          this.isStaff,
      @JsonKey(name: 'issubemployee')
          this.isSubEmployee,
      @JsonKey(name: 'isvisitor')
          this.isVisitor,
      @JsonKey(name: 'terminate')
          this.terminate,
      @JsonKey(name: 'userphonenum')
          this.userPhoneNum});

  factory _$_ComplexVehicleModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ComplexVehicleModelFromJson(json);

  @override
  @JsonKey(name: 'appuserid')
  final String appUserId;
  @override
  @JsonKey(name: 'generatedqrcode')
  final String generatedQRCode;
  @override
  @JsonKey(name: 'generatedqrcodelink')
  final String generatedQRCodeLink;
  @override
  @JsonKey(name: 'numberplate')
  final String numberPlate;
  @override
  @JsonKey(name: 'ownername')
  final String ownerName;
  @override
  @JsonKey(name: 'photolink')
  final String photoLink;
  @override
  @JsonKey(name: 'registrationnum')
  final String registrationNum;
  @override
  @JsonKey(name: 'unitaddress')
  final String unitAddress;
  @override
  @JsonKey(name: 'useremail')
  final String userEmail;
  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  @JsonKey(name: 'vehicletype')
  final String vehicleType;
  @override
  @JsonKey(name: 'vehicleid')
  final String vehicleID;
  @override
  @JsonKey(name: 'forstaffid')
  final String forstaffid;
  @override
  @JsonKey(name: 'forstaffname')
  final String forstaffname;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;
  @override
  @JsonKey(name: 'isactivate')
  final bool isActivate;
  @override
  @JsonKey(name: 'ispickanddrop')
  final bool isPickAndDrop;
  @override
  @JsonKey(name: 'isstaff')
  final bool isStaff;
  @override
  @JsonKey(name: 'issubemployee')
  final bool isSubEmployee;
  @override
  @JsonKey(name: 'isvisitor')
  final bool isVisitor;
  @override
  @JsonKey(name: 'terminate')
  final bool terminate;
  @override
  @JsonKey(name: 'userphonenum')
  final num userPhoneNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ComplexVehicleModel(appUserId: $appUserId, generatedQRCode: $generatedQRCode, generatedQRCodeLink: $generatedQRCodeLink, numberPlate: $numberPlate, ownerName: $ownerName, photoLink: $photoLink, registrationNum: $registrationNum, unitAddress: $unitAddress, userEmail: $userEmail, userName: $userName, vehicleType: $vehicleType, vehicleID: $vehicleID, forstaffid: $forstaffid, forstaffname: $forstaffname, endDate: $endDate, startDate: $startDate, isActivate: $isActivate, isPickAndDrop: $isPickAndDrop, isStaff: $isStaff, isSubEmployee: $isSubEmployee, isVisitor: $isVisitor, terminate: $terminate, userPhoneNum: $userPhoneNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ComplexVehicleModel'))
      ..add(DiagnosticsProperty('appUserId', appUserId))
      ..add(DiagnosticsProperty('generatedQRCode', generatedQRCode))
      ..add(DiagnosticsProperty('generatedQRCodeLink', generatedQRCodeLink))
      ..add(DiagnosticsProperty('numberPlate', numberPlate))
      ..add(DiagnosticsProperty('ownerName', ownerName))
      ..add(DiagnosticsProperty('photoLink', photoLink))
      ..add(DiagnosticsProperty('registrationNum', registrationNum))
      ..add(DiagnosticsProperty('unitAddress', unitAddress))
      ..add(DiagnosticsProperty('userEmail', userEmail))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('vehicleType', vehicleType))
      ..add(DiagnosticsProperty('vehicleID', vehicleID))
      ..add(DiagnosticsProperty('forstaffid', forstaffid))
      ..add(DiagnosticsProperty('forstaffname', forstaffname))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('isActivate', isActivate))
      ..add(DiagnosticsProperty('isPickAndDrop', isPickAndDrop))
      ..add(DiagnosticsProperty('isStaff', isStaff))
      ..add(DiagnosticsProperty('isSubEmployee', isSubEmployee))
      ..add(DiagnosticsProperty('isVisitor', isVisitor))
      ..add(DiagnosticsProperty('terminate', terminate))
      ..add(DiagnosticsProperty('userPhoneNum', userPhoneNum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ComplexVehicleModel &&
            (identical(other.appUserId, appUserId) ||
                const DeepCollectionEquality()
                    .equals(other.appUserId, appUserId)) &&
            (identical(other.generatedQRCode, generatedQRCode) ||
                const DeepCollectionEquality()
                    .equals(other.generatedQRCode, generatedQRCode)) &&
            (identical(other.generatedQRCodeLink, generatedQRCodeLink) ||
                const DeepCollectionEquality()
                    .equals(other.generatedQRCodeLink, generatedQRCodeLink)) &&
            (identical(other.numberPlate, numberPlate) ||
                const DeepCollectionEquality()
                    .equals(other.numberPlate, numberPlate)) &&
            (identical(other.ownerName, ownerName) ||
                const DeepCollectionEquality()
                    .equals(other.ownerName, ownerName)) &&
            (identical(other.photoLink, photoLink) ||
                const DeepCollectionEquality()
                    .equals(other.photoLink, photoLink)) &&
            (identical(other.registrationNum, registrationNum) ||
                const DeepCollectionEquality()
                    .equals(other.registrationNum, registrationNum)) &&
            (identical(other.unitAddress, unitAddress) ||
                const DeepCollectionEquality()
                    .equals(other.unitAddress, unitAddress)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.vehicleID, vehicleID) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleID, vehicleID)) &&
            (identical(other.forstaffid, forstaffid) ||
                const DeepCollectionEquality()
                    .equals(other.forstaffid, forstaffid)) &&
            (identical(other.forstaffname, forstaffname) ||
                const DeepCollectionEquality()
                    .equals(other.forstaffname, forstaffname)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.isActivate, isActivate) ||
                const DeepCollectionEquality()
                    .equals(other.isActivate, isActivate)) &&
            (identical(other.isPickAndDrop, isPickAndDrop) ||
                const DeepCollectionEquality()
                    .equals(other.isPickAndDrop, isPickAndDrop)) &&
            (identical(other.isStaff, isStaff) ||
                const DeepCollectionEquality()
                    .equals(other.isStaff, isStaff)) &&
            (identical(other.isSubEmployee, isSubEmployee) ||
                const DeepCollectionEquality()
                    .equals(other.isSubEmployee, isSubEmployee)) &&
            (identical(other.isVisitor, isVisitor) ||
                const DeepCollectionEquality()
                    .equals(other.isVisitor, isVisitor)) &&
            (identical(other.terminate, terminate) ||
                const DeepCollectionEquality().equals(other.terminate, terminate)) &&
            (identical(other.userPhoneNum, userPhoneNum) || const DeepCollectionEquality().equals(other.userPhoneNum, userPhoneNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserId) ^
      const DeepCollectionEquality().hash(generatedQRCode) ^
      const DeepCollectionEquality().hash(generatedQRCodeLink) ^
      const DeepCollectionEquality().hash(numberPlate) ^
      const DeepCollectionEquality().hash(ownerName) ^
      const DeepCollectionEquality().hash(photoLink) ^
      const DeepCollectionEquality().hash(registrationNum) ^
      const DeepCollectionEquality().hash(unitAddress) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(vehicleID) ^
      const DeepCollectionEquality().hash(forstaffid) ^
      const DeepCollectionEquality().hash(forstaffname) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(isActivate) ^
      const DeepCollectionEquality().hash(isPickAndDrop) ^
      const DeepCollectionEquality().hash(isStaff) ^
      const DeepCollectionEquality().hash(isSubEmployee) ^
      const DeepCollectionEquality().hash(isVisitor) ^
      const DeepCollectionEquality().hash(terminate) ^
      const DeepCollectionEquality().hash(userPhoneNum);

  @JsonKey(ignore: true)
  @override
  _$ComplexVehicleModelCopyWith<_ComplexVehicleModel> get copyWith =>
      __$ComplexVehicleModelCopyWithImpl<_ComplexVehicleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ComplexVehicleModelToJson(this);
  }
}

abstract class _ComplexVehicleModel implements ComplexVehicleModel {
  factory _ComplexVehicleModel(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'generatedqrcode')
          String generatedQRCode,
      @JsonKey(name: 'generatedqrcodelink')
          String generatedQRCodeLink,
      @JsonKey(name: 'numberplate')
          String numberPlate,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'photolink')
          String photoLink,
      @JsonKey(name: 'registrationnum')
          String registrationNum,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'useremail')
          String userEmail,
      @JsonKey(name: 'username')
          String userName,
      @JsonKey(name: 'vehicletype')
          String vehicleType,
      @JsonKey(name: 'vehicleid')
          String vehicleID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'isactivate')
          bool isActivate,
      @JsonKey(name: 'ispickanddrop')
          bool isPickAndDrop,
      @JsonKey(name: 'isstaff')
          bool isStaff,
      @JsonKey(name: 'issubemployee')
          bool isSubEmployee,
      @JsonKey(name: 'isvisitor')
          bool isVisitor,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'userphonenum')
          num userPhoneNum}) = _$_ComplexVehicleModel;

  factory _ComplexVehicleModel.fromJson(Map<String, dynamic> json) =
      _$_ComplexVehicleModel.fromJson;

  @override
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @override
  @JsonKey(name: 'generatedqrcode')
  String get generatedQRCode;
  @override
  @JsonKey(name: 'generatedqrcodelink')
  String get generatedQRCodeLink;
  @override
  @JsonKey(name: 'numberplate')
  String get numberPlate;
  @override
  @JsonKey(name: 'ownername')
  String get ownerName;
  @override
  @JsonKey(name: 'photolink')
  String get photoLink;
  @override
  @JsonKey(name: 'registrationnum')
  String get registrationNum;
  @override
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @override
  @JsonKey(name: 'useremail')
  String get userEmail;
  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  @JsonKey(name: 'vehicletype')
  String get vehicleType;
  @override
  @JsonKey(name: 'vehicleid')
  String get vehicleID;
  @override
  @JsonKey(name: 'forstaffid')
  String get forstaffid;
  @override
  @JsonKey(name: 'forstaffname')
  String get forstaffname;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @override
  @JsonKey(name: 'isactivate')
  bool get isActivate;
  @override
  @JsonKey(name: 'ispickanddrop')
  bool get isPickAndDrop;
  @override
  @JsonKey(name: 'isstaff')
  bool get isStaff;
  @override
  @JsonKey(name: 'issubemployee')
  bool get isSubEmployee;
  @override
  @JsonKey(name: 'isvisitor')
  bool get isVisitor;
  @override
  @JsonKey(name: 'terminate')
  bool get terminate;
  @override
  @JsonKey(name: 'userphonenum')
  num get userPhoneNum;
  @override
  @JsonKey(ignore: true)
  _$ComplexVehicleModelCopyWith<_ComplexVehicleModel> get copyWith;
}

EntryLogModel _$EntryLogModelFromJson(Map<String, dynamic> json) {
  return _EntryLogModel.fromJson(json);
}

/// @nodoc
class _$EntryLogModelTearOff {
  const _$EntryLogModelTearOff();

// ignore: unused_element
  _EntryLogModel call(
      {@JsonKey(name: 'loggedinsecurity')
          String loggedInSecurity,
      @JsonKey(name: 'logtype')
          String logType,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'servicerequid')
          String servicerequid,
      @JsonKey(name: 'entrytype')
          String entrytype,
      @JsonKey(name: 'logid')
          String logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime timeDate,
      String id}) {
    return _EntryLogModel(
      loggedInSecurity: loggedInSecurity,
      logType: logType,
      userId: userId,
      identity: identity,
      servicerequid: servicerequid,
      entrytype: entrytype,
      logID: logID,
      timeDate: timeDate,
      id: id,
    );
  }

// ignore: unused_element
  EntryLogModel fromJson(Map<String, Object> json) {
    return EntryLogModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EntryLogModel = _$EntryLogModelTearOff();

/// @nodoc
mixin _$EntryLogModel {
  @JsonKey(name: 'loggedinsecurity')
  String get loggedInSecurity;
  @JsonKey(name: 'logtype')
  String get logType;
  @JsonKey(name: 'userid')
  String get userId;
  @JsonKey(name: 'identity')
  String get identity;
  @JsonKey(name: 'servicerequid')
  String get servicerequid;
  @JsonKey(name: 'entrytype')
  String get entrytype;
  @JsonKey(name: 'logid')
  String get logID;
  @JsonKey(
      name: 'timedate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get timeDate;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EntryLogModelCopyWith<EntryLogModel> get copyWith;
}

/// @nodoc
abstract class $EntryLogModelCopyWith<$Res> {
  factory $EntryLogModelCopyWith(
          EntryLogModel value, $Res Function(EntryLogModel) then) =
      _$EntryLogModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'loggedinsecurity')
          String loggedInSecurity,
      @JsonKey(name: 'logtype')
          String logType,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'servicerequid')
          String servicerequid,
      @JsonKey(name: 'entrytype')
          String entrytype,
      @JsonKey(name: 'logid')
          String logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime timeDate,
      String id});
}

/// @nodoc
class _$EntryLogModelCopyWithImpl<$Res>
    implements $EntryLogModelCopyWith<$Res> {
  _$EntryLogModelCopyWithImpl(this._value, this._then);

  final EntryLogModel _value;
  // ignore: unused_field
  final $Res Function(EntryLogModel) _then;

  @override
  $Res call({
    Object loggedInSecurity = freezed,
    Object logType = freezed,
    Object userId = freezed,
    Object identity = freezed,
    Object servicerequid = freezed,
    Object entrytype = freezed,
    Object logID = freezed,
    Object timeDate = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      loggedInSecurity: loggedInSecurity == freezed
          ? _value.loggedInSecurity
          : loggedInSecurity as String,
      logType: logType == freezed ? _value.logType : logType as String,
      userId: userId == freezed ? _value.userId : userId as String,
      identity: identity == freezed ? _value.identity : identity as String,
      servicerequid: servicerequid == freezed
          ? _value.servicerequid
          : servicerequid as String,
      entrytype: entrytype == freezed ? _value.entrytype : entrytype as String,
      logID: logID == freezed ? _value.logID : logID as String,
      timeDate: timeDate == freezed ? _value.timeDate : timeDate as DateTime,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$EntryLogModelCopyWith<$Res>
    implements $EntryLogModelCopyWith<$Res> {
  factory _$EntryLogModelCopyWith(
          _EntryLogModel value, $Res Function(_EntryLogModel) then) =
      __$EntryLogModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'loggedinsecurity')
          String loggedInSecurity,
      @JsonKey(name: 'logtype')
          String logType,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'servicerequid')
          String servicerequid,
      @JsonKey(name: 'entrytype')
          String entrytype,
      @JsonKey(name: 'logid')
          String logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime timeDate,
      String id});
}

/// @nodoc
class __$EntryLogModelCopyWithImpl<$Res>
    extends _$EntryLogModelCopyWithImpl<$Res>
    implements _$EntryLogModelCopyWith<$Res> {
  __$EntryLogModelCopyWithImpl(
      _EntryLogModel _value, $Res Function(_EntryLogModel) _then)
      : super(_value, (v) => _then(v as _EntryLogModel));

  @override
  _EntryLogModel get _value => super._value as _EntryLogModel;

  @override
  $Res call({
    Object loggedInSecurity = freezed,
    Object logType = freezed,
    Object userId = freezed,
    Object identity = freezed,
    Object servicerequid = freezed,
    Object entrytype = freezed,
    Object logID = freezed,
    Object timeDate = freezed,
    Object id = freezed,
  }) {
    return _then(_EntryLogModel(
      loggedInSecurity: loggedInSecurity == freezed
          ? _value.loggedInSecurity
          : loggedInSecurity as String,
      logType: logType == freezed ? _value.logType : logType as String,
      userId: userId == freezed ? _value.userId : userId as String,
      identity: identity == freezed ? _value.identity : identity as String,
      servicerequid: servicerequid == freezed
          ? _value.servicerequid
          : servicerequid as String,
      entrytype: entrytype == freezed ? _value.entrytype : entrytype as String,
      logID: logID == freezed ? _value.logID : logID as String,
      timeDate: timeDate == freezed ? _value.timeDate : timeDate as DateTime,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EntryLogModel with DiagnosticableTreeMixin implements _EntryLogModel {
  _$_EntryLogModel(
      {@JsonKey(name: 'loggedinsecurity')
          this.loggedInSecurity,
      @JsonKey(name: 'logtype')
          this.logType,
      @JsonKey(name: 'userid')
          this.userId,
      @JsonKey(name: 'identity')
          this.identity,
      @JsonKey(name: 'servicerequid')
          this.servicerequid,
      @JsonKey(name: 'entrytype')
          this.entrytype,
      @JsonKey(name: 'logid')
          this.logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.timeDate,
      this.id});

  factory _$_EntryLogModel.fromJson(Map<String, dynamic> json) =>
      _$_$_EntryLogModelFromJson(json);

  @override
  @JsonKey(name: 'loggedinsecurity')
  final String loggedInSecurity;
  @override
  @JsonKey(name: 'logtype')
  final String logType;
  @override
  @JsonKey(name: 'userid')
  final String userId;
  @override
  @JsonKey(name: 'identity')
  final String identity;
  @override
  @JsonKey(name: 'servicerequid')
  final String servicerequid;
  @override
  @JsonKey(name: 'entrytype')
  final String entrytype;
  @override
  @JsonKey(name: 'logid')
  final String logID;
  @override
  @JsonKey(
      name: 'timedate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime timeDate;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryLogModel(loggedInSecurity: $loggedInSecurity, logType: $logType, userId: $userId, identity: $identity, servicerequid: $servicerequid, entrytype: $entrytype, logID: $logID, timeDate: $timeDate, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryLogModel'))
      ..add(DiagnosticsProperty('loggedInSecurity', loggedInSecurity))
      ..add(DiagnosticsProperty('logType', logType))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('identity', identity))
      ..add(DiagnosticsProperty('servicerequid', servicerequid))
      ..add(DiagnosticsProperty('entrytype', entrytype))
      ..add(DiagnosticsProperty('logID', logID))
      ..add(DiagnosticsProperty('timeDate', timeDate))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EntryLogModel &&
            (identical(other.loggedInSecurity, loggedInSecurity) ||
                const DeepCollectionEquality()
                    .equals(other.loggedInSecurity, loggedInSecurity)) &&
            (identical(other.logType, logType) ||
                const DeepCollectionEquality()
                    .equals(other.logType, logType)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.identity, identity) ||
                const DeepCollectionEquality()
                    .equals(other.identity, identity)) &&
            (identical(other.servicerequid, servicerequid) ||
                const DeepCollectionEquality()
                    .equals(other.servicerequid, servicerequid)) &&
            (identical(other.entrytype, entrytype) ||
                const DeepCollectionEquality()
                    .equals(other.entrytype, entrytype)) &&
            (identical(other.logID, logID) ||
                const DeepCollectionEquality().equals(other.logID, logID)) &&
            (identical(other.timeDate, timeDate) ||
                const DeepCollectionEquality()
                    .equals(other.timeDate, timeDate)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedInSecurity) ^
      const DeepCollectionEquality().hash(logType) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(identity) ^
      const DeepCollectionEquality().hash(servicerequid) ^
      const DeepCollectionEquality().hash(entrytype) ^
      const DeepCollectionEquality().hash(logID) ^
      const DeepCollectionEquality().hash(timeDate) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EntryLogModelCopyWith<_EntryLogModel> get copyWith =>
      __$EntryLogModelCopyWithImpl<_EntryLogModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EntryLogModelToJson(this);
  }
}

abstract class _EntryLogModel implements EntryLogModel {
  factory _EntryLogModel(
      {@JsonKey(name: 'loggedinsecurity')
          String loggedInSecurity,
      @JsonKey(name: 'logtype')
          String logType,
      @JsonKey(name: 'userid')
          String userId,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'servicerequid')
          String servicerequid,
      @JsonKey(name: 'entrytype')
          String entrytype,
      @JsonKey(name: 'logid')
          String logID,
      @JsonKey(name: 'timedate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime timeDate,
      String id}) = _$_EntryLogModel;

  factory _EntryLogModel.fromJson(Map<String, dynamic> json) =
      _$_EntryLogModel.fromJson;

  @override
  @JsonKey(name: 'loggedinsecurity')
  String get loggedInSecurity;
  @override
  @JsonKey(name: 'logtype')
  String get logType;
  @override
  @JsonKey(name: 'userid')
  String get userId;
  @override
  @JsonKey(name: 'identity')
  String get identity;
  @override
  @JsonKey(name: 'servicerequid')
  String get servicerequid;
  @override
  @JsonKey(name: 'entrytype')
  String get entrytype;
  @override
  @JsonKey(name: 'logid')
  String get logID;
  @override
  @JsonKey(
      name: 'timedate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get timeDate;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$EntryLogModelCopyWith<_EntryLogModel> get copyWith;
}

FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) {
  return _FamilyMember.fromJson(json);
}

/// @nodoc
class _$FamilyMemberTearOff {
  const _$FamilyMemberTearOff();

// ignore: unused_element
  _FamilyMember call(
      {@JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'modelid') String modelId,
      @JsonKey(name: 'vehiclenumber') String vehiclenumber,
      @JsonKey(name: 'qrcodeimg') String qrcodeimg,
      @JsonKey(name: 'vehicleactivate') bool vehicleactivate}) {
    return _FamilyMember(
      userId: userId,
      name: name,
      email: email,
      modelId: modelId,
      vehiclenumber: vehiclenumber,
      qrcodeimg: qrcodeimg,
      vehicleactivate: vehicleactivate,
    );
  }

// ignore: unused_element
  FamilyMember fromJson(Map<String, Object> json) {
    return FamilyMember.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FamilyMember = _$FamilyMemberTearOff();

/// @nodoc
mixin _$FamilyMember {
  @JsonKey(name: 'userid')
  String get userId;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'modelid')
  String get modelId;
  @JsonKey(name: 'vehiclenumber')
  String get vehiclenumber;
  @JsonKey(name: 'qrcodeimg')
  String get qrcodeimg;
  @JsonKey(name: 'vehicleactivate')
  bool get vehicleactivate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FamilyMemberCopyWith<FamilyMember> get copyWith;
}

/// @nodoc
abstract class $FamilyMemberCopyWith<$Res> {
  factory $FamilyMemberCopyWith(
          FamilyMember value, $Res Function(FamilyMember) then) =
      _$FamilyMemberCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'modelid') String modelId,
      @JsonKey(name: 'vehiclenumber') String vehiclenumber,
      @JsonKey(name: 'qrcodeimg') String qrcodeimg,
      @JsonKey(name: 'vehicleactivate') bool vehicleactivate});
}

/// @nodoc
class _$FamilyMemberCopyWithImpl<$Res> implements $FamilyMemberCopyWith<$Res> {
  _$FamilyMemberCopyWithImpl(this._value, this._then);

  final FamilyMember _value;
  // ignore: unused_field
  final $Res Function(FamilyMember) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object modelId = freezed,
    Object vehiclenumber = freezed,
    Object qrcodeimg = freezed,
    Object vehicleactivate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      modelId: modelId == freezed ? _value.modelId : modelId as String,
      vehiclenumber: vehiclenumber == freezed
          ? _value.vehiclenumber
          : vehiclenumber as String,
      qrcodeimg: qrcodeimg == freezed ? _value.qrcodeimg : qrcodeimg as String,
      vehicleactivate: vehicleactivate == freezed
          ? _value.vehicleactivate
          : vehicleactivate as bool,
    ));
  }
}

/// @nodoc
abstract class _$FamilyMemberCopyWith<$Res>
    implements $FamilyMemberCopyWith<$Res> {
  factory _$FamilyMemberCopyWith(
          _FamilyMember value, $Res Function(_FamilyMember) then) =
      __$FamilyMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userid') String userId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'modelid') String modelId,
      @JsonKey(name: 'vehiclenumber') String vehiclenumber,
      @JsonKey(name: 'qrcodeimg') String qrcodeimg,
      @JsonKey(name: 'vehicleactivate') bool vehicleactivate});
}

/// @nodoc
class __$FamilyMemberCopyWithImpl<$Res> extends _$FamilyMemberCopyWithImpl<$Res>
    implements _$FamilyMemberCopyWith<$Res> {
  __$FamilyMemberCopyWithImpl(
      _FamilyMember _value, $Res Function(_FamilyMember) _then)
      : super(_value, (v) => _then(v as _FamilyMember));

  @override
  _FamilyMember get _value => super._value as _FamilyMember;

  @override
  $Res call({
    Object userId = freezed,
    Object name = freezed,
    Object email = freezed,
    Object modelId = freezed,
    Object vehiclenumber = freezed,
    Object qrcodeimg = freezed,
    Object vehicleactivate = freezed,
  }) {
    return _then(_FamilyMember(
      userId: userId == freezed ? _value.userId : userId as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      modelId: modelId == freezed ? _value.modelId : modelId as String,
      vehiclenumber: vehiclenumber == freezed
          ? _value.vehiclenumber
          : vehiclenumber as String,
      qrcodeimg: qrcodeimg == freezed ? _value.qrcodeimg : qrcodeimg as String,
      vehicleactivate: vehicleactivate == freezed
          ? _value.vehicleactivate
          : vehicleactivate as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FamilyMember with DiagnosticableTreeMixin implements _FamilyMember {
  _$_FamilyMember(
      {@JsonKey(name: 'userid') this.userId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'modelid') this.modelId,
      @JsonKey(name: 'vehiclenumber') this.vehiclenumber,
      @JsonKey(name: 'qrcodeimg') this.qrcodeimg,
      @JsonKey(name: 'vehicleactivate') this.vehicleactivate});

  factory _$_FamilyMember.fromJson(Map<String, dynamic> json) =>
      _$_$_FamilyMemberFromJson(json);

  @override
  @JsonKey(name: 'userid')
  final String userId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'modelid')
  final String modelId;
  @override
  @JsonKey(name: 'vehiclenumber')
  final String vehiclenumber;
  @override
  @JsonKey(name: 'qrcodeimg')
  final String qrcodeimg;
  @override
  @JsonKey(name: 'vehicleactivate')
  final bool vehicleactivate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FamilyMember(userId: $userId, name: $name, email: $email, modelId: $modelId, vehiclenumber: $vehiclenumber, qrcodeimg: $qrcodeimg, vehicleactivate: $vehicleactivate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FamilyMember'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('modelId', modelId))
      ..add(DiagnosticsProperty('vehiclenumber', vehiclenumber))
      ..add(DiagnosticsProperty('qrcodeimg', qrcodeimg))
      ..add(DiagnosticsProperty('vehicleactivate', vehicleactivate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FamilyMember &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.modelId, modelId) ||
                const DeepCollectionEquality()
                    .equals(other.modelId, modelId)) &&
            (identical(other.vehiclenumber, vehiclenumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclenumber, vehiclenumber)) &&
            (identical(other.qrcodeimg, qrcodeimg) ||
                const DeepCollectionEquality()
                    .equals(other.qrcodeimg, qrcodeimg)) &&
            (identical(other.vehicleactivate, vehicleactivate) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleactivate, vehicleactivate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(modelId) ^
      const DeepCollectionEquality().hash(vehiclenumber) ^
      const DeepCollectionEquality().hash(qrcodeimg) ^
      const DeepCollectionEquality().hash(vehicleactivate);

  @JsonKey(ignore: true)
  @override
  _$FamilyMemberCopyWith<_FamilyMember> get copyWith =>
      __$FamilyMemberCopyWithImpl<_FamilyMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FamilyMemberToJson(this);
  }
}

abstract class _FamilyMember implements FamilyMember {
  factory _FamilyMember(
          {@JsonKey(name: 'userid') String userId,
          @JsonKey(name: 'name') String name,
          @JsonKey(name: 'email') String email,
          @JsonKey(name: 'modelid') String modelId,
          @JsonKey(name: 'vehiclenumber') String vehiclenumber,
          @JsonKey(name: 'qrcodeimg') String qrcodeimg,
          @JsonKey(name: 'vehicleactivate') bool vehicleactivate}) =
      _$_FamilyMember;

  factory _FamilyMember.fromJson(Map<String, dynamic> json) =
      _$_FamilyMember.fromJson;

  @override
  @JsonKey(name: 'userid')
  String get userId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'modelid')
  String get modelId;
  @override
  @JsonKey(name: 'vehiclenumber')
  String get vehiclenumber;
  @override
  @JsonKey(name: 'qrcodeimg')
  String get qrcodeimg;
  @override
  @JsonKey(name: 'vehicleactivate')
  bool get vehicleactivate;
  @override
  @JsonKey(ignore: true)
  _$FamilyMemberCopyWith<_FamilyMember> get copyWith;
}

QRCodeModel _$QRCodeModelFromJson(Map<String, dynamic> json) {
  return _QRCodeModel.fromJson(json);
}

/// @nodoc
class _$QRCodeModelTearOff {
  const _$QRCodeModelTearOff();

// ignore: unused_element
  _QRCodeModel call(
      {@JsonKey(name: 'entitytpe')
          String entityTpe,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'residentdetailsid')
          String residentdetailsid,
      @JsonKey(name: 'foruserid')
          String foruserid,
      @JsonKey(name: 'forservicereqid')
          String forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime enddate,
      String id}) {
    return _QRCodeModel(
      entityTpe: entityTpe,
      identity: identity,
      userid: userid,
      residentdetailsid: residentdetailsid,
      foruserid: foruserid,
      forservicereqid: forservicereqid,
      startdate: startdate,
      enddate: enddate,
      id: id,
    );
  }

// ignore: unused_element
  QRCodeModel fromJson(Map<String, Object> json) {
    return QRCodeModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $QRCodeModel = _$QRCodeModelTearOff();

/// @nodoc
mixin _$QRCodeModel {
  @JsonKey(name: 'entitytpe')
  String get entityTpe;
  @JsonKey(name: 'identity')
  String get identity;
  @JsonKey(name: 'userid')
  String get userid;
  @JsonKey(name: 'residentdetailsid')
  String get residentdetailsid;
  @JsonKey(name: 'foruserid')
  String get foruserid;
  @JsonKey(name: 'forservicereqid')
  String get forservicereqid;
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startdate;
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get enddate;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $QRCodeModelCopyWith<QRCodeModel> get copyWith;
}

/// @nodoc
abstract class $QRCodeModelCopyWith<$Res> {
  factory $QRCodeModelCopyWith(
          QRCodeModel value, $Res Function(QRCodeModel) then) =
      _$QRCodeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'entitytpe')
          String entityTpe,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'residentdetailsid')
          String residentdetailsid,
      @JsonKey(name: 'foruserid')
          String foruserid,
      @JsonKey(name: 'forservicereqid')
          String forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime enddate,
      String id});
}

/// @nodoc
class _$QRCodeModelCopyWithImpl<$Res> implements $QRCodeModelCopyWith<$Res> {
  _$QRCodeModelCopyWithImpl(this._value, this._then);

  final QRCodeModel _value;
  // ignore: unused_field
  final $Res Function(QRCodeModel) _then;

  @override
  $Res call({
    Object entityTpe = freezed,
    Object identity = freezed,
    Object userid = freezed,
    Object residentdetailsid = freezed,
    Object foruserid = freezed,
    Object forservicereqid = freezed,
    Object startdate = freezed,
    Object enddate = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      entityTpe: entityTpe == freezed ? _value.entityTpe : entityTpe as String,
      identity: identity == freezed ? _value.identity : identity as String,
      userid: userid == freezed ? _value.userid : userid as String,
      residentdetailsid: residentdetailsid == freezed
          ? _value.residentdetailsid
          : residentdetailsid as String,
      foruserid: foruserid == freezed ? _value.foruserid : foruserid as String,
      forservicereqid: forservicereqid == freezed
          ? _value.forservicereqid
          : forservicereqid as String,
      startdate:
          startdate == freezed ? _value.startdate : startdate as DateTime,
      enddate: enddate == freezed ? _value.enddate : enddate as DateTime,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$QRCodeModelCopyWith<$Res>
    implements $QRCodeModelCopyWith<$Res> {
  factory _$QRCodeModelCopyWith(
          _QRCodeModel value, $Res Function(_QRCodeModel) then) =
      __$QRCodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'entitytpe')
          String entityTpe,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'residentdetailsid')
          String residentdetailsid,
      @JsonKey(name: 'foruserid')
          String foruserid,
      @JsonKey(name: 'forservicereqid')
          String forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime enddate,
      String id});
}

/// @nodoc
class __$QRCodeModelCopyWithImpl<$Res> extends _$QRCodeModelCopyWithImpl<$Res>
    implements _$QRCodeModelCopyWith<$Res> {
  __$QRCodeModelCopyWithImpl(
      _QRCodeModel _value, $Res Function(_QRCodeModel) _then)
      : super(_value, (v) => _then(v as _QRCodeModel));

  @override
  _QRCodeModel get _value => super._value as _QRCodeModel;

  @override
  $Res call({
    Object entityTpe = freezed,
    Object identity = freezed,
    Object userid = freezed,
    Object residentdetailsid = freezed,
    Object foruserid = freezed,
    Object forservicereqid = freezed,
    Object startdate = freezed,
    Object enddate = freezed,
    Object id = freezed,
  }) {
    return _then(_QRCodeModel(
      entityTpe: entityTpe == freezed ? _value.entityTpe : entityTpe as String,
      identity: identity == freezed ? _value.identity : identity as String,
      userid: userid == freezed ? _value.userid : userid as String,
      residentdetailsid: residentdetailsid == freezed
          ? _value.residentdetailsid
          : residentdetailsid as String,
      foruserid: foruserid == freezed ? _value.foruserid : foruserid as String,
      forservicereqid: forservicereqid == freezed
          ? _value.forservicereqid
          : forservicereqid as String,
      startdate:
          startdate == freezed ? _value.startdate : startdate as DateTime,
      enddate: enddate == freezed ? _value.enddate : enddate as DateTime,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QRCodeModel with DiagnosticableTreeMixin implements _QRCodeModel {
  _$_QRCodeModel(
      {@JsonKey(name: 'entitytpe')
          this.entityTpe,
      @JsonKey(name: 'identity')
          this.identity,
      @JsonKey(name: 'userid')
          this.userid,
      @JsonKey(name: 'residentdetailsid')
          this.residentdetailsid,
      @JsonKey(name: 'foruserid')
          this.foruserid,
      @JsonKey(name: 'forservicereqid')
          this.forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.enddate,
      this.id});

  factory _$_QRCodeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_QRCodeModelFromJson(json);

  @override
  @JsonKey(name: 'entitytpe')
  final String entityTpe;
  @override
  @JsonKey(name: 'identity')
  final String identity;
  @override
  @JsonKey(name: 'userid')
  final String userid;
  @override
  @JsonKey(name: 'residentdetailsid')
  final String residentdetailsid;
  @override
  @JsonKey(name: 'foruserid')
  final String foruserid;
  @override
  @JsonKey(name: 'forservicereqid')
  final String forservicereqid;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startdate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime enddate;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QRCodeModel(entityTpe: $entityTpe, identity: $identity, userid: $userid, residentdetailsid: $residentdetailsid, foruserid: $foruserid, forservicereqid: $forservicereqid, startdate: $startdate, enddate: $enddate, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QRCodeModel'))
      ..add(DiagnosticsProperty('entityTpe', entityTpe))
      ..add(DiagnosticsProperty('identity', identity))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('residentdetailsid', residentdetailsid))
      ..add(DiagnosticsProperty('foruserid', foruserid))
      ..add(DiagnosticsProperty('forservicereqid', forservicereqid))
      ..add(DiagnosticsProperty('startdate', startdate))
      ..add(DiagnosticsProperty('enddate', enddate))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QRCodeModel &&
            (identical(other.entityTpe, entityTpe) ||
                const DeepCollectionEquality()
                    .equals(other.entityTpe, entityTpe)) &&
            (identical(other.identity, identity) ||
                const DeepCollectionEquality()
                    .equals(other.identity, identity)) &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.residentdetailsid, residentdetailsid) ||
                const DeepCollectionEquality()
                    .equals(other.residentdetailsid, residentdetailsid)) &&
            (identical(other.foruserid, foruserid) ||
                const DeepCollectionEquality()
                    .equals(other.foruserid, foruserid)) &&
            (identical(other.forservicereqid, forservicereqid) ||
                const DeepCollectionEquality()
                    .equals(other.forservicereqid, forservicereqid)) &&
            (identical(other.startdate, startdate) ||
                const DeepCollectionEquality()
                    .equals(other.startdate, startdate)) &&
            (identical(other.enddate, enddate) ||
                const DeepCollectionEquality()
                    .equals(other.enddate, enddate)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entityTpe) ^
      const DeepCollectionEquality().hash(identity) ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(residentdetailsid) ^
      const DeepCollectionEquality().hash(foruserid) ^
      const DeepCollectionEquality().hash(forservicereqid) ^
      const DeepCollectionEquality().hash(startdate) ^
      const DeepCollectionEquality().hash(enddate) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$QRCodeModelCopyWith<_QRCodeModel> get copyWith =>
      __$QRCodeModelCopyWithImpl<_QRCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QRCodeModelToJson(this);
  }
}

abstract class _QRCodeModel implements QRCodeModel {
  factory _QRCodeModel(
      {@JsonKey(name: 'entitytpe')
          String entityTpe,
      @JsonKey(name: 'identity')
          String identity,
      @JsonKey(name: 'userid')
          String userid,
      @JsonKey(name: 'residentdetailsid')
          String residentdetailsid,
      @JsonKey(name: 'foruserid')
          String foruserid,
      @JsonKey(name: 'forservicereqid')
          String forservicereqid,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startdate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime enddate,
      String id}) = _$_QRCodeModel;

  factory _QRCodeModel.fromJson(Map<String, dynamic> json) =
      _$_QRCodeModel.fromJson;

  @override
  @JsonKey(name: 'entitytpe')
  String get entityTpe;
  @override
  @JsonKey(name: 'identity')
  String get identity;
  @override
  @JsonKey(name: 'userid')
  String get userid;
  @override
  @JsonKey(name: 'residentdetailsid')
  String get residentdetailsid;
  @override
  @JsonKey(name: 'foruserid')
  String get foruserid;
  @override
  @JsonKey(name: 'forservicereqid')
  String get forservicereqid;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startdate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get enddate;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$QRCodeModelCopyWith<_QRCodeModel> get copyWith;
}

RegistryModel _$RegistryModelFromJson(Map<String, dynamic> json) {
  return _RegistryModel.fromJson(json);
}

/// @nodoc
class _$RegistryModelTearOff {
  const _$RegistryModelTearOff();

// ignore: unused_element
  _RegistryModel call(
      {@JsonKey(name: 'ownergroup')
          String ownerGroup,
      @JsonKey(name: 'ownermanagementposition')
          String ownerManagementPosition,
      @JsonKey(name: 'residentmanagementposition')
          String residentManagementPosition,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'ownerpublishedcontact')
          String ownerPublishedContact,
      @JsonKey(name: 'ownertoken')
          String ownerToken,
      @JsonKey(name: 'owneruserid')
          String ownerUserId,
      @JsonKey(name: 'residentname')
          String residentName,
      @JsonKey(name: 'residentpublishedcontact')
          String residentPublishedContact,
      @JsonKey(name: 'residenttoken')
          String residentToken,
      @JsonKey(name: 'residentuserid')
          String residentUserId,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'ownerrecvmsg')
          bool ownerRecvMsg,
      @JsonKey(name: 'residentresvmessage')
          bool residentResvMessage,
      @JsonKey(name: 'shareownercontactflag')
          bool shareownercontactflag,
      @JsonKey(name: 'shareresidentcontactflag')
          bool shareresidentcontactflag,
      @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerEndDate,
      @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerStartDate,
      @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentStartDate,
      @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentEndDate,
      @JsonKey(name: 'version')
          num version}) {
    return _RegistryModel(
      ownerGroup: ownerGroup,
      ownerManagementPosition: ownerManagementPosition,
      residentManagementPosition: residentManagementPosition,
      ownerName: ownerName,
      ownerPublishedContact: ownerPublishedContact,
      ownerToken: ownerToken,
      ownerUserId: ownerUserId,
      residentName: residentName,
      residentPublishedContact: residentPublishedContact,
      residentToken: residentToken,
      residentUserId: residentUserId,
      unitAddress: unitAddress,
      ownerRecvMsg: ownerRecvMsg,
      residentResvMessage: residentResvMessage,
      shareownercontactflag: shareownercontactflag,
      shareresidentcontactflag: shareresidentcontactflag,
      ownerEndDate: ownerEndDate,
      ownerStartDate: ownerStartDate,
      residentStartDate: residentStartDate,
      residentEndDate: residentEndDate,
      version: version,
    );
  }

// ignore: unused_element
  RegistryModel fromJson(Map<String, Object> json) {
    return RegistryModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegistryModel = _$RegistryModelTearOff();

/// @nodoc
mixin _$RegistryModel {
  @JsonKey(name: 'ownergroup')
  String get ownerGroup;
  @JsonKey(name: 'ownermanagementposition')
  String get ownerManagementPosition;
  @JsonKey(name: 'residentmanagementposition')
  String get residentManagementPosition;
  @JsonKey(name: 'ownername')
  String get ownerName;
  @JsonKey(name: 'ownerpublishedcontact')
  String get ownerPublishedContact;
  @JsonKey(name: 'ownertoken')
  String get ownerToken;
  @JsonKey(name: 'owneruserid')
  String get ownerUserId;
  @JsonKey(name: 'residentname')
  String get residentName;
  @JsonKey(name: 'residentpublishedcontact')
  String get residentPublishedContact;
  @JsonKey(name: 'residenttoken')
  String get residentToken;
  @JsonKey(name: 'residentuserid')
  String get residentUserId;
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @JsonKey(name: 'ownerrecvmsg')
  bool get ownerRecvMsg;
  @JsonKey(name: 'residentresvmessage')
  bool get residentResvMessage;
  @JsonKey(name: 'shareownercontactflag')
  bool get shareownercontactflag;
  @JsonKey(name: 'shareresidentcontactflag')
  bool get shareresidentcontactflag;
  @JsonKey(
      name: 'ownerenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get ownerEndDate;
  @JsonKey(
      name: 'ownerstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get ownerStartDate;
  @JsonKey(
      name: 'residentstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get residentStartDate;
  @JsonKey(
      name: 'residentenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get residentEndDate;
  @JsonKey(name: 'version')
  num get version;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegistryModelCopyWith<RegistryModel> get copyWith;
}

/// @nodoc
abstract class $RegistryModelCopyWith<$Res> {
  factory $RegistryModelCopyWith(
          RegistryModel value, $Res Function(RegistryModel) then) =
      _$RegistryModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ownergroup')
          String ownerGroup,
      @JsonKey(name: 'ownermanagementposition')
          String ownerManagementPosition,
      @JsonKey(name: 'residentmanagementposition')
          String residentManagementPosition,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'ownerpublishedcontact')
          String ownerPublishedContact,
      @JsonKey(name: 'ownertoken')
          String ownerToken,
      @JsonKey(name: 'owneruserid')
          String ownerUserId,
      @JsonKey(name: 'residentname')
          String residentName,
      @JsonKey(name: 'residentpublishedcontact')
          String residentPublishedContact,
      @JsonKey(name: 'residenttoken')
          String residentToken,
      @JsonKey(name: 'residentuserid')
          String residentUserId,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'ownerrecvmsg')
          bool ownerRecvMsg,
      @JsonKey(name: 'residentresvmessage')
          bool residentResvMessage,
      @JsonKey(name: 'shareownercontactflag')
          bool shareownercontactflag,
      @JsonKey(name: 'shareresidentcontactflag')
          bool shareresidentcontactflag,
      @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerEndDate,
      @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerStartDate,
      @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentStartDate,
      @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentEndDate,
      @JsonKey(name: 'version')
          num version});
}

/// @nodoc
class _$RegistryModelCopyWithImpl<$Res>
    implements $RegistryModelCopyWith<$Res> {
  _$RegistryModelCopyWithImpl(this._value, this._then);

  final RegistryModel _value;
  // ignore: unused_field
  final $Res Function(RegistryModel) _then;

  @override
  $Res call({
    Object ownerGroup = freezed,
    Object ownerManagementPosition = freezed,
    Object residentManagementPosition = freezed,
    Object ownerName = freezed,
    Object ownerPublishedContact = freezed,
    Object ownerToken = freezed,
    Object ownerUserId = freezed,
    Object residentName = freezed,
    Object residentPublishedContact = freezed,
    Object residentToken = freezed,
    Object residentUserId = freezed,
    Object unitAddress = freezed,
    Object ownerRecvMsg = freezed,
    Object residentResvMessage = freezed,
    Object shareownercontactflag = freezed,
    Object shareresidentcontactflag = freezed,
    Object ownerEndDate = freezed,
    Object ownerStartDate = freezed,
    Object residentStartDate = freezed,
    Object residentEndDate = freezed,
    Object version = freezed,
  }) {
    return _then(_value.copyWith(
      ownerGroup:
          ownerGroup == freezed ? _value.ownerGroup : ownerGroup as String,
      ownerManagementPosition: ownerManagementPosition == freezed
          ? _value.ownerManagementPosition
          : ownerManagementPosition as String,
      residentManagementPosition: residentManagementPosition == freezed
          ? _value.residentManagementPosition
          : residentManagementPosition as String,
      ownerName: ownerName == freezed ? _value.ownerName : ownerName as String,
      ownerPublishedContact: ownerPublishedContact == freezed
          ? _value.ownerPublishedContact
          : ownerPublishedContact as String,
      ownerToken:
          ownerToken == freezed ? _value.ownerToken : ownerToken as String,
      ownerUserId:
          ownerUserId == freezed ? _value.ownerUserId : ownerUserId as String,
      residentName: residentName == freezed
          ? _value.residentName
          : residentName as String,
      residentPublishedContact: residentPublishedContact == freezed
          ? _value.residentPublishedContact
          : residentPublishedContact as String,
      residentToken: residentToken == freezed
          ? _value.residentToken
          : residentToken as String,
      residentUserId: residentUserId == freezed
          ? _value.residentUserId
          : residentUserId as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      ownerRecvMsg:
          ownerRecvMsg == freezed ? _value.ownerRecvMsg : ownerRecvMsg as bool,
      residentResvMessage: residentResvMessage == freezed
          ? _value.residentResvMessage
          : residentResvMessage as bool,
      shareownercontactflag: shareownercontactflag == freezed
          ? _value.shareownercontactflag
          : shareownercontactflag as bool,
      shareresidentcontactflag: shareresidentcontactflag == freezed
          ? _value.shareresidentcontactflag
          : shareresidentcontactflag as bool,
      ownerEndDate: ownerEndDate == freezed
          ? _value.ownerEndDate
          : ownerEndDate as DateTime,
      ownerStartDate: ownerStartDate == freezed
          ? _value.ownerStartDate
          : ownerStartDate as DateTime,
      residentStartDate: residentStartDate == freezed
          ? _value.residentStartDate
          : residentStartDate as DateTime,
      residentEndDate: residentEndDate == freezed
          ? _value.residentEndDate
          : residentEndDate as DateTime,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

/// @nodoc
abstract class _$RegistryModelCopyWith<$Res>
    implements $RegistryModelCopyWith<$Res> {
  factory _$RegistryModelCopyWith(
          _RegistryModel value, $Res Function(_RegistryModel) then) =
      __$RegistryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ownergroup')
          String ownerGroup,
      @JsonKey(name: 'ownermanagementposition')
          String ownerManagementPosition,
      @JsonKey(name: 'residentmanagementposition')
          String residentManagementPosition,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'ownerpublishedcontact')
          String ownerPublishedContact,
      @JsonKey(name: 'ownertoken')
          String ownerToken,
      @JsonKey(name: 'owneruserid')
          String ownerUserId,
      @JsonKey(name: 'residentname')
          String residentName,
      @JsonKey(name: 'residentpublishedcontact')
          String residentPublishedContact,
      @JsonKey(name: 'residenttoken')
          String residentToken,
      @JsonKey(name: 'residentuserid')
          String residentUserId,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'ownerrecvmsg')
          bool ownerRecvMsg,
      @JsonKey(name: 'residentresvmessage')
          bool residentResvMessage,
      @JsonKey(name: 'shareownercontactflag')
          bool shareownercontactflag,
      @JsonKey(name: 'shareresidentcontactflag')
          bool shareresidentcontactflag,
      @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerEndDate,
      @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerStartDate,
      @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentStartDate,
      @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentEndDate,
      @JsonKey(name: 'version')
          num version});
}

/// @nodoc
class __$RegistryModelCopyWithImpl<$Res>
    extends _$RegistryModelCopyWithImpl<$Res>
    implements _$RegistryModelCopyWith<$Res> {
  __$RegistryModelCopyWithImpl(
      _RegistryModel _value, $Res Function(_RegistryModel) _then)
      : super(_value, (v) => _then(v as _RegistryModel));

  @override
  _RegistryModel get _value => super._value as _RegistryModel;

  @override
  $Res call({
    Object ownerGroup = freezed,
    Object ownerManagementPosition = freezed,
    Object residentManagementPosition = freezed,
    Object ownerName = freezed,
    Object ownerPublishedContact = freezed,
    Object ownerToken = freezed,
    Object ownerUserId = freezed,
    Object residentName = freezed,
    Object residentPublishedContact = freezed,
    Object residentToken = freezed,
    Object residentUserId = freezed,
    Object unitAddress = freezed,
    Object ownerRecvMsg = freezed,
    Object residentResvMessage = freezed,
    Object shareownercontactflag = freezed,
    Object shareresidentcontactflag = freezed,
    Object ownerEndDate = freezed,
    Object ownerStartDate = freezed,
    Object residentStartDate = freezed,
    Object residentEndDate = freezed,
    Object version = freezed,
  }) {
    return _then(_RegistryModel(
      ownerGroup:
          ownerGroup == freezed ? _value.ownerGroup : ownerGroup as String,
      ownerManagementPosition: ownerManagementPosition == freezed
          ? _value.ownerManagementPosition
          : ownerManagementPosition as String,
      residentManagementPosition: residentManagementPosition == freezed
          ? _value.residentManagementPosition
          : residentManagementPosition as String,
      ownerName: ownerName == freezed ? _value.ownerName : ownerName as String,
      ownerPublishedContact: ownerPublishedContact == freezed
          ? _value.ownerPublishedContact
          : ownerPublishedContact as String,
      ownerToken:
          ownerToken == freezed ? _value.ownerToken : ownerToken as String,
      ownerUserId:
          ownerUserId == freezed ? _value.ownerUserId : ownerUserId as String,
      residentName: residentName == freezed
          ? _value.residentName
          : residentName as String,
      residentPublishedContact: residentPublishedContact == freezed
          ? _value.residentPublishedContact
          : residentPublishedContact as String,
      residentToken: residentToken == freezed
          ? _value.residentToken
          : residentToken as String,
      residentUserId: residentUserId == freezed
          ? _value.residentUserId
          : residentUserId as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      ownerRecvMsg:
          ownerRecvMsg == freezed ? _value.ownerRecvMsg : ownerRecvMsg as bool,
      residentResvMessage: residentResvMessage == freezed
          ? _value.residentResvMessage
          : residentResvMessage as bool,
      shareownercontactflag: shareownercontactflag == freezed
          ? _value.shareownercontactflag
          : shareownercontactflag as bool,
      shareresidentcontactflag: shareresidentcontactflag == freezed
          ? _value.shareresidentcontactflag
          : shareresidentcontactflag as bool,
      ownerEndDate: ownerEndDate == freezed
          ? _value.ownerEndDate
          : ownerEndDate as DateTime,
      ownerStartDate: ownerStartDate == freezed
          ? _value.ownerStartDate
          : ownerStartDate as DateTime,
      residentStartDate: residentStartDate == freezed
          ? _value.residentStartDate
          : residentStartDate as DateTime,
      residentEndDate: residentEndDate == freezed
          ? _value.residentEndDate
          : residentEndDate as DateTime,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegistryModel with DiagnosticableTreeMixin implements _RegistryModel {
  _$_RegistryModel(
      {@JsonKey(name: 'ownergroup')
          this.ownerGroup,
      @JsonKey(name: 'ownermanagementposition')
          this.ownerManagementPosition,
      @JsonKey(name: 'residentmanagementposition')
          this.residentManagementPosition,
      @JsonKey(name: 'ownername')
          this.ownerName,
      @JsonKey(name: 'ownerpublishedcontact')
          this.ownerPublishedContact,
      @JsonKey(name: 'ownertoken')
          this.ownerToken,
      @JsonKey(name: 'owneruserid')
          this.ownerUserId,
      @JsonKey(name: 'residentname')
          this.residentName,
      @JsonKey(name: 'residentpublishedcontact')
          this.residentPublishedContact,
      @JsonKey(name: 'residenttoken')
          this.residentToken,
      @JsonKey(name: 'residentuserid')
          this.residentUserId,
      @JsonKey(name: 'unitaddress')
          this.unitAddress,
      @JsonKey(name: 'ownerrecvmsg')
          this.ownerRecvMsg,
      @JsonKey(name: 'residentresvmessage')
          this.residentResvMessage,
      @JsonKey(name: 'shareownercontactflag')
          this.shareownercontactflag,
      @JsonKey(name: 'shareresidentcontactflag')
          this.shareresidentcontactflag,
      @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.ownerEndDate,
      @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.ownerStartDate,
      @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.residentStartDate,
      @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.residentEndDate,
      @JsonKey(name: 'version')
          this.version});

  factory _$_RegistryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistryModelFromJson(json);

  @override
  @JsonKey(name: 'ownergroup')
  final String ownerGroup;
  @override
  @JsonKey(name: 'ownermanagementposition')
  final String ownerManagementPosition;
  @override
  @JsonKey(name: 'residentmanagementposition')
  final String residentManagementPosition;
  @override
  @JsonKey(name: 'ownername')
  final String ownerName;
  @override
  @JsonKey(name: 'ownerpublishedcontact')
  final String ownerPublishedContact;
  @override
  @JsonKey(name: 'ownertoken')
  final String ownerToken;
  @override
  @JsonKey(name: 'owneruserid')
  final String ownerUserId;
  @override
  @JsonKey(name: 'residentname')
  final String residentName;
  @override
  @JsonKey(name: 'residentpublishedcontact')
  final String residentPublishedContact;
  @override
  @JsonKey(name: 'residenttoken')
  final String residentToken;
  @override
  @JsonKey(name: 'residentuserid')
  final String residentUserId;
  @override
  @JsonKey(name: 'unitaddress')
  final String unitAddress;
  @override
  @JsonKey(name: 'ownerrecvmsg')
  final bool ownerRecvMsg;
  @override
  @JsonKey(name: 'residentresvmessage')
  final bool residentResvMessage;
  @override
  @JsonKey(name: 'shareownercontactflag')
  final bool shareownercontactflag;
  @override
  @JsonKey(name: 'shareresidentcontactflag')
  final bool shareresidentcontactflag;
  @override
  @JsonKey(
      name: 'ownerenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime ownerEndDate;
  @override
  @JsonKey(
      name: 'ownerstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime ownerStartDate;
  @override
  @JsonKey(
      name: 'residentstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime residentStartDate;
  @override
  @JsonKey(
      name: 'residentenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime residentEndDate;
  @override
  @JsonKey(name: 'version')
  final num version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistryModel(ownerGroup: $ownerGroup, ownerManagementPosition: $ownerManagementPosition, residentManagementPosition: $residentManagementPosition, ownerName: $ownerName, ownerPublishedContact: $ownerPublishedContact, ownerToken: $ownerToken, ownerUserId: $ownerUserId, residentName: $residentName, residentPublishedContact: $residentPublishedContact, residentToken: $residentToken, residentUserId: $residentUserId, unitAddress: $unitAddress, ownerRecvMsg: $ownerRecvMsg, residentResvMessage: $residentResvMessage, shareownercontactflag: $shareownercontactflag, shareresidentcontactflag: $shareresidentcontactflag, ownerEndDate: $ownerEndDate, ownerStartDate: $ownerStartDate, residentStartDate: $residentStartDate, residentEndDate: $residentEndDate, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegistryModel'))
      ..add(DiagnosticsProperty('ownerGroup', ownerGroup))
      ..add(DiagnosticsProperty(
          'ownerManagementPosition', ownerManagementPosition))
      ..add(DiagnosticsProperty(
          'residentManagementPosition', residentManagementPosition))
      ..add(DiagnosticsProperty('ownerName', ownerName))
      ..add(DiagnosticsProperty('ownerPublishedContact', ownerPublishedContact))
      ..add(DiagnosticsProperty('ownerToken', ownerToken))
      ..add(DiagnosticsProperty('ownerUserId', ownerUserId))
      ..add(DiagnosticsProperty('residentName', residentName))
      ..add(DiagnosticsProperty(
          'residentPublishedContact', residentPublishedContact))
      ..add(DiagnosticsProperty('residentToken', residentToken))
      ..add(DiagnosticsProperty('residentUserId', residentUserId))
      ..add(DiagnosticsProperty('unitAddress', unitAddress))
      ..add(DiagnosticsProperty('ownerRecvMsg', ownerRecvMsg))
      ..add(DiagnosticsProperty('residentResvMessage', residentResvMessage))
      ..add(DiagnosticsProperty('shareownercontactflag', shareownercontactflag))
      ..add(DiagnosticsProperty(
          'shareresidentcontactflag', shareresidentcontactflag))
      ..add(DiagnosticsProperty('ownerEndDate', ownerEndDate))
      ..add(DiagnosticsProperty('ownerStartDate', ownerStartDate))
      ..add(DiagnosticsProperty('residentStartDate', residentStartDate))
      ..add(DiagnosticsProperty('residentEndDate', residentEndDate))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistryModel &&
            (identical(other.ownerGroup, ownerGroup) ||
                const DeepCollectionEquality()
                    .equals(other.ownerGroup, ownerGroup)) &&
            (identical(other.ownerManagementPosition, ownerManagementPosition) ||
                const DeepCollectionEquality().equals(
                    other.ownerManagementPosition, ownerManagementPosition)) &&
            (identical(other.residentManagementPosition, residentManagementPosition) ||
                const DeepCollectionEquality().equals(
                    other.residentManagementPosition,
                    residentManagementPosition)) &&
            (identical(other.ownerName, ownerName) ||
                const DeepCollectionEquality()
                    .equals(other.ownerName, ownerName)) &&
            (identical(other.ownerPublishedContact, ownerPublishedContact) ||
                const DeepCollectionEquality().equals(
                    other.ownerPublishedContact, ownerPublishedContact)) &&
            (identical(other.ownerToken, ownerToken) ||
                const DeepCollectionEquality()
                    .equals(other.ownerToken, ownerToken)) &&
            (identical(other.ownerUserId, ownerUserId) ||
                const DeepCollectionEquality()
                    .equals(other.ownerUserId, ownerUserId)) &&
            (identical(other.residentName, residentName) ||
                const DeepCollectionEquality()
                    .equals(other.residentName, residentName)) &&
            (identical(other.residentPublishedContact, residentPublishedContact) ||
                const DeepCollectionEquality().equals(
                    other.residentPublishedContact,
                    residentPublishedContact)) &&
            (identical(other.residentToken, residentToken) ||
                const DeepCollectionEquality()
                    .equals(other.residentToken, residentToken)) &&
            (identical(other.residentUserId, residentUserId) ||
                const DeepCollectionEquality()
                    .equals(other.residentUserId, residentUserId)) &&
            (identical(other.unitAddress, unitAddress) ||
                const DeepCollectionEquality()
                    .equals(other.unitAddress, unitAddress)) &&
            (identical(other.ownerRecvMsg, ownerRecvMsg) || const DeepCollectionEquality().equals(other.ownerRecvMsg, ownerRecvMsg)) &&
            (identical(other.residentResvMessage, residentResvMessage) || const DeepCollectionEquality().equals(other.residentResvMessage, residentResvMessage)) &&
            (identical(other.shareownercontactflag, shareownercontactflag) || const DeepCollectionEquality().equals(other.shareownercontactflag, shareownercontactflag)) &&
            (identical(other.shareresidentcontactflag, shareresidentcontactflag) || const DeepCollectionEquality().equals(other.shareresidentcontactflag, shareresidentcontactflag)) &&
            (identical(other.ownerEndDate, ownerEndDate) || const DeepCollectionEquality().equals(other.ownerEndDate, ownerEndDate)) &&
            (identical(other.ownerStartDate, ownerStartDate) || const DeepCollectionEquality().equals(other.ownerStartDate, ownerStartDate)) &&
            (identical(other.residentStartDate, residentStartDate) || const DeepCollectionEquality().equals(other.residentStartDate, residentStartDate)) &&
            (identical(other.residentEndDate, residentEndDate) || const DeepCollectionEquality().equals(other.residentEndDate, residentEndDate)) &&
            (identical(other.version, version) || const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ownerGroup) ^
      const DeepCollectionEquality().hash(ownerManagementPosition) ^
      const DeepCollectionEquality().hash(residentManagementPosition) ^
      const DeepCollectionEquality().hash(ownerName) ^
      const DeepCollectionEquality().hash(ownerPublishedContact) ^
      const DeepCollectionEquality().hash(ownerToken) ^
      const DeepCollectionEquality().hash(ownerUserId) ^
      const DeepCollectionEquality().hash(residentName) ^
      const DeepCollectionEquality().hash(residentPublishedContact) ^
      const DeepCollectionEquality().hash(residentToken) ^
      const DeepCollectionEquality().hash(residentUserId) ^
      const DeepCollectionEquality().hash(unitAddress) ^
      const DeepCollectionEquality().hash(ownerRecvMsg) ^
      const DeepCollectionEquality().hash(residentResvMessage) ^
      const DeepCollectionEquality().hash(shareownercontactflag) ^
      const DeepCollectionEquality().hash(shareresidentcontactflag) ^
      const DeepCollectionEquality().hash(ownerEndDate) ^
      const DeepCollectionEquality().hash(ownerStartDate) ^
      const DeepCollectionEquality().hash(residentStartDate) ^
      const DeepCollectionEquality().hash(residentEndDate) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$RegistryModelCopyWith<_RegistryModel> get copyWith =>
      __$RegistryModelCopyWithImpl<_RegistryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistryModelToJson(this);
  }
}

abstract class _RegistryModel implements RegistryModel {
  factory _RegistryModel(
      {@JsonKey(name: 'ownergroup')
          String ownerGroup,
      @JsonKey(name: 'ownermanagementposition')
          String ownerManagementPosition,
      @JsonKey(name: 'residentmanagementposition')
          String residentManagementPosition,
      @JsonKey(name: 'ownername')
          String ownerName,
      @JsonKey(name: 'ownerpublishedcontact')
          String ownerPublishedContact,
      @JsonKey(name: 'ownertoken')
          String ownerToken,
      @JsonKey(name: 'owneruserid')
          String ownerUserId,
      @JsonKey(name: 'residentname')
          String residentName,
      @JsonKey(name: 'residentpublishedcontact')
          String residentPublishedContact,
      @JsonKey(name: 'residenttoken')
          String residentToken,
      @JsonKey(name: 'residentuserid')
          String residentUserId,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'ownerrecvmsg')
          bool ownerRecvMsg,
      @JsonKey(name: 'residentresvmessage')
          bool residentResvMessage,
      @JsonKey(name: 'shareownercontactflag')
          bool shareownercontactflag,
      @JsonKey(name: 'shareresidentcontactflag')
          bool shareresidentcontactflag,
      @JsonKey(name: 'ownerenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerEndDate,
      @JsonKey(name: 'ownerstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime ownerStartDate,
      @JsonKey(name: 'residentstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentStartDate,
      @JsonKey(name: 'residentenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime residentEndDate,
      @JsonKey(name: 'version')
          num version}) = _$_RegistryModel;

  factory _RegistryModel.fromJson(Map<String, dynamic> json) =
      _$_RegistryModel.fromJson;

  @override
  @JsonKey(name: 'ownergroup')
  String get ownerGroup;
  @override
  @JsonKey(name: 'ownermanagementposition')
  String get ownerManagementPosition;
  @override
  @JsonKey(name: 'residentmanagementposition')
  String get residentManagementPosition;
  @override
  @JsonKey(name: 'ownername')
  String get ownerName;
  @override
  @JsonKey(name: 'ownerpublishedcontact')
  String get ownerPublishedContact;
  @override
  @JsonKey(name: 'ownertoken')
  String get ownerToken;
  @override
  @JsonKey(name: 'owneruserid')
  String get ownerUserId;
  @override
  @JsonKey(name: 'residentname')
  String get residentName;
  @override
  @JsonKey(name: 'residentpublishedcontact')
  String get residentPublishedContact;
  @override
  @JsonKey(name: 'residenttoken')
  String get residentToken;
  @override
  @JsonKey(name: 'residentuserid')
  String get residentUserId;
  @override
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @override
  @JsonKey(name: 'ownerrecvmsg')
  bool get ownerRecvMsg;
  @override
  @JsonKey(name: 'residentresvmessage')
  bool get residentResvMessage;
  @override
  @JsonKey(name: 'shareownercontactflag')
  bool get shareownercontactflag;
  @override
  @JsonKey(name: 'shareresidentcontactflag')
  bool get shareresidentcontactflag;
  @override
  @JsonKey(
      name: 'ownerenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get ownerEndDate;
  @override
  @JsonKey(
      name: 'ownerstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get ownerStartDate;
  @override
  @JsonKey(
      name: 'residentstartdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get residentStartDate;
  @override
  @JsonKey(
      name: 'residentenddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get residentEndDate;
  @override
  @JsonKey(name: 'version')
  num get version;
  @override
  @JsonKey(ignore: true)
  _$RegistryModelCopyWith<_RegistryModel> get copyWith;
}

ResidentModel _$ResidentModelFromJson(Map<String, dynamic> json) {
  return _ResidentModel.fromJson(json);
}

/// @nodoc
class _$ResidentModelTearOff {
  const _$ResidentModelTearOff();

// ignore: unused_element
  _ResidentModel call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'contactuserid')
          String contactUserId,
      @JsonKey(name: 'contactnumber')
          String contactNumber,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'firstname')
          String firstName,
      @JsonKey(name: 'lastname')
          String lastName,
      @JsonKey(name: 'managementposition')
          String managementPosition,
      @JsonKey(name: 'publishedcontact')
          String publishedContact,
      @JsonKey(name: 'registeras')
          String registerAs,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'residentid')
          String residentID,
      @JsonKey(name: 'recvmsg')
          bool recvmsg,
      @JsonKey(name: 'terminatenow')
          bool terminateNow,
      @JsonKey(name: 'publishcontactflag')
          bool publishcontactflag,
      @JsonKey(name: 'approvedbymanager')
          num approvedByManager,
      @JsonKey(name: 'approvedbyowner')
          num approvedByOwner,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate}) {
    return _ResidentModel(
      appUserId: appUserId,
      contactUserId: contactUserId,
      contactNumber: contactNumber,
      email: email,
      firstName: firstName,
      lastName: lastName,
      managementPosition: managementPosition,
      publishedContact: publishedContact,
      registerAs: registerAs,
      unitAddress: unitAddress,
      residentID: residentID,
      recvmsg: recvmsg,
      terminateNow: terminateNow,
      publishcontactflag: publishcontactflag,
      approvedByManager: approvedByManager,
      approvedByOwner: approvedByOwner,
      version: version,
      startDate: startDate,
      endDate: endDate,
    );
  }

// ignore: unused_element
  ResidentModel fromJson(Map<String, Object> json) {
    return ResidentModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ResidentModel = _$ResidentModelTearOff();

/// @nodoc
mixin _$ResidentModel {
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @JsonKey(name: 'contactuserid')
  String get contactUserId;
  @JsonKey(name: 'contactnumber')
  String get contactNumber;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'firstname')
  String get firstName;
  @JsonKey(name: 'lastname')
  String get lastName;
  @JsonKey(name: 'managementposition')
  String get managementPosition;
  @JsonKey(name: 'publishedcontact')
  String get publishedContact;
  @JsonKey(name: 'registeras')
  String get registerAs;
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @JsonKey(name: 'residentid')
  String get residentID;
  @JsonKey(name: 'recvmsg')
  bool get recvmsg;
  @JsonKey(name: 'terminatenow')
  bool get terminateNow;
  @JsonKey(name: 'publishcontactflag')
  bool get publishcontactflag;
  @JsonKey(name: 'approvedbymanager')
  num get approvedByManager;
  @JsonKey(name: 'approvedbyowner')
  num get approvedByOwner;
  @JsonKey(name: 'version')
  num get version;
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ResidentModelCopyWith<ResidentModel> get copyWith;
}

/// @nodoc
abstract class $ResidentModelCopyWith<$Res> {
  factory $ResidentModelCopyWith(
          ResidentModel value, $Res Function(ResidentModel) then) =
      _$ResidentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'contactuserid')
          String contactUserId,
      @JsonKey(name: 'contactnumber')
          String contactNumber,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'firstname')
          String firstName,
      @JsonKey(name: 'lastname')
          String lastName,
      @JsonKey(name: 'managementposition')
          String managementPosition,
      @JsonKey(name: 'publishedcontact')
          String publishedContact,
      @JsonKey(name: 'registeras')
          String registerAs,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'residentid')
          String residentID,
      @JsonKey(name: 'recvmsg')
          bool recvmsg,
      @JsonKey(name: 'terminatenow')
          bool terminateNow,
      @JsonKey(name: 'publishcontactflag')
          bool publishcontactflag,
      @JsonKey(name: 'approvedbymanager')
          num approvedByManager,
      @JsonKey(name: 'approvedbyowner')
          num approvedByOwner,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate});
}

/// @nodoc
class _$ResidentModelCopyWithImpl<$Res>
    implements $ResidentModelCopyWith<$Res> {
  _$ResidentModelCopyWithImpl(this._value, this._then);

  final ResidentModel _value;
  // ignore: unused_field
  final $Res Function(ResidentModel) _then;

  @override
  $Res call({
    Object appUserId = freezed,
    Object contactUserId = freezed,
    Object contactNumber = freezed,
    Object email = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object managementPosition = freezed,
    Object publishedContact = freezed,
    Object registerAs = freezed,
    Object unitAddress = freezed,
    Object residentID = freezed,
    Object recvmsg = freezed,
    Object terminateNow = freezed,
    Object publishcontactflag = freezed,
    Object approvedByManager = freezed,
    Object approvedByOwner = freezed,
    Object version = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_value.copyWith(
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      contactUserId: contactUserId == freezed
          ? _value.contactUserId
          : contactUserId as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as String,
      email: email == freezed ? _value.email : email as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      managementPosition: managementPosition == freezed
          ? _value.managementPosition
          : managementPosition as String,
      publishedContact: publishedContact == freezed
          ? _value.publishedContact
          : publishedContact as String,
      registerAs:
          registerAs == freezed ? _value.registerAs : registerAs as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      residentID:
          residentID == freezed ? _value.residentID : residentID as String,
      recvmsg: recvmsg == freezed ? _value.recvmsg : recvmsg as bool,
      terminateNow:
          terminateNow == freezed ? _value.terminateNow : terminateNow as bool,
      publishcontactflag: publishcontactflag == freezed
          ? _value.publishcontactflag
          : publishcontactflag as bool,
      approvedByManager: approvedByManager == freezed
          ? _value.approvedByManager
          : approvedByManager as num,
      approvedByOwner: approvedByOwner == freezed
          ? _value.approvedByOwner
          : approvedByOwner as num,
      version: version == freezed ? _value.version : version as num,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ResidentModelCopyWith<$Res>
    implements $ResidentModelCopyWith<$Res> {
  factory _$ResidentModelCopyWith(
          _ResidentModel value, $Res Function(_ResidentModel) then) =
      __$ResidentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'contactuserid')
          String contactUserId,
      @JsonKey(name: 'contactnumber')
          String contactNumber,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'firstname')
          String firstName,
      @JsonKey(name: 'lastname')
          String lastName,
      @JsonKey(name: 'managementposition')
          String managementPosition,
      @JsonKey(name: 'publishedcontact')
          String publishedContact,
      @JsonKey(name: 'registeras')
          String registerAs,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'residentid')
          String residentID,
      @JsonKey(name: 'recvmsg')
          bool recvmsg,
      @JsonKey(name: 'terminatenow')
          bool terminateNow,
      @JsonKey(name: 'publishcontactflag')
          bool publishcontactflag,
      @JsonKey(name: 'approvedbymanager')
          num approvedByManager,
      @JsonKey(name: 'approvedbyowner')
          num approvedByOwner,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate});
}

/// @nodoc
class __$ResidentModelCopyWithImpl<$Res>
    extends _$ResidentModelCopyWithImpl<$Res>
    implements _$ResidentModelCopyWith<$Res> {
  __$ResidentModelCopyWithImpl(
      _ResidentModel _value, $Res Function(_ResidentModel) _then)
      : super(_value, (v) => _then(v as _ResidentModel));

  @override
  _ResidentModel get _value => super._value as _ResidentModel;

  @override
  $Res call({
    Object appUserId = freezed,
    Object contactUserId = freezed,
    Object contactNumber = freezed,
    Object email = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object managementPosition = freezed,
    Object publishedContact = freezed,
    Object registerAs = freezed,
    Object unitAddress = freezed,
    Object residentID = freezed,
    Object recvmsg = freezed,
    Object terminateNow = freezed,
    Object publishcontactflag = freezed,
    Object approvedByManager = freezed,
    Object approvedByOwner = freezed,
    Object version = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_ResidentModel(
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      contactUserId: contactUserId == freezed
          ? _value.contactUserId
          : contactUserId as String,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber as String,
      email: email == freezed ? _value.email : email as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      managementPosition: managementPosition == freezed
          ? _value.managementPosition
          : managementPosition as String,
      publishedContact: publishedContact == freezed
          ? _value.publishedContact
          : publishedContact as String,
      registerAs:
          registerAs == freezed ? _value.registerAs : registerAs as String,
      unitAddress:
          unitAddress == freezed ? _value.unitAddress : unitAddress as String,
      residentID:
          residentID == freezed ? _value.residentID : residentID as String,
      recvmsg: recvmsg == freezed ? _value.recvmsg : recvmsg as bool,
      terminateNow:
          terminateNow == freezed ? _value.terminateNow : terminateNow as bool,
      publishcontactflag: publishcontactflag == freezed
          ? _value.publishcontactflag
          : publishcontactflag as bool,
      approvedByManager: approvedByManager == freezed
          ? _value.approvedByManager
          : approvedByManager as num,
      approvedByOwner: approvedByOwner == freezed
          ? _value.approvedByOwner
          : approvedByOwner as num,
      version: version == freezed ? _value.version : version as num,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ResidentModel with DiagnosticableTreeMixin implements _ResidentModel {
  _$_ResidentModel(
      {@JsonKey(name: 'appuserid')
          this.appUserId,
      @JsonKey(name: 'contactuserid')
          this.contactUserId,
      @JsonKey(name: 'contactnumber')
          this.contactNumber,
      @JsonKey(name: 'email')
          this.email,
      @JsonKey(name: 'firstname')
          this.firstName,
      @JsonKey(name: 'lastname')
          this.lastName,
      @JsonKey(name: 'managementposition')
          this.managementPosition,
      @JsonKey(name: 'publishedcontact')
          this.publishedContact,
      @JsonKey(name: 'registeras')
          this.registerAs,
      @JsonKey(name: 'unitaddress')
          this.unitAddress,
      @JsonKey(name: 'residentid')
          this.residentID,
      @JsonKey(name: 'recvmsg')
          this.recvmsg,
      @JsonKey(name: 'terminatenow')
          this.terminateNow,
      @JsonKey(name: 'publishcontactflag')
          this.publishcontactflag,
      @JsonKey(name: 'approvedbymanager')
          this.approvedByManager,
      @JsonKey(name: 'approvedbyowner')
          this.approvedByOwner,
      @JsonKey(name: 'version')
          this.version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate});

  factory _$_ResidentModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResidentModelFromJson(json);

  @override
  @JsonKey(name: 'appuserid')
  final String appUserId;
  @override
  @JsonKey(name: 'contactuserid')
  final String contactUserId;
  @override
  @JsonKey(name: 'contactnumber')
  final String contactNumber;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'firstname')
  final String firstName;
  @override
  @JsonKey(name: 'lastname')
  final String lastName;
  @override
  @JsonKey(name: 'managementposition')
  final String managementPosition;
  @override
  @JsonKey(name: 'publishedcontact')
  final String publishedContact;
  @override
  @JsonKey(name: 'registeras')
  final String registerAs;
  @override
  @JsonKey(name: 'unitaddress')
  final String unitAddress;
  @override
  @JsonKey(name: 'residentid')
  final String residentID;
  @override
  @JsonKey(name: 'recvmsg')
  final bool recvmsg;
  @override
  @JsonKey(name: 'terminatenow')
  final bool terminateNow;
  @override
  @JsonKey(name: 'publishcontactflag')
  final bool publishcontactflag;
  @override
  @JsonKey(name: 'approvedbymanager')
  final num approvedByManager;
  @override
  @JsonKey(name: 'approvedbyowner')
  final num approvedByOwner;
  @override
  @JsonKey(name: 'version')
  final num version;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResidentModel(appUserId: $appUserId, contactUserId: $contactUserId, contactNumber: $contactNumber, email: $email, firstName: $firstName, lastName: $lastName, managementPosition: $managementPosition, publishedContact: $publishedContact, registerAs: $registerAs, unitAddress: $unitAddress, residentID: $residentID, recvmsg: $recvmsg, terminateNow: $terminateNow, publishcontactflag: $publishcontactflag, approvedByManager: $approvedByManager, approvedByOwner: $approvedByOwner, version: $version, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResidentModel'))
      ..add(DiagnosticsProperty('appUserId', appUserId))
      ..add(DiagnosticsProperty('contactUserId', contactUserId))
      ..add(DiagnosticsProperty('contactNumber', contactNumber))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('managementPosition', managementPosition))
      ..add(DiagnosticsProperty('publishedContact', publishedContact))
      ..add(DiagnosticsProperty('registerAs', registerAs))
      ..add(DiagnosticsProperty('unitAddress', unitAddress))
      ..add(DiagnosticsProperty('residentID', residentID))
      ..add(DiagnosticsProperty('recvmsg', recvmsg))
      ..add(DiagnosticsProperty('terminateNow', terminateNow))
      ..add(DiagnosticsProperty('publishcontactflag', publishcontactflag))
      ..add(DiagnosticsProperty('approvedByManager', approvedByManager))
      ..add(DiagnosticsProperty('approvedByOwner', approvedByOwner))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResidentModel &&
            (identical(other.appUserId, appUserId) ||
                const DeepCollectionEquality()
                    .equals(other.appUserId, appUserId)) &&
            (identical(other.contactUserId, contactUserId) ||
                const DeepCollectionEquality()
                    .equals(other.contactUserId, contactUserId)) &&
            (identical(other.contactNumber, contactNumber) ||
                const DeepCollectionEquality()
                    .equals(other.contactNumber, contactNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.managementPosition, managementPosition) ||
                const DeepCollectionEquality()
                    .equals(other.managementPosition, managementPosition)) &&
            (identical(other.publishedContact, publishedContact) ||
                const DeepCollectionEquality()
                    .equals(other.publishedContact, publishedContact)) &&
            (identical(other.registerAs, registerAs) ||
                const DeepCollectionEquality()
                    .equals(other.registerAs, registerAs)) &&
            (identical(other.unitAddress, unitAddress) ||
                const DeepCollectionEquality()
                    .equals(other.unitAddress, unitAddress)) &&
            (identical(other.residentID, residentID) ||
                const DeepCollectionEquality()
                    .equals(other.residentID, residentID)) &&
            (identical(other.recvmsg, recvmsg) ||
                const DeepCollectionEquality()
                    .equals(other.recvmsg, recvmsg)) &&
            (identical(other.terminateNow, terminateNow) ||
                const DeepCollectionEquality()
                    .equals(other.terminateNow, terminateNow)) &&
            (identical(other.publishcontactflag, publishcontactflag) ||
                const DeepCollectionEquality()
                    .equals(other.publishcontactflag, publishcontactflag)) &&
            (identical(other.approvedByManager, approvedByManager) ||
                const DeepCollectionEquality()
                    .equals(other.approvedByManager, approvedByManager)) &&
            (identical(other.approvedByOwner, approvedByOwner) ||
                const DeepCollectionEquality()
                    .equals(other.approvedByOwner, approvedByOwner)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserId) ^
      const DeepCollectionEquality().hash(contactUserId) ^
      const DeepCollectionEquality().hash(contactNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(managementPosition) ^
      const DeepCollectionEquality().hash(publishedContact) ^
      const DeepCollectionEquality().hash(registerAs) ^
      const DeepCollectionEquality().hash(unitAddress) ^
      const DeepCollectionEquality().hash(residentID) ^
      const DeepCollectionEquality().hash(recvmsg) ^
      const DeepCollectionEquality().hash(terminateNow) ^
      const DeepCollectionEquality().hash(publishcontactflag) ^
      const DeepCollectionEquality().hash(approvedByManager) ^
      const DeepCollectionEquality().hash(approvedByOwner) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$ResidentModelCopyWith<_ResidentModel> get copyWith =>
      __$ResidentModelCopyWithImpl<_ResidentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResidentModelToJson(this);
  }
}

abstract class _ResidentModel implements ResidentModel {
  factory _ResidentModel(
      {@JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'contactuserid')
          String contactUserId,
      @JsonKey(name: 'contactnumber')
          String contactNumber,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'firstname')
          String firstName,
      @JsonKey(name: 'lastname')
          String lastName,
      @JsonKey(name: 'managementposition')
          String managementPosition,
      @JsonKey(name: 'publishedcontact')
          String publishedContact,
      @JsonKey(name: 'registeras')
          String registerAs,
      @JsonKey(name: 'unitaddress')
          String unitAddress,
      @JsonKey(name: 'residentid')
          String residentID,
      @JsonKey(name: 'recvmsg')
          bool recvmsg,
      @JsonKey(name: 'terminatenow')
          bool terminateNow,
      @JsonKey(name: 'publishcontactflag')
          bool publishcontactflag,
      @JsonKey(name: 'approvedbymanager')
          num approvedByManager,
      @JsonKey(name: 'approvedbyowner')
          num approvedByOwner,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate}) = _$_ResidentModel;

  factory _ResidentModel.fromJson(Map<String, dynamic> json) =
      _$_ResidentModel.fromJson;

  @override
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @override
  @JsonKey(name: 'contactuserid')
  String get contactUserId;
  @override
  @JsonKey(name: 'contactnumber')
  String get contactNumber;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'firstname')
  String get firstName;
  @override
  @JsonKey(name: 'lastname')
  String get lastName;
  @override
  @JsonKey(name: 'managementposition')
  String get managementPosition;
  @override
  @JsonKey(name: 'publishedcontact')
  String get publishedContact;
  @override
  @JsonKey(name: 'registeras')
  String get registerAs;
  @override
  @JsonKey(name: 'unitaddress')
  String get unitAddress;
  @override
  @JsonKey(name: 'residentid')
  String get residentID;
  @override
  @JsonKey(name: 'recvmsg')
  bool get recvmsg;
  @override
  @JsonKey(name: 'terminatenow')
  bool get terminateNow;
  @override
  @JsonKey(name: 'publishcontactflag')
  bool get publishcontactflag;
  @override
  @JsonKey(name: 'approvedbymanager')
  num get approvedByManager;
  @override
  @JsonKey(name: 'approvedbyowner')
  num get approvedByOwner;
  @override
  @JsonKey(name: 'version')
  num get version;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$ResidentModelCopyWith<_ResidentModel> get copyWith;
}

ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
class _$ServiceRequestModelTearOff {
  const _$ServiceRequestModelTearOff();

// ignore: unused_element
  _ServiceRequestModel call(
      {@JsonKey(name: 'adhocvisitorphoto')
          String adHocVisitorPhoto,
      @JsonKey(name: 'correspondingname')
          String correspondingName,
      @JsonKey(name: 'geneartedqrcode')
          String geneartedQrCode,
      @JsonKey(name: 'groupreqname')
          String groupReqName,
      @JsonKey(name: 'notesinstructions')
          String notesInstructions,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'requesterid')
          String requesterID,
      @JsonKey(name: 'requestertype')
          String requesterType,
      @JsonKey(name: 'servicerequestormemberuserid')
          String serviceRequestorMemberUserId,
      @JsonKey(name: 'serviceproviderid')
          String serviceProviderId,
      @JsonKey(name: 'qrcodelink')
          String qrCodeLink,
      @JsonKey(name: 'unitid')
          String unitId,
      @JsonKey(name: 'requestid')
          String requestID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'multipleentryallowed')
          bool multipleEntryAllowed,
      @JsonKey(name: 'requirenotificationentry')
          bool requireNotificationEntry,
      @JsonKey(name: 'suspend')
          bool suspend,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'forstaff')
          bool forstaff,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime requestedDate,
      @JsonKey(name: 'requesttype')
          String requestType}) {
    return _ServiceRequestModel(
      adHocVisitorPhoto: adHocVisitorPhoto,
      correspondingName: correspondingName,
      geneartedQrCode: geneartedQrCode,
      groupReqName: groupReqName,
      notesInstructions: notesInstructions,
      phone: phone,
      requesterID: requesterID,
      requesterType: requesterType,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId,
      serviceProviderId: serviceProviderId,
      qrCodeLink: qrCodeLink,
      unitId: unitId,
      requestID: requestID,
      forstaffid: forstaffid,
      forstaffname: forstaffname,
      multipleEntryAllowed: multipleEntryAllowed,
      requireNotificationEntry: requireNotificationEntry,
      suspend: suspend,
      terminate: terminate,
      forstaff: forstaff,
      version: version,
      startDate: startDate,
      endDate: endDate,
      requestedDate: requestedDate,
      requestType: requestType,
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
  @JsonKey(name: 'adhocvisitorphoto')
  String get adHocVisitorPhoto;
  @JsonKey(name: 'correspondingname')
  String get correspondingName;
  @JsonKey(name: 'geneartedqrcode')
  String get geneartedQrCode;
  @JsonKey(name: 'groupreqname')
  String get groupReqName;
  @JsonKey(name: 'notesinstructions')
  String get notesInstructions;
  @JsonKey(name: 'phone')
  String get phone;
  @JsonKey(name: 'requesterid')
  String get requesterID;
  @JsonKey(name: 'requestertype')
  String get requesterType;
  @JsonKey(name: 'servicerequestormemberuserid')
  String get serviceRequestorMemberUserId;
  @JsonKey(name: 'serviceproviderid')
  String get serviceProviderId;
  @JsonKey(name: 'qrcodelink')
  String get qrCodeLink;
  @JsonKey(name: 'unitid')
  String get unitId;
  @JsonKey(name: 'requestid')
  String get requestID;
  @JsonKey(name: 'forstaffid')
  String get forstaffid;
  @JsonKey(name: 'forstaffname')
  String get forstaffname;
  @JsonKey(name: 'multipleentryallowed')
  bool get multipleEntryAllowed;
  @JsonKey(name: 'requirenotificationentry')
  bool get requireNotificationEntry;
  @JsonKey(name: 'suspend')
  bool get suspend;
  @JsonKey(name: 'terminate')
  bool get terminate;
  @JsonKey(name: 'forstaff')
  bool get forstaff;
  @JsonKey(name: 'version')
  num get version;
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @JsonKey(
      name: 'requesteddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get requestedDate;
  @JsonKey(name: 'requesttype')
  String get requestType;

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
      {@JsonKey(name: 'adhocvisitorphoto')
          String adHocVisitorPhoto,
      @JsonKey(name: 'correspondingname')
          String correspondingName,
      @JsonKey(name: 'geneartedqrcode')
          String geneartedQrCode,
      @JsonKey(name: 'groupreqname')
          String groupReqName,
      @JsonKey(name: 'notesinstructions')
          String notesInstructions,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'requesterid')
          String requesterID,
      @JsonKey(name: 'requestertype')
          String requesterType,
      @JsonKey(name: 'servicerequestormemberuserid')
          String serviceRequestorMemberUserId,
      @JsonKey(name: 'serviceproviderid')
          String serviceProviderId,
      @JsonKey(name: 'qrcodelink')
          String qrCodeLink,
      @JsonKey(name: 'unitid')
          String unitId,
      @JsonKey(name: 'requestid')
          String requestID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'multipleentryallowed')
          bool multipleEntryAllowed,
      @JsonKey(name: 'requirenotificationentry')
          bool requireNotificationEntry,
      @JsonKey(name: 'suspend')
          bool suspend,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'forstaff')
          bool forstaff,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime requestedDate,
      @JsonKey(name: 'requesttype')
          String requestType});
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
    Object geneartedQrCode = freezed,
    Object groupReqName = freezed,
    Object notesInstructions = freezed,
    Object phone = freezed,
    Object requesterID = freezed,
    Object requesterType = freezed,
    Object serviceRequestorMemberUserId = freezed,
    Object serviceProviderId = freezed,
    Object qrCodeLink = freezed,
    Object unitId = freezed,
    Object requestID = freezed,
    Object forstaffid = freezed,
    Object forstaffname = freezed,
    Object multipleEntryAllowed = freezed,
    Object requireNotificationEntry = freezed,
    Object suspend = freezed,
    Object terminate = freezed,
    Object forstaff = freezed,
    Object version = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object requestedDate = freezed,
    Object requestType = freezed,
  }) {
    return _then(_value.copyWith(
      adHocVisitorPhoto: adHocVisitorPhoto == freezed
          ? _value.adHocVisitorPhoto
          : adHocVisitorPhoto as String,
      correspondingName: correspondingName == freezed
          ? _value.correspondingName
          : correspondingName as String,
      geneartedQrCode: geneartedQrCode == freezed
          ? _value.geneartedQrCode
          : geneartedQrCode as String,
      groupReqName: groupReqName == freezed
          ? _value.groupReqName
          : groupReqName as String,
      notesInstructions: notesInstructions == freezed
          ? _value.notesInstructions
          : notesInstructions as String,
      phone: phone == freezed ? _value.phone : phone as String,
      requesterID:
          requesterID == freezed ? _value.requesterID : requesterID as String,
      requesterType: requesterType == freezed
          ? _value.requesterType
          : requesterType as String,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId == freezed
          ? _value.serviceRequestorMemberUserId
          : serviceRequestorMemberUserId as String,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId as String,
      qrCodeLink:
          qrCodeLink == freezed ? _value.qrCodeLink : qrCodeLink as String,
      unitId: unitId == freezed ? _value.unitId : unitId as String,
      requestID: requestID == freezed ? _value.requestID : requestID as String,
      forstaffid:
          forstaffid == freezed ? _value.forstaffid : forstaffid as String,
      forstaffname: forstaffname == freezed
          ? _value.forstaffname
          : forstaffname as String,
      multipleEntryAllowed: multipleEntryAllowed == freezed
          ? _value.multipleEntryAllowed
          : multipleEntryAllowed as bool,
      requireNotificationEntry: requireNotificationEntry == freezed
          ? _value.requireNotificationEntry
          : requireNotificationEntry as bool,
      suspend: suspend == freezed ? _value.suspend : suspend as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      forstaff: forstaff == freezed ? _value.forstaff : forstaff as bool,
      version: version == freezed ? _value.version : version as num,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      requestedDate: requestedDate == freezed
          ? _value.requestedDate
          : requestedDate as DateTime,
      requestType:
          requestType == freezed ? _value.requestType : requestType as String,
    ));
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
      {@JsonKey(name: 'adhocvisitorphoto')
          String adHocVisitorPhoto,
      @JsonKey(name: 'correspondingname')
          String correspondingName,
      @JsonKey(name: 'geneartedqrcode')
          String geneartedQrCode,
      @JsonKey(name: 'groupreqname')
          String groupReqName,
      @JsonKey(name: 'notesinstructions')
          String notesInstructions,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'requesterid')
          String requesterID,
      @JsonKey(name: 'requestertype')
          String requesterType,
      @JsonKey(name: 'servicerequestormemberuserid')
          String serviceRequestorMemberUserId,
      @JsonKey(name: 'serviceproviderid')
          String serviceProviderId,
      @JsonKey(name: 'qrcodelink')
          String qrCodeLink,
      @JsonKey(name: 'unitid')
          String unitId,
      @JsonKey(name: 'requestid')
          String requestID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'multipleentryallowed')
          bool multipleEntryAllowed,
      @JsonKey(name: 'requirenotificationentry')
          bool requireNotificationEntry,
      @JsonKey(name: 'suspend')
          bool suspend,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'forstaff')
          bool forstaff,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime requestedDate,
      @JsonKey(name: 'requesttype')
          String requestType});
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
    Object geneartedQrCode = freezed,
    Object groupReqName = freezed,
    Object notesInstructions = freezed,
    Object phone = freezed,
    Object requesterID = freezed,
    Object requesterType = freezed,
    Object serviceRequestorMemberUserId = freezed,
    Object serviceProviderId = freezed,
    Object qrCodeLink = freezed,
    Object unitId = freezed,
    Object requestID = freezed,
    Object forstaffid = freezed,
    Object forstaffname = freezed,
    Object multipleEntryAllowed = freezed,
    Object requireNotificationEntry = freezed,
    Object suspend = freezed,
    Object terminate = freezed,
    Object forstaff = freezed,
    Object version = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object requestedDate = freezed,
    Object requestType = freezed,
  }) {
    return _then(_ServiceRequestModel(
      adHocVisitorPhoto: adHocVisitorPhoto == freezed
          ? _value.adHocVisitorPhoto
          : adHocVisitorPhoto as String,
      correspondingName: correspondingName == freezed
          ? _value.correspondingName
          : correspondingName as String,
      geneartedQrCode: geneartedQrCode == freezed
          ? _value.geneartedQrCode
          : geneartedQrCode as String,
      groupReqName: groupReqName == freezed
          ? _value.groupReqName
          : groupReqName as String,
      notesInstructions: notesInstructions == freezed
          ? _value.notesInstructions
          : notesInstructions as String,
      phone: phone == freezed ? _value.phone : phone as String,
      requesterID:
          requesterID == freezed ? _value.requesterID : requesterID as String,
      requesterType: requesterType == freezed
          ? _value.requesterType
          : requesterType as String,
      serviceRequestorMemberUserId: serviceRequestorMemberUserId == freezed
          ? _value.serviceRequestorMemberUserId
          : serviceRequestorMemberUserId as String,
      serviceProviderId: serviceProviderId == freezed
          ? _value.serviceProviderId
          : serviceProviderId as String,
      qrCodeLink:
          qrCodeLink == freezed ? _value.qrCodeLink : qrCodeLink as String,
      unitId: unitId == freezed ? _value.unitId : unitId as String,
      requestID: requestID == freezed ? _value.requestID : requestID as String,
      forstaffid:
          forstaffid == freezed ? _value.forstaffid : forstaffid as String,
      forstaffname: forstaffname == freezed
          ? _value.forstaffname
          : forstaffname as String,
      multipleEntryAllowed: multipleEntryAllowed == freezed
          ? _value.multipleEntryAllowed
          : multipleEntryAllowed as bool,
      requireNotificationEntry: requireNotificationEntry == freezed
          ? _value.requireNotificationEntry
          : requireNotificationEntry as bool,
      suspend: suspend == freezed ? _value.suspend : suspend as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      forstaff: forstaff == freezed ? _value.forstaff : forstaff as bool,
      version: version == freezed ? _value.version : version as num,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      requestedDate: requestedDate == freezed
          ? _value.requestedDate
          : requestedDate as DateTime,
      requestType:
          requestType == freezed ? _value.requestType : requestType as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ServiceRequestModel
    with DiagnosticableTreeMixin
    implements _ServiceRequestModel {
  _$_ServiceRequestModel(
      {@JsonKey(name: 'adhocvisitorphoto')
          this.adHocVisitorPhoto,
      @JsonKey(name: 'correspondingname')
          this.correspondingName,
      @JsonKey(name: 'geneartedqrcode')
          this.geneartedQrCode,
      @JsonKey(name: 'groupreqname')
          this.groupReqName,
      @JsonKey(name: 'notesinstructions')
          this.notesInstructions,
      @JsonKey(name: 'phone')
          this.phone,
      @JsonKey(name: 'requesterid')
          this.requesterID,
      @JsonKey(name: 'requestertype')
          this.requesterType,
      @JsonKey(name: 'servicerequestormemberuserid')
          this.serviceRequestorMemberUserId,
      @JsonKey(name: 'serviceproviderid')
          this.serviceProviderId,
      @JsonKey(name: 'qrcodelink')
          this.qrCodeLink,
      @JsonKey(name: 'unitid')
          this.unitId,
      @JsonKey(name: 'requestid')
          this.requestID,
      @JsonKey(name: 'forstaffid')
          this.forstaffid,
      @JsonKey(name: 'forstaffname')
          this.forstaffname,
      @JsonKey(name: 'multipleentryallowed')
          this.multipleEntryAllowed,
      @JsonKey(name: 'requirenotificationentry')
          this.requireNotificationEntry,
      @JsonKey(name: 'suspend')
          this.suspend,
      @JsonKey(name: 'terminate')
          this.terminate,
      @JsonKey(name: 'forstaff')
          this.forstaff,
      @JsonKey(name: 'version')
          this.version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate,
      @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.requestedDate,
      @JsonKey(name: 'requesttype')
          this.requestType});

  factory _$_ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceRequestModelFromJson(json);

  @override
  @JsonKey(name: 'adhocvisitorphoto')
  final String adHocVisitorPhoto;
  @override
  @JsonKey(name: 'correspondingname')
  final String correspondingName;
  @override
  @JsonKey(name: 'geneartedqrcode')
  final String geneartedQrCode;
  @override
  @JsonKey(name: 'groupreqname')
  final String groupReqName;
  @override
  @JsonKey(name: 'notesinstructions')
  final String notesInstructions;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'requesterid')
  final String requesterID;
  @override
  @JsonKey(name: 'requestertype')
  final String requesterType;
  @override
  @JsonKey(name: 'servicerequestormemberuserid')
  final String serviceRequestorMemberUserId;
  @override
  @JsonKey(name: 'serviceproviderid')
  final String serviceProviderId;
  @override
  @JsonKey(name: 'qrcodelink')
  final String qrCodeLink;
  @override
  @JsonKey(name: 'unitid')
  final String unitId;
  @override
  @JsonKey(name: 'requestid')
  final String requestID;
  @override
  @JsonKey(name: 'forstaffid')
  final String forstaffid;
  @override
  @JsonKey(name: 'forstaffname')
  final String forstaffname;
  @override
  @JsonKey(name: 'multipleentryallowed')
  final bool multipleEntryAllowed;
  @override
  @JsonKey(name: 'requirenotificationentry')
  final bool requireNotificationEntry;
  @override
  @JsonKey(name: 'suspend')
  final bool suspend;
  @override
  @JsonKey(name: 'terminate')
  final bool terminate;
  @override
  @JsonKey(name: 'forstaff')
  final bool forstaff;
  @override
  @JsonKey(name: 'version')
  final num version;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;
  @override
  @JsonKey(
      name: 'requesteddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime requestedDate;
  @override
  @JsonKey(name: 'requesttype')
  final String requestType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceRequestModel(adHocVisitorPhoto: $adHocVisitorPhoto, correspondingName: $correspondingName, geneartedQrCode: $geneartedQrCode, groupReqName: $groupReqName, notesInstructions: $notesInstructions, phone: $phone, requesterID: $requesterID, requesterType: $requesterType, serviceRequestorMemberUserId: $serviceRequestorMemberUserId, serviceProviderId: $serviceProviderId, qrCodeLink: $qrCodeLink, unitId: $unitId, requestID: $requestID, forstaffid: $forstaffid, forstaffname: $forstaffname, multipleEntryAllowed: $multipleEntryAllowed, requireNotificationEntry: $requireNotificationEntry, suspend: $suspend, terminate: $terminate, forstaff: $forstaff, version: $version, startDate: $startDate, endDate: $endDate, requestedDate: $requestedDate, requestType: $requestType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceRequestModel'))
      ..add(DiagnosticsProperty('adHocVisitorPhoto', adHocVisitorPhoto))
      ..add(DiagnosticsProperty('correspondingName', correspondingName))
      ..add(DiagnosticsProperty('geneartedQrCode', geneartedQrCode))
      ..add(DiagnosticsProperty('groupReqName', groupReqName))
      ..add(DiagnosticsProperty('notesInstructions', notesInstructions))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('requesterID', requesterID))
      ..add(DiagnosticsProperty('requesterType', requesterType))
      ..add(DiagnosticsProperty(
          'serviceRequestorMemberUserId', serviceRequestorMemberUserId))
      ..add(DiagnosticsProperty('serviceProviderId', serviceProviderId))
      ..add(DiagnosticsProperty('qrCodeLink', qrCodeLink))
      ..add(DiagnosticsProperty('unitId', unitId))
      ..add(DiagnosticsProperty('requestID', requestID))
      ..add(DiagnosticsProperty('forstaffid', forstaffid))
      ..add(DiagnosticsProperty('forstaffname', forstaffname))
      ..add(DiagnosticsProperty('multipleEntryAllowed', multipleEntryAllowed))
      ..add(DiagnosticsProperty(
          'requireNotificationEntry', requireNotificationEntry))
      ..add(DiagnosticsProperty('suspend', suspend))
      ..add(DiagnosticsProperty('terminate', terminate))
      ..add(DiagnosticsProperty('forstaff', forstaff))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('requestedDate', requestedDate))
      ..add(DiagnosticsProperty('requestType', requestType));
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
            (identical(other.geneartedQrCode, geneartedQrCode) ||
                const DeepCollectionEquality()
                    .equals(other.geneartedQrCode, geneartedQrCode)) &&
            (identical(other.groupReqName, groupReqName) ||
                const DeepCollectionEquality()
                    .equals(other.groupReqName, groupReqName)) &&
            (identical(other.notesInstructions, notesInstructions) ||
                const DeepCollectionEquality()
                    .equals(other.notesInstructions, notesInstructions)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.requesterID, requesterID) ||
                const DeepCollectionEquality()
                    .equals(other.requesterID, requesterID)) &&
            (identical(other.requesterType, requesterType) ||
                const DeepCollectionEquality()
                    .equals(other.requesterType, requesterType)) &&
            (identical(other.serviceRequestorMemberUserId, serviceRequestorMemberUserId) ||
                const DeepCollectionEquality().equals(
                    other.serviceRequestorMemberUserId,
                    serviceRequestorMemberUserId)) &&
            (identical(other.serviceProviderId, serviceProviderId) ||
                const DeepCollectionEquality()
                    .equals(other.serviceProviderId, serviceProviderId)) &&
            (identical(other.qrCodeLink, qrCodeLink) ||
                const DeepCollectionEquality()
                    .equals(other.qrCodeLink, qrCodeLink)) &&
            (identical(other.unitId, unitId) ||
                const DeepCollectionEquality().equals(other.unitId, unitId)) &&
            (identical(other.requestID, requestID) ||
                const DeepCollectionEquality()
                    .equals(other.requestID, requestID)) &&
            (identical(other.forstaffid, forstaffid) ||
                const DeepCollectionEquality()
                    .equals(other.forstaffid, forstaffid)) &&
            (identical(other.forstaffname, forstaffname) ||
                const DeepCollectionEquality()
                    .equals(other.forstaffname, forstaffname)) &&
            (identical(other.multipleEntryAllowed, multipleEntryAllowed) ||
                const DeepCollectionEquality().equals(
                    other.multipleEntryAllowed, multipleEntryAllowed)) &&
            (identical(other.requireNotificationEntry, requireNotificationEntry) ||
                const DeepCollectionEquality().equals(
                    other.requireNotificationEntry,
                    requireNotificationEntry)) &&
            (identical(other.suspend, suspend) ||
                const DeepCollectionEquality()
                    .equals(other.suspend, suspend)) &&
            (identical(other.terminate, terminate) ||
                const DeepCollectionEquality().equals(other.terminate, terminate)) &&
            (identical(other.forstaff, forstaff) || const DeepCollectionEquality().equals(other.forstaff, forstaff)) &&
            (identical(other.version, version) || const DeepCollectionEquality().equals(other.version, version)) &&
            (identical(other.startDate, startDate) || const DeepCollectionEquality().equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) || const DeepCollectionEquality().equals(other.endDate, endDate)) &&
            (identical(other.requestedDate, requestedDate) || const DeepCollectionEquality().equals(other.requestedDate, requestedDate)) &&
            (identical(other.requestType, requestType) || const DeepCollectionEquality().equals(other.requestType, requestType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adHocVisitorPhoto) ^
      const DeepCollectionEquality().hash(correspondingName) ^
      const DeepCollectionEquality().hash(geneartedQrCode) ^
      const DeepCollectionEquality().hash(groupReqName) ^
      const DeepCollectionEquality().hash(notesInstructions) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(requesterID) ^
      const DeepCollectionEquality().hash(requesterType) ^
      const DeepCollectionEquality().hash(serviceRequestorMemberUserId) ^
      const DeepCollectionEquality().hash(serviceProviderId) ^
      const DeepCollectionEquality().hash(qrCodeLink) ^
      const DeepCollectionEquality().hash(unitId) ^
      const DeepCollectionEquality().hash(requestID) ^
      const DeepCollectionEquality().hash(forstaffid) ^
      const DeepCollectionEquality().hash(forstaffname) ^
      const DeepCollectionEquality().hash(multipleEntryAllowed) ^
      const DeepCollectionEquality().hash(requireNotificationEntry) ^
      const DeepCollectionEquality().hash(suspend) ^
      const DeepCollectionEquality().hash(terminate) ^
      const DeepCollectionEquality().hash(forstaff) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(requestedDate) ^
      const DeepCollectionEquality().hash(requestType);

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
  factory _ServiceRequestModel(
      {@JsonKey(name: 'adhocvisitorphoto')
          String adHocVisitorPhoto,
      @JsonKey(name: 'correspondingname')
          String correspondingName,
      @JsonKey(name: 'geneartedqrcode')
          String geneartedQrCode,
      @JsonKey(name: 'groupreqname')
          String groupReqName,
      @JsonKey(name: 'notesinstructions')
          String notesInstructions,
      @JsonKey(name: 'phone')
          String phone,
      @JsonKey(name: 'requesterid')
          String requesterID,
      @JsonKey(name: 'requestertype')
          String requesterType,
      @JsonKey(name: 'servicerequestormemberuserid')
          String serviceRequestorMemberUserId,
      @JsonKey(name: 'serviceproviderid')
          String serviceProviderId,
      @JsonKey(name: 'qrcodelink')
          String qrCodeLink,
      @JsonKey(name: 'unitid')
          String unitId,
      @JsonKey(name: 'requestid')
          String requestID,
      @JsonKey(name: 'forstaffid')
          String forstaffid,
      @JsonKey(name: 'forstaffname')
          String forstaffname,
      @JsonKey(name: 'multipleentryallowed')
          bool multipleEntryAllowed,
      @JsonKey(name: 'requirenotificationentry')
          bool requireNotificationEntry,
      @JsonKey(name: 'suspend')
          bool suspend,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'forstaff')
          bool forstaff,
      @JsonKey(name: 'version')
          num version,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate,
      @JsonKey(name: 'requesteddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime requestedDate,
      @JsonKey(name: 'requesttype')
          String requestType}) = _$_ServiceRequestModel;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceRequestModel.fromJson;

  @override
  @JsonKey(name: 'adhocvisitorphoto')
  String get adHocVisitorPhoto;
  @override
  @JsonKey(name: 'correspondingname')
  String get correspondingName;
  @override
  @JsonKey(name: 'geneartedqrcode')
  String get geneartedQrCode;
  @override
  @JsonKey(name: 'groupreqname')
  String get groupReqName;
  @override
  @JsonKey(name: 'notesinstructions')
  String get notesInstructions;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'requesterid')
  String get requesterID;
  @override
  @JsonKey(name: 'requestertype')
  String get requesterType;
  @override
  @JsonKey(name: 'servicerequestormemberuserid')
  String get serviceRequestorMemberUserId;
  @override
  @JsonKey(name: 'serviceproviderid')
  String get serviceProviderId;
  @override
  @JsonKey(name: 'qrcodelink')
  String get qrCodeLink;
  @override
  @JsonKey(name: 'unitid')
  String get unitId;
  @override
  @JsonKey(name: 'requestid')
  String get requestID;
  @override
  @JsonKey(name: 'forstaffid')
  String get forstaffid;
  @override
  @JsonKey(name: 'forstaffname')
  String get forstaffname;
  @override
  @JsonKey(name: 'multipleentryallowed')
  bool get multipleEntryAllowed;
  @override
  @JsonKey(name: 'requirenotificationentry')
  bool get requireNotificationEntry;
  @override
  @JsonKey(name: 'suspend')
  bool get suspend;
  @override
  @JsonKey(name: 'terminate')
  bool get terminate;
  @override
  @JsonKey(name: 'forstaff')
  bool get forstaff;
  @override
  @JsonKey(name: 'version')
  num get version;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @override
  @JsonKey(
      name: 'requesteddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get requestedDate;
  @override
  @JsonKey(name: 'requesttype')
  String get requestType;
  @override
  @JsonKey(ignore: true)
  _$ServiceRequestModelCopyWith<_ServiceRequestModel> get copyWith;
}

UnitModel _$UnitModelFromJson(Map<String, dynamic> json) {
  return _UnitModel.fromJson(json);
}

/// @nodoc
class _$UnitModelTearOff {
  const _$UnitModelTearOff();

// ignore: unused_element
  _UnitModel call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'unitid') String unitID,
      @JsonKey(name: 'hasowner') bool hasOwner,
      @JsonKey(name: 'hasresident') bool hasResident,
      @JsonKey(name: 'flornum') num florNum,
      @JsonKey(name: 'numfixedparking') num numFixedParking,
      @JsonKey(name: 'numvisitorparking') num numVisitorParking,
      @JsonKey(name: 'version') num version}) {
    return _UnitModel(
      address: address,
      buildingName: buildingName,
      channel: channel,
      unitID: unitID,
      hasOwner: hasOwner,
      hasResident: hasResident,
      florNum: florNum,
      numFixedParking: numFixedParking,
      numVisitorParking: numVisitorParking,
      version: version,
    );
  }

// ignore: unused_element
  UnitModel fromJson(Map<String, Object> json) {
    return UnitModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UnitModel = _$UnitModelTearOff();

/// @nodoc
mixin _$UnitModel {
  @JsonKey(name: 'address')
  String get address;
  @JsonKey(name: 'buildingname')
  String get buildingName;
  @JsonKey(name: 'channel')
  String get channel;
  @JsonKey(name: 'unitid')
  String get unitID;
  @JsonKey(name: 'hasowner')
  bool get hasOwner;
  @JsonKey(name: 'hasresident')
  bool get hasResident;
  @JsonKey(name: 'flornum')
  num get florNum;
  @JsonKey(name: 'numfixedparking')
  num get numFixedParking;
  @JsonKey(name: 'numvisitorparking')
  num get numVisitorParking;
  @JsonKey(name: 'version')
  num get version;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UnitModelCopyWith<UnitModel> get copyWith;
}

/// @nodoc
abstract class $UnitModelCopyWith<$Res> {
  factory $UnitModelCopyWith(UnitModel value, $Res Function(UnitModel) then) =
      _$UnitModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'unitid') String unitID,
      @JsonKey(name: 'hasowner') bool hasOwner,
      @JsonKey(name: 'hasresident') bool hasResident,
      @JsonKey(name: 'flornum') num florNum,
      @JsonKey(name: 'numfixedparking') num numFixedParking,
      @JsonKey(name: 'numvisitorparking') num numVisitorParking,
      @JsonKey(name: 'version') num version});
}

/// @nodoc
class _$UnitModelCopyWithImpl<$Res> implements $UnitModelCopyWith<$Res> {
  _$UnitModelCopyWithImpl(this._value, this._then);

  final UnitModel _value;
  // ignore: unused_field
  final $Res Function(UnitModel) _then;

  @override
  $Res call({
    Object address = freezed,
    Object buildingName = freezed,
    Object channel = freezed,
    Object unitID = freezed,
    Object hasOwner = freezed,
    Object hasResident = freezed,
    Object florNum = freezed,
    Object numFixedParking = freezed,
    Object numVisitorParking = freezed,
    Object version = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed ? _value.address : address as String,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName as String,
      channel: channel == freezed ? _value.channel : channel as String,
      unitID: unitID == freezed ? _value.unitID : unitID as String,
      hasOwner: hasOwner == freezed ? _value.hasOwner : hasOwner as bool,
      hasResident:
          hasResident == freezed ? _value.hasResident : hasResident as bool,
      florNum: florNum == freezed ? _value.florNum : florNum as num,
      numFixedParking: numFixedParking == freezed
          ? _value.numFixedParking
          : numFixedParking as num,
      numVisitorParking: numVisitorParking == freezed
          ? _value.numVisitorParking
          : numVisitorParking as num,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

/// @nodoc
abstract class _$UnitModelCopyWith<$Res> implements $UnitModelCopyWith<$Res> {
  factory _$UnitModelCopyWith(
          _UnitModel value, $Res Function(_UnitModel) then) =
      __$UnitModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'unitid') String unitID,
      @JsonKey(name: 'hasowner') bool hasOwner,
      @JsonKey(name: 'hasresident') bool hasResident,
      @JsonKey(name: 'flornum') num florNum,
      @JsonKey(name: 'numfixedparking') num numFixedParking,
      @JsonKey(name: 'numvisitorparking') num numVisitorParking,
      @JsonKey(name: 'version') num version});
}

/// @nodoc
class __$UnitModelCopyWithImpl<$Res> extends _$UnitModelCopyWithImpl<$Res>
    implements _$UnitModelCopyWith<$Res> {
  __$UnitModelCopyWithImpl(_UnitModel _value, $Res Function(_UnitModel) _then)
      : super(_value, (v) => _then(v as _UnitModel));

  @override
  _UnitModel get _value => super._value as _UnitModel;

  @override
  $Res call({
    Object address = freezed,
    Object buildingName = freezed,
    Object channel = freezed,
    Object unitID = freezed,
    Object hasOwner = freezed,
    Object hasResident = freezed,
    Object florNum = freezed,
    Object numFixedParking = freezed,
    Object numVisitorParking = freezed,
    Object version = freezed,
  }) {
    return _then(_UnitModel(
      address: address == freezed ? _value.address : address as String,
      buildingName: buildingName == freezed
          ? _value.buildingName
          : buildingName as String,
      channel: channel == freezed ? _value.channel : channel as String,
      unitID: unitID == freezed ? _value.unitID : unitID as String,
      hasOwner: hasOwner == freezed ? _value.hasOwner : hasOwner as bool,
      hasResident:
          hasResident == freezed ? _value.hasResident : hasResident as bool,
      florNum: florNum == freezed ? _value.florNum : florNum as num,
      numFixedParking: numFixedParking == freezed
          ? _value.numFixedParking
          : numFixedParking as num,
      numVisitorParking: numVisitorParking == freezed
          ? _value.numVisitorParking
          : numVisitorParking as num,
      version: version == freezed ? _value.version : version as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UnitModel with DiagnosticableTreeMixin implements _UnitModel {
  _$_UnitModel(
      {@JsonKey(name: 'address') this.address,
      @JsonKey(name: 'buildingname') this.buildingName,
      @JsonKey(name: 'channel') this.channel,
      @JsonKey(name: 'unitid') this.unitID,
      @JsonKey(name: 'hasowner') this.hasOwner,
      @JsonKey(name: 'hasresident') this.hasResident,
      @JsonKey(name: 'flornum') this.florNum,
      @JsonKey(name: 'numfixedparking') this.numFixedParking,
      @JsonKey(name: 'numvisitorparking') this.numVisitorParking,
      @JsonKey(name: 'version') this.version});

  factory _$_UnitModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitModelFromJson(json);

  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'buildingname')
  final String buildingName;
  @override
  @JsonKey(name: 'channel')
  final String channel;
  @override
  @JsonKey(name: 'unitid')
  final String unitID;
  @override
  @JsonKey(name: 'hasowner')
  final bool hasOwner;
  @override
  @JsonKey(name: 'hasresident')
  final bool hasResident;
  @override
  @JsonKey(name: 'flornum')
  final num florNum;
  @override
  @JsonKey(name: 'numfixedparking')
  final num numFixedParking;
  @override
  @JsonKey(name: 'numvisitorparking')
  final num numVisitorParking;
  @override
  @JsonKey(name: 'version')
  final num version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitModel(address: $address, buildingName: $buildingName, channel: $channel, unitID: $unitID, hasOwner: $hasOwner, hasResident: $hasResident, florNum: $florNum, numFixedParking: $numFixedParking, numVisitorParking: $numVisitorParking, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitModel'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('buildingName', buildingName))
      ..add(DiagnosticsProperty('channel', channel))
      ..add(DiagnosticsProperty('unitID', unitID))
      ..add(DiagnosticsProperty('hasOwner', hasOwner))
      ..add(DiagnosticsProperty('hasResident', hasResident))
      ..add(DiagnosticsProperty('florNum', florNum))
      ..add(DiagnosticsProperty('numFixedParking', numFixedParking))
      ..add(DiagnosticsProperty('numVisitorParking', numVisitorParking))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnitModel &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.buildingName, buildingName) ||
                const DeepCollectionEquality()
                    .equals(other.buildingName, buildingName)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.unitID, unitID) ||
                const DeepCollectionEquality().equals(other.unitID, unitID)) &&
            (identical(other.hasOwner, hasOwner) ||
                const DeepCollectionEquality()
                    .equals(other.hasOwner, hasOwner)) &&
            (identical(other.hasResident, hasResident) ||
                const DeepCollectionEquality()
                    .equals(other.hasResident, hasResident)) &&
            (identical(other.florNum, florNum) ||
                const DeepCollectionEquality()
                    .equals(other.florNum, florNum)) &&
            (identical(other.numFixedParking, numFixedParking) ||
                const DeepCollectionEquality()
                    .equals(other.numFixedParking, numFixedParking)) &&
            (identical(other.numVisitorParking, numVisitorParking) ||
                const DeepCollectionEquality()
                    .equals(other.numVisitorParking, numVisitorParking)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(buildingName) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(unitID) ^
      const DeepCollectionEquality().hash(hasOwner) ^
      const DeepCollectionEquality().hash(hasResident) ^
      const DeepCollectionEquality().hash(florNum) ^
      const DeepCollectionEquality().hash(numFixedParking) ^
      const DeepCollectionEquality().hash(numVisitorParking) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$UnitModelCopyWith<_UnitModel> get copyWith =>
      __$UnitModelCopyWithImpl<_UnitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitModelToJson(this);
  }
}

abstract class _UnitModel implements UnitModel {
  factory _UnitModel(
      {@JsonKey(name: 'address') String address,
      @JsonKey(name: 'buildingname') String buildingName,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'unitid') String unitID,
      @JsonKey(name: 'hasowner') bool hasOwner,
      @JsonKey(name: 'hasresident') bool hasResident,
      @JsonKey(name: 'flornum') num florNum,
      @JsonKey(name: 'numfixedparking') num numFixedParking,
      @JsonKey(name: 'numvisitorparking') num numVisitorParking,
      @JsonKey(name: 'version') num version}) = _$_UnitModel;

  factory _UnitModel.fromJson(Map<String, dynamic> json) =
      _$_UnitModel.fromJson;

  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'buildingname')
  String get buildingName;
  @override
  @JsonKey(name: 'channel')
  String get channel;
  @override
  @JsonKey(name: 'unitid')
  String get unitID;
  @override
  @JsonKey(name: 'hasowner')
  bool get hasOwner;
  @override
  @JsonKey(name: 'hasresident')
  bool get hasResident;
  @override
  @JsonKey(name: 'flornum')
  num get florNum;
  @override
  @JsonKey(name: 'numfixedparking')
  num get numFixedParking;
  @override
  @JsonKey(name: 'numvisitorparking')
  num get numVisitorParking;
  @override
  @JsonKey(name: 'version')
  num get version;
  @override
  @JsonKey(ignore: true)
  _$UnitModelCopyWith<_UnitModel> get copyWith;
}

StaffModel _$StaffModelFromJson(Map<String, dynamic> json) {
  return _StaffModel.fromJson(json);
}

/// @nodoc
class _$StaffModelTearOff {
  const _$StaffModelTearOff();

// ignore: unused_element
  _StaffModel call(
      {@JsonKey(name: 'allowedroles')
          List<String> allowedRoles,
      @JsonKey(name: 'serviceoffered')
          List<String> serviceOffered,
      @JsonKey(name: 'addressinfo')
          String addressInfo,
      @JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'basicbio')
          String basicBio,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'educationalqualification')
          String educationalQualification,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'phonenumstr')
          String phoneNumStr,
      @JsonKey(name: 'photo1')
          String photo1,
      @JsonKey(name: 'staffid')
          String staffID,
      @JsonKey(name: 'virtualroomattached')
          int virtualRoomAttached,
      @JsonKey(name: 'casualleave')
          int casualLeave,
      @JsonKey(name: 'paidleave')
          int paidLeave,
      @JsonKey(name: 'sickleave')
          int sickLeave,
      @JsonKey(name: 'version')
          int version,
      @JsonKey(name: 'timeinterval')
          int timeInterval,
      @JsonKey(name: 'locationupdaterequired')
          bool locationUpdateRequired,
      @JsonKey(name: 'showasteammember')
          bool showAsTeamMember,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'issuspended')
          bool isSuspended,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate}) {
    return _StaffModel(
      allowedRoles: allowedRoles,
      serviceOffered: serviceOffered,
      addressInfo: addressInfo,
      appUserId: appUserId,
      basicBio: basicBio,
      category: category,
      educationalQualification: educationalQualification,
      email: email,
      name: name,
      phoneNumStr: phoneNumStr,
      photo1: photo1,
      staffID: staffID,
      virtualRoomAttached: virtualRoomAttached,
      casualLeave: casualLeave,
      paidLeave: paidLeave,
      sickLeave: sickLeave,
      version: version,
      timeInterval: timeInterval,
      locationUpdateRequired: locationUpdateRequired,
      showAsTeamMember: showAsTeamMember,
      terminate: terminate,
      isSuspended: isSuspended,
      startDate: startDate,
      endDate: endDate,
    );
  }

// ignore: unused_element
  StaffModel fromJson(Map<String, Object> json) {
    return StaffModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StaffModel = _$StaffModelTearOff();

/// @nodoc
mixin _$StaffModel {
  @JsonKey(name: 'allowedroles')
  List<String> get allowedRoles;
  @JsonKey(name: 'serviceoffered')
  List<String> get serviceOffered;
  @JsonKey(name: 'addressinfo')
  String get addressInfo;
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @JsonKey(name: 'basicbio')
  String get basicBio;
  @JsonKey(name: 'category')
  String get category;
  @JsonKey(name: 'educationalqualification')
  String get educationalQualification;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'phonenumstr')
  String get phoneNumStr;
  @JsonKey(name: 'photo1')
  String get photo1;
  @JsonKey(name: 'staffid')
  String get staffID;
  @JsonKey(name: 'virtualroomattached')
  int get virtualRoomAttached;
  @JsonKey(name: 'casualleave')
  int get casualLeave;
  @JsonKey(name: 'paidleave')
  int get paidLeave;
  @JsonKey(name: 'sickleave')
  int get sickLeave;
  @JsonKey(name: 'version')
  int get version;
  @JsonKey(name: 'timeinterval')
  int get timeInterval;
  @JsonKey(name: 'locationupdaterequired')
  bool get locationUpdateRequired;
  @JsonKey(name: 'showasteammember')
  bool get showAsTeamMember;
  @JsonKey(name: 'terminate')
  bool get terminate;
  @JsonKey(name: 'issuspended')
  bool get isSuspended;
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $StaffModelCopyWith<StaffModel> get copyWith;
}

/// @nodoc
abstract class $StaffModelCopyWith<$Res> {
  factory $StaffModelCopyWith(
          StaffModel value, $Res Function(StaffModel) then) =
      _$StaffModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'allowedroles')
          List<String> allowedRoles,
      @JsonKey(name: 'serviceoffered')
          List<String> serviceOffered,
      @JsonKey(name: 'addressinfo')
          String addressInfo,
      @JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'basicbio')
          String basicBio,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'educationalqualification')
          String educationalQualification,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'phonenumstr')
          String phoneNumStr,
      @JsonKey(name: 'photo1')
          String photo1,
      @JsonKey(name: 'staffid')
          String staffID,
      @JsonKey(name: 'virtualroomattached')
          int virtualRoomAttached,
      @JsonKey(name: 'casualleave')
          int casualLeave,
      @JsonKey(name: 'paidleave')
          int paidLeave,
      @JsonKey(name: 'sickleave')
          int sickLeave,
      @JsonKey(name: 'version')
          int version,
      @JsonKey(name: 'timeinterval')
          int timeInterval,
      @JsonKey(name: 'locationupdaterequired')
          bool locationUpdateRequired,
      @JsonKey(name: 'showasteammember')
          bool showAsTeamMember,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'issuspended')
          bool isSuspended,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate});
}

/// @nodoc
class _$StaffModelCopyWithImpl<$Res> implements $StaffModelCopyWith<$Res> {
  _$StaffModelCopyWithImpl(this._value, this._then);

  final StaffModel _value;
  // ignore: unused_field
  final $Res Function(StaffModel) _then;

  @override
  $Res call({
    Object allowedRoles = freezed,
    Object serviceOffered = freezed,
    Object addressInfo = freezed,
    Object appUserId = freezed,
    Object basicBio = freezed,
    Object category = freezed,
    Object educationalQualification = freezed,
    Object email = freezed,
    Object name = freezed,
    Object phoneNumStr = freezed,
    Object photo1 = freezed,
    Object staffID = freezed,
    Object virtualRoomAttached = freezed,
    Object casualLeave = freezed,
    Object paidLeave = freezed,
    Object sickLeave = freezed,
    Object version = freezed,
    Object timeInterval = freezed,
    Object locationUpdateRequired = freezed,
    Object showAsTeamMember = freezed,
    Object terminate = freezed,
    Object isSuspended = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_value.copyWith(
      allowedRoles: allowedRoles == freezed
          ? _value.allowedRoles
          : allowedRoles as List<String>,
      serviceOffered: serviceOffered == freezed
          ? _value.serviceOffered
          : serviceOffered as List<String>,
      addressInfo:
          addressInfo == freezed ? _value.addressInfo : addressInfo as String,
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      basicBio: basicBio == freezed ? _value.basicBio : basicBio as String,
      category: category == freezed ? _value.category : category as String,
      educationalQualification: educationalQualification == freezed
          ? _value.educationalQualification
          : educationalQualification as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumStr:
          phoneNumStr == freezed ? _value.phoneNumStr : phoneNumStr as String,
      photo1: photo1 == freezed ? _value.photo1 : photo1 as String,
      staffID: staffID == freezed ? _value.staffID : staffID as String,
      virtualRoomAttached: virtualRoomAttached == freezed
          ? _value.virtualRoomAttached
          : virtualRoomAttached as int,
      casualLeave:
          casualLeave == freezed ? _value.casualLeave : casualLeave as int,
      paidLeave: paidLeave == freezed ? _value.paidLeave : paidLeave as int,
      sickLeave: sickLeave == freezed ? _value.sickLeave : sickLeave as int,
      version: version == freezed ? _value.version : version as int,
      timeInterval:
          timeInterval == freezed ? _value.timeInterval : timeInterval as int,
      locationUpdateRequired: locationUpdateRequired == freezed
          ? _value.locationUpdateRequired
          : locationUpdateRequired as bool,
      showAsTeamMember: showAsTeamMember == freezed
          ? _value.showAsTeamMember
          : showAsTeamMember as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      isSuspended:
          isSuspended == freezed ? _value.isSuspended : isSuspended as bool,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$StaffModelCopyWith<$Res> implements $StaffModelCopyWith<$Res> {
  factory _$StaffModelCopyWith(
          _StaffModel value, $Res Function(_StaffModel) then) =
      __$StaffModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'allowedroles')
          List<String> allowedRoles,
      @JsonKey(name: 'serviceoffered')
          List<String> serviceOffered,
      @JsonKey(name: 'addressinfo')
          String addressInfo,
      @JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'basicbio')
          String basicBio,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'educationalqualification')
          String educationalQualification,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'phonenumstr')
          String phoneNumStr,
      @JsonKey(name: 'photo1')
          String photo1,
      @JsonKey(name: 'staffid')
          String staffID,
      @JsonKey(name: 'virtualroomattached')
          int virtualRoomAttached,
      @JsonKey(name: 'casualleave')
          int casualLeave,
      @JsonKey(name: 'paidleave')
          int paidLeave,
      @JsonKey(name: 'sickleave')
          int sickLeave,
      @JsonKey(name: 'version')
          int version,
      @JsonKey(name: 'timeinterval')
          int timeInterval,
      @JsonKey(name: 'locationupdaterequired')
          bool locationUpdateRequired,
      @JsonKey(name: 'showasteammember')
          bool showAsTeamMember,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'issuspended')
          bool isSuspended,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate});
}

/// @nodoc
class __$StaffModelCopyWithImpl<$Res> extends _$StaffModelCopyWithImpl<$Res>
    implements _$StaffModelCopyWith<$Res> {
  __$StaffModelCopyWithImpl(
      _StaffModel _value, $Res Function(_StaffModel) _then)
      : super(_value, (v) => _then(v as _StaffModel));

  @override
  _StaffModel get _value => super._value as _StaffModel;

  @override
  $Res call({
    Object allowedRoles = freezed,
    Object serviceOffered = freezed,
    Object addressInfo = freezed,
    Object appUserId = freezed,
    Object basicBio = freezed,
    Object category = freezed,
    Object educationalQualification = freezed,
    Object email = freezed,
    Object name = freezed,
    Object phoneNumStr = freezed,
    Object photo1 = freezed,
    Object staffID = freezed,
    Object virtualRoomAttached = freezed,
    Object casualLeave = freezed,
    Object paidLeave = freezed,
    Object sickLeave = freezed,
    Object version = freezed,
    Object timeInterval = freezed,
    Object locationUpdateRequired = freezed,
    Object showAsTeamMember = freezed,
    Object terminate = freezed,
    Object isSuspended = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    return _then(_StaffModel(
      allowedRoles: allowedRoles == freezed
          ? _value.allowedRoles
          : allowedRoles as List<String>,
      serviceOffered: serviceOffered == freezed
          ? _value.serviceOffered
          : serviceOffered as List<String>,
      addressInfo:
          addressInfo == freezed ? _value.addressInfo : addressInfo as String,
      appUserId: appUserId == freezed ? _value.appUserId : appUserId as String,
      basicBio: basicBio == freezed ? _value.basicBio : basicBio as String,
      category: category == freezed ? _value.category : category as String,
      educationalQualification: educationalQualification == freezed
          ? _value.educationalQualification
          : educationalQualification as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumStr:
          phoneNumStr == freezed ? _value.phoneNumStr : phoneNumStr as String,
      photo1: photo1 == freezed ? _value.photo1 : photo1 as String,
      staffID: staffID == freezed ? _value.staffID : staffID as String,
      virtualRoomAttached: virtualRoomAttached == freezed
          ? _value.virtualRoomAttached
          : virtualRoomAttached as int,
      casualLeave:
          casualLeave == freezed ? _value.casualLeave : casualLeave as int,
      paidLeave: paidLeave == freezed ? _value.paidLeave : paidLeave as int,
      sickLeave: sickLeave == freezed ? _value.sickLeave : sickLeave as int,
      version: version == freezed ? _value.version : version as int,
      timeInterval:
          timeInterval == freezed ? _value.timeInterval : timeInterval as int,
      locationUpdateRequired: locationUpdateRequired == freezed
          ? _value.locationUpdateRequired
          : locationUpdateRequired as bool,
      showAsTeamMember: showAsTeamMember == freezed
          ? _value.showAsTeamMember
          : showAsTeamMember as bool,
      terminate: terminate == freezed ? _value.terminate : terminate as bool,
      isSuspended:
          isSuspended == freezed ? _value.isSuspended : isSuspended as bool,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StaffModel with DiagnosticableTreeMixin implements _StaffModel {
  _$_StaffModel(
      {@JsonKey(name: 'allowedroles')
          this.allowedRoles,
      @JsonKey(name: 'serviceoffered')
          this.serviceOffered,
      @JsonKey(name: 'addressinfo')
          this.addressInfo,
      @JsonKey(name: 'appuserid')
          this.appUserId,
      @JsonKey(name: 'basicbio')
          this.basicBio,
      @JsonKey(name: 'category')
          this.category,
      @JsonKey(name: 'educationalqualification')
          this.educationalQualification,
      @JsonKey(name: 'email')
          this.email,
      @JsonKey(name: 'name')
          this.name,
      @JsonKey(name: 'phonenumstr')
          this.phoneNumStr,
      @JsonKey(name: 'photo1')
          this.photo1,
      @JsonKey(name: 'staffid')
          this.staffID,
      @JsonKey(name: 'virtualroomattached')
          this.virtualRoomAttached,
      @JsonKey(name: 'casualleave')
          this.casualLeave,
      @JsonKey(name: 'paidleave')
          this.paidLeave,
      @JsonKey(name: 'sickleave')
          this.sickLeave,
      @JsonKey(name: 'version')
          this.version,
      @JsonKey(name: 'timeinterval')
          this.timeInterval,
      @JsonKey(name: 'locationupdaterequired')
          this.locationUpdateRequired,
      @JsonKey(name: 'showasteammember')
          this.showAsTeamMember,
      @JsonKey(name: 'terminate')
          this.terminate,
      @JsonKey(name: 'issuspended')
          this.isSuspended,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          this.endDate});

  factory _$_StaffModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StaffModelFromJson(json);

  @override
  @JsonKey(name: 'allowedroles')
  final List<String> allowedRoles;
  @override
  @JsonKey(name: 'serviceoffered')
  final List<String> serviceOffered;
  @override
  @JsonKey(name: 'addressinfo')
  final String addressInfo;
  @override
  @JsonKey(name: 'appuserid')
  final String appUserId;
  @override
  @JsonKey(name: 'basicbio')
  final String basicBio;
  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'educationalqualification')
  final String educationalQualification;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phonenumstr')
  final String phoneNumStr;
  @override
  @JsonKey(name: 'photo1')
  final String photo1;
  @override
  @JsonKey(name: 'staffid')
  final String staffID;
  @override
  @JsonKey(name: 'virtualroomattached')
  final int virtualRoomAttached;
  @override
  @JsonKey(name: 'casualleave')
  final int casualLeave;
  @override
  @JsonKey(name: 'paidleave')
  final int paidLeave;
  @override
  @JsonKey(name: 'sickleave')
  final int sickLeave;
  @override
  @JsonKey(name: 'version')
  final int version;
  @override
  @JsonKey(name: 'timeinterval')
  final int timeInterval;
  @override
  @JsonKey(name: 'locationupdaterequired')
  final bool locationUpdateRequired;
  @override
  @JsonKey(name: 'showasteammember')
  final bool showAsTeamMember;
  @override
  @JsonKey(name: 'terminate')
  final bool terminate;
  @override
  @JsonKey(name: 'issuspended')
  final bool isSuspended;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  final DateTime endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StaffModel(allowedRoles: $allowedRoles, serviceOffered: $serviceOffered, addressInfo: $addressInfo, appUserId: $appUserId, basicBio: $basicBio, category: $category, educationalQualification: $educationalQualification, email: $email, name: $name, phoneNumStr: $phoneNumStr, photo1: $photo1, staffID: $staffID, virtualRoomAttached: $virtualRoomAttached, casualLeave: $casualLeave, paidLeave: $paidLeave, sickLeave: $sickLeave, version: $version, timeInterval: $timeInterval, locationUpdateRequired: $locationUpdateRequired, showAsTeamMember: $showAsTeamMember, terminate: $terminate, isSuspended: $isSuspended, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StaffModel'))
      ..add(DiagnosticsProperty('allowedRoles', allowedRoles))
      ..add(DiagnosticsProperty('serviceOffered', serviceOffered))
      ..add(DiagnosticsProperty('addressInfo', addressInfo))
      ..add(DiagnosticsProperty('appUserId', appUserId))
      ..add(DiagnosticsProperty('basicBio', basicBio))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty(
          'educationalQualification', educationalQualification))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phoneNumStr', phoneNumStr))
      ..add(DiagnosticsProperty('photo1', photo1))
      ..add(DiagnosticsProperty('staffID', staffID))
      ..add(DiagnosticsProperty('virtualRoomAttached', virtualRoomAttached))
      ..add(DiagnosticsProperty('casualLeave', casualLeave))
      ..add(DiagnosticsProperty('paidLeave', paidLeave))
      ..add(DiagnosticsProperty('sickLeave', sickLeave))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('timeInterval', timeInterval))
      ..add(
          DiagnosticsProperty('locationUpdateRequired', locationUpdateRequired))
      ..add(DiagnosticsProperty('showAsTeamMember', showAsTeamMember))
      ..add(DiagnosticsProperty('terminate', terminate))
      ..add(DiagnosticsProperty('isSuspended', isSuspended))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StaffModel &&
            (identical(other.allowedRoles, allowedRoles) ||
                const DeepCollectionEquality()
                    .equals(other.allowedRoles, allowedRoles)) &&
            (identical(other.serviceOffered, serviceOffered) ||
                const DeepCollectionEquality()
                    .equals(other.serviceOffered, serviceOffered)) &&
            (identical(other.addressInfo, addressInfo) ||
                const DeepCollectionEquality()
                    .equals(other.addressInfo, addressInfo)) &&
            (identical(other.appUserId, appUserId) ||
                const DeepCollectionEquality()
                    .equals(other.appUserId, appUserId)) &&
            (identical(other.basicBio, basicBio) ||
                const DeepCollectionEquality()
                    .equals(other.basicBio, basicBio)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.educationalQualification, educationalQualification) ||
                const DeepCollectionEquality().equals(
                    other.educationalQualification,
                    educationalQualification)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumStr, phoneNumStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumStr, phoneNumStr)) &&
            (identical(other.photo1, photo1) ||
                const DeepCollectionEquality().equals(other.photo1, photo1)) &&
            (identical(other.staffID, staffID) ||
                const DeepCollectionEquality()
                    .equals(other.staffID, staffID)) &&
            (identical(other.virtualRoomAttached, virtualRoomAttached) ||
                const DeepCollectionEquality()
                    .equals(other.virtualRoomAttached, virtualRoomAttached)) &&
            (identical(other.casualLeave, casualLeave) ||
                const DeepCollectionEquality()
                    .equals(other.casualLeave, casualLeave)) &&
            (identical(other.paidLeave, paidLeave) ||
                const DeepCollectionEquality()
                    .equals(other.paidLeave, paidLeave)) &&
            (identical(other.sickLeave, sickLeave) ||
                const DeepCollectionEquality()
                    .equals(other.sickLeave, sickLeave)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.timeInterval, timeInterval) ||
                const DeepCollectionEquality()
                    .equals(other.timeInterval, timeInterval)) &&
            (identical(other.locationUpdateRequired, locationUpdateRequired) ||
                const DeepCollectionEquality().equals(
                    other.locationUpdateRequired, locationUpdateRequired)) &&
            (identical(other.showAsTeamMember, showAsTeamMember) || const DeepCollectionEquality().equals(other.showAsTeamMember, showAsTeamMember)) &&
            (identical(other.terminate, terminate) || const DeepCollectionEquality().equals(other.terminate, terminate)) &&
            (identical(other.isSuspended, isSuspended) || const DeepCollectionEquality().equals(other.isSuspended, isSuspended)) &&
            (identical(other.startDate, startDate) || const DeepCollectionEquality().equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) || const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allowedRoles) ^
      const DeepCollectionEquality().hash(serviceOffered) ^
      const DeepCollectionEquality().hash(addressInfo) ^
      const DeepCollectionEquality().hash(appUserId) ^
      const DeepCollectionEquality().hash(basicBio) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(educationalQualification) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumStr) ^
      const DeepCollectionEquality().hash(photo1) ^
      const DeepCollectionEquality().hash(staffID) ^
      const DeepCollectionEquality().hash(virtualRoomAttached) ^
      const DeepCollectionEquality().hash(casualLeave) ^
      const DeepCollectionEquality().hash(paidLeave) ^
      const DeepCollectionEquality().hash(sickLeave) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(timeInterval) ^
      const DeepCollectionEquality().hash(locationUpdateRequired) ^
      const DeepCollectionEquality().hash(showAsTeamMember) ^
      const DeepCollectionEquality().hash(terminate) ^
      const DeepCollectionEquality().hash(isSuspended) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate);

  @JsonKey(ignore: true)
  @override
  _$StaffModelCopyWith<_StaffModel> get copyWith =>
      __$StaffModelCopyWithImpl<_StaffModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StaffModelToJson(this);
  }
}

abstract class _StaffModel implements StaffModel {
  factory _StaffModel(
      {@JsonKey(name: 'allowedroles')
          List<String> allowedRoles,
      @JsonKey(name: 'serviceoffered')
          List<String> serviceOffered,
      @JsonKey(name: 'addressinfo')
          String addressInfo,
      @JsonKey(name: 'appuserid')
          String appUserId,
      @JsonKey(name: 'basicbio')
          String basicBio,
      @JsonKey(name: 'category')
          String category,
      @JsonKey(name: 'educationalqualification')
          String educationalQualification,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'phonenumstr')
          String phoneNumStr,
      @JsonKey(name: 'photo1')
          String photo1,
      @JsonKey(name: 'staffid')
          String staffID,
      @JsonKey(name: 'virtualroomattached')
          int virtualRoomAttached,
      @JsonKey(name: 'casualleave')
          int casualLeave,
      @JsonKey(name: 'paidleave')
          int paidLeave,
      @JsonKey(name: 'sickleave')
          int sickLeave,
      @JsonKey(name: 'version')
          int version,
      @JsonKey(name: 'timeinterval')
          int timeInterval,
      @JsonKey(name: 'locationupdaterequired')
          bool locationUpdateRequired,
      @JsonKey(name: 'showasteammember')
          bool showAsTeamMember,
      @JsonKey(name: 'terminate')
          bool terminate,
      @JsonKey(name: 'issuspended')
          bool isSuspended,
      @JsonKey(name: 'startdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime startDate,
      @JsonKey(name: 'enddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
          DateTime endDate}) = _$_StaffModel;

  factory _StaffModel.fromJson(Map<String, dynamic> json) =
      _$_StaffModel.fromJson;

  @override
  @JsonKey(name: 'allowedroles')
  List<String> get allowedRoles;
  @override
  @JsonKey(name: 'serviceoffered')
  List<String> get serviceOffered;
  @override
  @JsonKey(name: 'addressinfo')
  String get addressInfo;
  @override
  @JsonKey(name: 'appuserid')
  String get appUserId;
  @override
  @JsonKey(name: 'basicbio')
  String get basicBio;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'educationalqualification')
  String get educationalQualification;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'phonenumstr')
  String get phoneNumStr;
  @override
  @JsonKey(name: 'photo1')
  String get photo1;
  @override
  @JsonKey(name: 'staffid')
  String get staffID;
  @override
  @JsonKey(name: 'virtualroomattached')
  int get virtualRoomAttached;
  @override
  @JsonKey(name: 'casualleave')
  int get casualLeave;
  @override
  @JsonKey(name: 'paidleave')
  int get paidLeave;
  @override
  @JsonKey(name: 'sickleave')
  int get sickLeave;
  @override
  @JsonKey(name: 'version')
  int get version;
  @override
  @JsonKey(name: 'timeinterval')
  int get timeInterval;
  @override
  @JsonKey(name: 'locationupdaterequired')
  bool get locationUpdateRequired;
  @override
  @JsonKey(name: 'showasteammember')
  bool get showAsTeamMember;
  @override
  @JsonKey(name: 'terminate')
  bool get terminate;
  @override
  @JsonKey(name: 'issuspended')
  bool get isSuspended;
  @override
  @JsonKey(
      name: 'startdate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get startDate;
  @override
  @JsonKey(
      name: 'enddate',
      fromJson: JsonHelper.fromJsonTimeStamp,
      toJson: JsonHelper.toJsonTimeStamp)
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$StaffModelCopyWith<_StaffModel> get copyWith;
}
