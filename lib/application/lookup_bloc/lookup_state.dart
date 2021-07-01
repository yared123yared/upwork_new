part of 'lookup_bloc.dart';

@freezed
abstract class LookupState with _$LookupState {
  const factory LookupState.isBusy() = IsBusy;
  const factory LookupState.isDeleted() = IsDeleted;
  const factory LookupState.isSaved() = IsSaved;
  const factory LookupState.hasFailure({@required Failure failure}) =
      HasFailure;
  const factory LookupState.isListDataLoaded({List<Lookup> listdata}) =
      IsListDataLoaded;
  const factory LookupState.initial() = LookupStateInitial;
}
