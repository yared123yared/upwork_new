part of 'lookup_bloc.dart';

@freezed
abstract class LookupState with _$LookupState {
  const factory LookupState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required LookupList listData,
  }) = _LookupState;

  // const factory LookupState.isBusy() = _LookupStateIsBusy;
  // const factory LookupState.isDeleted() = _LookupStateIsDeleted;
  // const factory LookupState.isSaved() = _LookupStateIsSaved;
  // const factory LookupState.hasFailure({@required Failure failure}) =
  //     _LookupStateHasFailure;
  // const factory LookupState.dataLoaded({LookupList list}) =
  //     _LookupStateDataLoaded;
  factory LookupState.initial() => _LookupState(
        failure: none(),
        isLoading: false,
        listData: null,
        workDone: false,
      );
}
