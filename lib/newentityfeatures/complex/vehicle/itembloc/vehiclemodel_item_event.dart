part of 'bloc.dart';

class VehicleModelEvent extends Equatable {
  const VehicleModelEvent();
  @override
  List<Object> get props => [];
}

class CreateItem extends VehicleModelEvent {
  final ComplexVehicleModel item;
  final String entityid;
  final String entitytype;
  const CreateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class UpdateItem extends VehicleModelEvent {
  final ComplexVehicleModel item;
  final String entityid;
  final String entitytype;
  final int vehicleIndex;

  const UpdateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
    @required this.vehicleIndex,
  });
  List<Object> get() => [item, entityid, entitytype, vehicleIndex];
}

class UpdateItemWithDiff extends VehicleModelEvent {
  final ComplexVehicleModel newitem;
  final ComplexVehicleModel olditem;
  final String entityid;
  final String entitytype;
  final int vehicleIndex;
  const UpdateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,
    @required this.vehicleIndex,
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype, vehicleIndex];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class GetAdditionalDataEntryIDAvailable extends VehicleModelEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const GetAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class GetForNewEntry extends VehicleModelEvent {
  final String entityid;
  final String entitytype;
  const GetForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
