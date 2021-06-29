part of 'buildingmodel_item_bloc.dart';

@freezed
abstract class BuildingModelItemEvent with _$BuildingModelItemEvent {
  const factory BuildingModelItemEvent.createItem(
    BuildingModel item,
    String entityID,
    String entityType,
  ) = _CreateItem;
  const factory BuildingModelItemEvent.updateItem(
    BuildingModel item,
    String entityID,
    String entityType,
  ) = _UpdateItem;
  const factory BuildingModelItemEvent.updateItemWithDiff(
    BuildingModel newItem,
    BuildingModel oldItem,
    String entityID,
    String entityType,
  ) = _UpdateItemWithDiff;

  //We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated)
  const factory BuildingModelItemEvent.getAdditionalDataEntryIDAvailable(
    String id,
    String entityID,
    String entityType,
  ) = _GetAdditionalDataEntryIDAvailable;

  //We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
  const factory BuildingModelItemEvent.getForNewEntry(
    String entityID,
    String entityType,
  ) = _GetForNewEntry;
}
