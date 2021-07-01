// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  LogicalFailure logical(
      {@required String returnType,
      @required String path,
      @required String error}) {
    return LogicalFailure(
      returnType: returnType,
      path: path,
      error: error,
    );
  }

// ignore: unused_element
  ExceptionFailure exception(
      {@required String returnType,
      @required String path,
      @required String error}) {
    return ExceptionFailure(
      returnType: returnType,
      path: path,
      error: error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  String get returnType;
  String get path;
  String get error;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logical(String returnType, String path, String error),
    @required TResult exception(String returnType, String path, String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logical(String returnType, String path, String error),
    TResult exception(String returnType, String path, String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logical(LogicalFailure value),
    @required TResult exception(ExceptionFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logical(LogicalFailure value),
    TResult exception(ExceptionFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String returnType, String path, String error});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object returnType = freezed,
    Object path = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      returnType:
          returnType == freezed ? _value.returnType : returnType as String,
      path: path == freezed ? _value.path : path as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class $LogicalFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $LogicalFailureCopyWith(
          LogicalFailure value, $Res Function(LogicalFailure) then) =
      _$LogicalFailureCopyWithImpl<$Res>;
  @override
  $Res call({String returnType, String path, String error});
}

/// @nodoc
class _$LogicalFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $LogicalFailureCopyWith<$Res> {
  _$LogicalFailureCopyWithImpl(
      LogicalFailure _value, $Res Function(LogicalFailure) _then)
      : super(_value, (v) => _then(v as LogicalFailure));

  @override
  LogicalFailure get _value => super._value as LogicalFailure;

  @override
  $Res call({
    Object returnType = freezed,
    Object path = freezed,
    Object error = freezed,
  }) {
    return _then(LogicalFailure(
      returnType:
          returnType == freezed ? _value.returnType : returnType as String,
      path: path == freezed ? _value.path : path as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$LogicalFailure implements LogicalFailure {
  const _$LogicalFailure(
      {@required this.returnType, @required this.path, @required this.error})
      : assert(returnType != null),
        assert(path != null),
        assert(error != null);

  @override
  final String returnType;
  @override
  final String path;
  @override
  final String error;

  @override
  String toString() {
    return 'Failure.logical(returnType: $returnType, path: $path, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LogicalFailure &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $LogicalFailureCopyWith<LogicalFailure> get copyWith =>
      _$LogicalFailureCopyWithImpl<LogicalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logical(String returnType, String path, String error),
    @required TResult exception(String returnType, String path, String error),
  }) {
    assert(logical != null);
    assert(exception != null);
    return logical(returnType, path, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logical(String returnType, String path, String error),
    TResult exception(String returnType, String path, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logical != null) {
      return logical(returnType, path, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logical(LogicalFailure value),
    @required TResult exception(ExceptionFailure value),
  }) {
    assert(logical != null);
    assert(exception != null);
    return logical(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logical(LogicalFailure value),
    TResult exception(ExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logical != null) {
      return logical(this);
    }
    return orElse();
  }
}

abstract class LogicalFailure implements Failure {
  const factory LogicalFailure(
      {@required String returnType,
      @required String path,
      @required String error}) = _$LogicalFailure;

  @override
  String get returnType;
  @override
  String get path;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $LogicalFailureCopyWith<LogicalFailure> get copyWith;
}

/// @nodoc
abstract class $ExceptionFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory $ExceptionFailureCopyWith(
          ExceptionFailure value, $Res Function(ExceptionFailure) then) =
      _$ExceptionFailureCopyWithImpl<$Res>;
  @override
  $Res call({String returnType, String path, String error});
}

/// @nodoc
class _$ExceptionFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ExceptionFailureCopyWith<$Res> {
  _$ExceptionFailureCopyWithImpl(
      ExceptionFailure _value, $Res Function(ExceptionFailure) _then)
      : super(_value, (v) => _then(v as ExceptionFailure));

  @override
  ExceptionFailure get _value => super._value as ExceptionFailure;

  @override
  $Res call({
    Object returnType = freezed,
    Object path = freezed,
    Object error = freezed,
  }) {
    return _then(ExceptionFailure(
      returnType:
          returnType == freezed ? _value.returnType : returnType as String,
      path: path == freezed ? _value.path : path as String,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$ExceptionFailure implements ExceptionFailure {
  const _$ExceptionFailure(
      {@required this.returnType, @required this.path, @required this.error})
      : assert(returnType != null),
        assert(path != null),
        assert(error != null);

  @override
  final String returnType;
  @override
  final String path;
  @override
  final String error;

  @override
  String toString() {
    return 'Failure.exception(returnType: $returnType, path: $path, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceptionFailure &&
            (identical(other.returnType, returnType) ||
                const DeepCollectionEquality()
                    .equals(other.returnType, returnType)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(returnType) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ExceptionFailureCopyWith<ExceptionFailure> get copyWith =>
      _$ExceptionFailureCopyWithImpl<ExceptionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult logical(String returnType, String path, String error),
    @required TResult exception(String returnType, String path, String error),
  }) {
    assert(logical != null);
    assert(exception != null);
    return exception(returnType, path, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult logical(String returnType, String path, String error),
    TResult exception(String returnType, String path, String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(returnType, path, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult logical(LogicalFailure value),
    @required TResult exception(ExceptionFailure value),
  }) {
    assert(logical != null);
    assert(exception != null);
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult logical(LogicalFailure value),
    TResult exception(ExceptionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class ExceptionFailure implements Failure {
  const factory ExceptionFailure(
      {@required String returnType,
      @required String path,
      @required String error}) = _$ExceptionFailure;

  @override
  String get returnType;
  @override
  String get path;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $ExceptionFailureCopyWith<ExceptionFailure> get copyWith;
}
