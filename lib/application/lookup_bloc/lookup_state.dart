part of 'lookup_bloc.dart';

@freezed
abstract class LookupState with _$LookupState {
  const factory LookupState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required String message,
    @required LookupList listData,
  }) = _LookupState;

  factory LookupState.initial() => _LookupState(
      failure: none(),
      isLoading: false,
      listData: LookupList.empty(),
      workDone: false,
      message: '');
}
