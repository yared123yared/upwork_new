part of 'buildingmodel_list_bloc.dart';

@freezed
abstract class BuildingModelListState with _$BuildingModelListState {
  const factory BuildingModelListState.initial() = _Initial;
  const factory BuildingModelListState.isBusy() = _IsBusy;
  const factory BuildingModelListState.isDeleted() = _IsDeleted;
  const factory BuildingModelListState.isListDataLoaded(
      List<BuildingModel> listdata) = _IsListDataLoaded;
  const factory BuildingModelListState.hasLogicalFailure(String error) =
      _HasLogicalFailure;
  const factory BuildingModelListState.hasExceptionFailure(String error) =
      _HasExceptionFailure;
}
