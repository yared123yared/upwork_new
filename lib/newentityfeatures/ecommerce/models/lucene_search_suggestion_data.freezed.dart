// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lucene_search_suggestion_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LuceneSearchSuggestionData _$LuceneSearchSuggestionDataFromJson(
    Map<String, dynamic> json) {
  return _LuceneSearchSuggestionData.fromJson(json);
}

/// @nodoc
class _$LuceneSearchSuggestionDataTearOff {
  const _$LuceneSearchSuggestionDataTearOff();

// ignore: unused_element
  _LuceneSearchSuggestionData call(
      {@JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'luceneid') String luceneid}) {
    return _LuceneSearchSuggestionData(
      pid: pid,
      text: text,
      luceneid: luceneid,
    );
  }

// ignore: unused_element
  LuceneSearchSuggestionData fromJson(Map<String, Object> json) {
    return LuceneSearchSuggestionData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LuceneSearchSuggestionData = _$LuceneSearchSuggestionDataTearOff();

/// @nodoc
mixin _$LuceneSearchSuggestionData {
  @JsonKey(name: 'pid')
  String get pid;
  @JsonKey(name: 'text')
  String get text;
  @JsonKey(name: 'luceneid')
  String get luceneid;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LuceneSearchSuggestionDataCopyWith<LuceneSearchSuggestionData> get copyWith;
}

/// @nodoc
abstract class $LuceneSearchSuggestionDataCopyWith<$Res> {
  factory $LuceneSearchSuggestionDataCopyWith(LuceneSearchSuggestionData value,
          $Res Function(LuceneSearchSuggestionData) then) =
      _$LuceneSearchSuggestionDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'luceneid') String luceneid});
}

/// @nodoc
class _$LuceneSearchSuggestionDataCopyWithImpl<$Res>
    implements $LuceneSearchSuggestionDataCopyWith<$Res> {
  _$LuceneSearchSuggestionDataCopyWithImpl(this._value, this._then);

  final LuceneSearchSuggestionData _value;
  // ignore: unused_field
  final $Res Function(LuceneSearchSuggestionData) _then;

  @override
  $Res call({
    Object pid = freezed,
    Object text = freezed,
    Object luceneid = freezed,
  }) {
    return _then(_value.copyWith(
      pid: pid == freezed ? _value.pid : pid as String,
      text: text == freezed ? _value.text : text as String,
      luceneid: luceneid == freezed ? _value.luceneid : luceneid as String,
    ));
  }
}

/// @nodoc
abstract class _$LuceneSearchSuggestionDataCopyWith<$Res>
    implements $LuceneSearchSuggestionDataCopyWith<$Res> {
  factory _$LuceneSearchSuggestionDataCopyWith(
          _LuceneSearchSuggestionData value,
          $Res Function(_LuceneSearchSuggestionData) then) =
      __$LuceneSearchSuggestionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pid') String pid,
      @JsonKey(name: 'text') String text,
      @JsonKey(name: 'luceneid') String luceneid});
}

/// @nodoc
class __$LuceneSearchSuggestionDataCopyWithImpl<$Res>
    extends _$LuceneSearchSuggestionDataCopyWithImpl<$Res>
    implements _$LuceneSearchSuggestionDataCopyWith<$Res> {
  __$LuceneSearchSuggestionDataCopyWithImpl(_LuceneSearchSuggestionData _value,
      $Res Function(_LuceneSearchSuggestionData) _then)
      : super(_value, (v) => _then(v as _LuceneSearchSuggestionData));

  @override
  _LuceneSearchSuggestionData get _value =>
      super._value as _LuceneSearchSuggestionData;

  @override
  $Res call({
    Object pid = freezed,
    Object text = freezed,
    Object luceneid = freezed,
  }) {
    return _then(_LuceneSearchSuggestionData(
      pid: pid == freezed ? _value.pid : pid as String,
      text: text == freezed ? _value.text : text as String,
      luceneid: luceneid == freezed ? _value.luceneid : luceneid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LuceneSearchSuggestionData implements _LuceneSearchSuggestionData {
  _$_LuceneSearchSuggestionData(
      {@JsonKey(name: 'pid') this.pid,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'luceneid') this.luceneid});

  factory _$_LuceneSearchSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$_$_LuceneSearchSuggestionDataFromJson(json);

  @override
  @JsonKey(name: 'pid')
  final String pid;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'luceneid')
  final String luceneid;

  @override
  String toString() {
    return 'LuceneSearchSuggestionData(pid: $pid, text: $text, luceneid: $luceneid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LuceneSearchSuggestionData &&
            (identical(other.pid, pid) ||
                const DeepCollectionEquality().equals(other.pid, pid)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.luceneid, luceneid) ||
                const DeepCollectionEquality()
                    .equals(other.luceneid, luceneid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pid) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(luceneid);

  @JsonKey(ignore: true)
  @override
  _$LuceneSearchSuggestionDataCopyWith<_LuceneSearchSuggestionData>
      get copyWith => __$LuceneSearchSuggestionDataCopyWithImpl<
          _LuceneSearchSuggestionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LuceneSearchSuggestionDataToJson(this);
  }
}

abstract class _LuceneSearchSuggestionData
    implements LuceneSearchSuggestionData {
  factory _LuceneSearchSuggestionData(
          {@JsonKey(name: 'pid') String pid,
          @JsonKey(name: 'text') String text,
          @JsonKey(name: 'luceneid') String luceneid}) =
      _$_LuceneSearchSuggestionData;

  factory _LuceneSearchSuggestionData.fromJson(Map<String, dynamic> json) =
      _$_LuceneSearchSuggestionData.fromJson;

  @override
  @JsonKey(name: 'pid')
  String get pid;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'luceneid')
  String get luceneid;
  @override
  @JsonKey(ignore: true)
  _$LuceneSearchSuggestionDataCopyWith<_LuceneSearchSuggestionData>
      get copyWith;
}
