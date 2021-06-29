part of 'buildingmodel_item_bloc.dart';

@freezed
abstract class BuildingModelItemState with _$BuildingModelItemState {
  const factory BuildingModelItemState.initial() = _Initial;
  const factory BuildingModelItemState.isBusy() = _IsBusy;
  const factory BuildingModelItemState.isSaved() = _IsSaved;
  const factory BuildingModelItemState.hasLogicalFailure(String error) =
      _HasLogicalFailure;
  const factory BuildingModelItemState.hasExceptionFailure(String error) =
      _HasExceptionFailure;

  // this state marks that entry form is ready to be displayed
  const factory BuildingModelItemState.isReadyForDetailsPage(
    String detailsType,
    String entityID,
    String entityType,
  ) = _IsReadyForDetailsPage;
}
