import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.logical(
      {@required String returnType,
      @required String path,
      @required String error}) = LogicalFailure;
  const factory Failure.exception(
      {@required String returnType,
      @required String path,
      @required String error}) = ExceptionFailure;
}
