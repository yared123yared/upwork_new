// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ContactDetailsData _$ContactDetailsDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return ContactDetails.fromJson(json);
    case 'address':
      return Address.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ContactDetailsDataTearOff {
  const _$ContactDetailsDataTearOff();

// ignore: unused_element
  ContactDetails call(
      {@required String name,
      @required String phonenum,
      @required bool sharephone,
      @required String email,
      @required bool shareemail,
      @required Address address,
      @required bool shareaddress}) {
    return ContactDetails(
      name: name,
      phonenum: phonenum,
      sharephone: sharephone,
      email: email,
      shareemail: shareemail,
      address: address,
      shareaddress: shareaddress,
    );
  }

// ignore: unused_element
  Address address(
      {@required String country,
      @required String state,
      @required String district,
      @required String townVillage,
      @required String areaSector,
      @required String societyname,
      @required String addressline,
      @required double latitude,
      @required double longitude}) {
    return Address(
      country: country,
      state: state,
      district: district,
      townVillage: townVillage,
      areaSector: areaSector,
      societyname: societyname,
      addressline: addressline,
      latitude: latitude,
      longitude: longitude,
    );
  }

// ignore: unused_element
  ContactDetailsData fromJson(Map<String, Object> json) {
    return ContactDetailsData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ContactDetailsData = _$ContactDetailsDataTearOff();

/// @nodoc
mixin _$ContactDetailsData {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    @required
        TResult address(
            String country,
            String state,
            String district,
            String townVillage,
            String areaSector,
            String societyname,
            String addressline,
            double latitude,
            double longitude),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    TResult address(
        String country,
        String state,
        String district,
        String townVillage,
        String areaSector,
        String societyname,
        String addressline,
        double latitude,
        double longitude),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(ContactDetails value), {
    @required TResult address(Address value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ContactDetails value), {
    TResult address(Address value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ContactDetailsDataCopyWith<$Res> {
  factory $ContactDetailsDataCopyWith(
          ContactDetailsData value, $Res Function(ContactDetailsData) then) =
      _$ContactDetailsDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactDetailsDataCopyWithImpl<$Res>
    implements $ContactDetailsDataCopyWith<$Res> {
  _$ContactDetailsDataCopyWithImpl(this._value, this._then);

  final ContactDetailsData _value;
  // ignore: unused_field
  final $Res Function(ContactDetailsData) _then;
}

/// @nodoc
abstract class $ContactDetailsCopyWith<$Res> {
  factory $ContactDetailsCopyWith(
          ContactDetails value, $Res Function(ContactDetails) then) =
      _$ContactDetailsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phonenum,
      bool sharephone,
      String email,
      bool shareemail,
      Address address,
      bool shareaddress});
}

/// @nodoc
class _$ContactDetailsCopyWithImpl<$Res>
    extends _$ContactDetailsDataCopyWithImpl<$Res>
    implements $ContactDetailsCopyWith<$Res> {
  _$ContactDetailsCopyWithImpl(
      ContactDetails _value, $Res Function(ContactDetails) _then)
      : super(_value, (v) => _then(v as ContactDetails));

  @override
  ContactDetails get _value => super._value as ContactDetails;

  @override
  $Res call({
    Object name = freezed,
    Object phonenum = freezed,
    Object sharephone = freezed,
    Object email = freezed,
    Object shareemail = freezed,
    Object address = freezed,
    Object shareaddress = freezed,
  }) {
    return _then(ContactDetails(
      name: name == freezed ? _value.name : name as String,
      phonenum: phonenum == freezed ? _value.phonenum : phonenum as String,
      sharephone:
          sharephone == freezed ? _value.sharephone : sharephone as bool,
      email: email == freezed ? _value.email : email as String,
      shareemail:
          shareemail == freezed ? _value.shareemail : shareemail as bool,
      address: address == freezed ? _value.address : address as Address,
      shareaddress:
          shareaddress == freezed ? _value.shareaddress : shareaddress as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ContactDetails implements ContactDetails {
  const _$ContactDetails(
      {@required this.name,
      @required this.phonenum,
      @required this.sharephone,
      @required this.email,
      @required this.shareemail,
      @required this.address,
      @required this.shareaddress})
      : assert(name != null),
        assert(phonenum != null),
        assert(sharephone != null),
        assert(email != null),
        assert(shareemail != null),
        assert(address != null),
        assert(shareaddress != null);

  factory _$ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$_$ContactDetailsFromJson(json);

  @override
  final String name;
  @override
  final String phonenum;
  @override
  final bool sharephone;
  @override
  final String email;
  @override
  final bool shareemail;
  @override
  final Address address;
  @override
  final bool shareaddress;

  @override
  String toString() {
    return 'ContactDetailsData(name: $name, phonenum: $phonenum, sharephone: $sharephone, email: $email, shareemail: $shareemail, address: $address, shareaddress: $shareaddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContactDetails &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phonenum, phonenum) ||
                const DeepCollectionEquality()
                    .equals(other.phonenum, phonenum)) &&
            (identical(other.sharephone, sharephone) ||
                const DeepCollectionEquality()
                    .equals(other.sharephone, sharephone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.shareemail, shareemail) ||
                const DeepCollectionEquality()
                    .equals(other.shareemail, shareemail)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shareaddress, shareaddress) ||
                const DeepCollectionEquality()
                    .equals(other.shareaddress, shareaddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phonenum) ^
      const DeepCollectionEquality().hash(sharephone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(shareemail) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shareaddress);

  @JsonKey(ignore: true)
  @override
  $ContactDetailsCopyWith<ContactDetails> get copyWith =>
      _$ContactDetailsCopyWithImpl<ContactDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    @required
        TResult address(
            String country,
            String state,
            String district,
            String townVillage,
            String areaSector,
            String societyname,
            String addressline,
            double latitude,
            double longitude),
  }) {
    assert($default != null);
    assert(address != null);
    return $default(name, phonenum, sharephone, email, shareemail, this.address,
        shareaddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    TResult address(
        String country,
        String state,
        String district,
        String townVillage,
        String areaSector,
        String societyname,
        String addressline,
        double latitude,
        double longitude),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(name, phonenum, sharephone, email, shareemail,
          this.address, shareaddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(ContactDetails value), {
    @required TResult address(Address value),
  }) {
    assert($default != null);
    assert(address != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ContactDetails value), {
    TResult address(Address value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ContactDetailsToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class ContactDetails implements ContactDetailsData {
  const factory ContactDetails(
      {@required String name,
      @required String phonenum,
      @required bool sharephone,
      @required String email,
      @required bool shareemail,
      @required Address address,
      @required bool shareaddress}) = _$ContactDetails;

  factory ContactDetails.fromJson(Map<String, dynamic> json) =
      _$ContactDetails.fromJson;

  String get name;
  String get phonenum;
  bool get sharephone;
  String get email;
  bool get shareemail;
  Address get address;
  bool get shareaddress;
  @JsonKey(ignore: true)
  $ContactDetailsCopyWith<ContactDetails> get copyWith;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String country,
      String state,
      String district,
      String townVillage,
      String areaSector,
      String societyname,
      String addressline,
      double latitude,
      double longitude});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> extends _$ContactDetailsDataCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(Address _value, $Res Function(Address) _then)
      : super(_value, (v) => _then(v as Address));

  @override
  Address get _value => super._value as Address;

  @override
  $Res call({
    Object country = freezed,
    Object state = freezed,
    Object district = freezed,
    Object townVillage = freezed,
    Object areaSector = freezed,
    Object societyname = freezed,
    Object addressline = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(Address(
      country: country == freezed ? _value.country : country as String,
      state: state == freezed ? _value.state : state as String,
      district: district == freezed ? _value.district : district as String,
      townVillage:
          townVillage == freezed ? _value.townVillage : townVillage as String,
      areaSector:
          areaSector == freezed ? _value.areaSector : areaSector as String,
      societyname:
          societyname == freezed ? _value.societyname : societyname as String,
      addressline:
          addressline == freezed ? _value.addressline : addressline as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Address implements Address {
  const _$Address(
      {@required this.country,
      @required this.state,
      @required this.district,
      @required this.townVillage,
      @required this.areaSector,
      @required this.societyname,
      @required this.addressline,
      @required this.latitude,
      @required this.longitude})
      : assert(country != null),
        assert(state != null),
        assert(district != null),
        assert(townVillage != null),
        assert(areaSector != null),
        assert(societyname != null),
        assert(addressline != null),
        assert(latitude != null),
        assert(longitude != null);

  factory _$Address.fromJson(Map<String, dynamic> json) =>
      _$_$AddressFromJson(json);

  @override
  final String country;
  @override
  final String state;
  @override
  final String district;
  @override
  final String townVillage;
  @override
  final String areaSector;
  @override
  final String societyname;
  @override
  final String addressline;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ContactDetailsData.address(country: $country, state: $state, district: $district, townVillage: $townVillage, areaSector: $areaSector, societyname: $societyname, addressline: $addressline, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Address &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.townVillage, townVillage) ||
                const DeepCollectionEquality()
                    .equals(other.townVillage, townVillage)) &&
            (identical(other.areaSector, areaSector) ||
                const DeepCollectionEquality()
                    .equals(other.areaSector, areaSector)) &&
            (identical(other.societyname, societyname) ||
                const DeepCollectionEquality()
                    .equals(other.societyname, societyname)) &&
            (identical(other.addressline, addressline) ||
                const DeepCollectionEquality()
                    .equals(other.addressline, addressline)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(townVillage) ^
      const DeepCollectionEquality().hash(areaSector) ^
      const DeepCollectionEquality().hash(societyname) ^
      const DeepCollectionEquality().hash(addressline) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    @required
        TResult address(
            String country,
            String state,
            String district,
            String townVillage,
            String areaSector,
            String societyname,
            String addressline,
            double latitude,
            double longitude),
  }) {
    assert($default != null);
    assert(address != null);
    return address(country, state, district, townVillage, areaSector,
        societyname, addressline, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String name, String phonenum, bool sharephone,
        String email, bool shareemail, Address address, bool shareaddress), {
    TResult address(
        String country,
        String state,
        String district,
        String townVillage,
        String areaSector,
        String societyname,
        String addressline,
        double latitude,
        double longitude),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (address != null) {
      return address(country, state, district, townVillage, areaSector,
          societyname, addressline, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(ContactDetails value), {
    @required TResult address(Address value),
  }) {
    assert($default != null);
    assert(address != null);
    return address(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ContactDetails value), {
    TResult address(Address value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (address != null) {
      return address(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AddressToJson(this)..['runtimeType'] = 'address';
  }
}

abstract class Address implements ContactDetailsData {
  const factory Address(
      {@required String country,
      @required String state,
      @required String district,
      @required String townVillage,
      @required String areaSector,
      @required String societyname,
      @required String addressline,
      @required double latitude,
      @required double longitude}) = _$Address;

  factory Address.fromJson(Map<String, dynamic> json) = _$Address.fromJson;

  String get country;
  String get state;
  String get district;
  String get townVillage;
  String get areaSector;
  String get societyname;
  String get addressline;
  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith;
}
