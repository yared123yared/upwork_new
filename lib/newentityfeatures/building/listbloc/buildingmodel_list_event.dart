part of 'buildingmodel_list_bloc.dart';

@freezed
abstract class BuildingModelListEvent with _$BuildingModelListEvent {
  const factory BuildingModelListEvent.initialized() = _Initialized;
  const factory BuildingModelListEvent.getListData(
      String entityID, String entityType) = _GetListData;
  const factory BuildingModelListEvent.deleteItemWithData(
          BuildingModel item, String entityid, String entitytype) =
      _DeleteItemWithData;
}
