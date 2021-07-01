part of 'bloc.dart';

@freezed
abstract class StringListState with _$StringListState {
  const factory StringListState.isBusy() = IsBusy;
  const factory StringListState.isDeleted() = IsDeleted;
  const factory StringListState.isSaved() = IsSaved;
  const factory StringListState.hasLogicalFaliur({@required String error}) =
      HasLogicalFaliur;
  const factory StringListState.hasExceptionFaliur({@required String error}) =
      HasExceptionFaliur;
  const factory StringListState.isListDataLoaded({List<String> listdata}) =
      IsListDataLoaded;
  const factory StringListState.initial() = StringListInitialState;
}
