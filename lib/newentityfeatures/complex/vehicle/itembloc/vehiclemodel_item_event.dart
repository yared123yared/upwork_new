part of 'bloc.dart';

class VehicleModelEvent extends Equatable {
  const VehicleModelEvent();
  @override
  List<Object> get props => [];
}

class createItem extends VehicleModelEvent {
  final ComplexVehicleModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends VehicleModelEvent {
  final ComplexVehicleModel item;
  final String entityid;
  final String entitytype;
  final int vehicleIndex;

  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
    @required this.vehicleIndex,
  });
  List<Object> get() => [item, entityid, entitytype, vehicleIndex];
}

class updateItemWithDiff extends VehicleModelEvent {
  final ComplexVehicleModel newitem;
  final ComplexVehicleModel olditem;
  final String entityid;
  final String entitytype;
  final int vehicleIndex;
  const updateItemWithDiff({
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
class getAdditionalDataEntryIDAvailable extends VehicleModelEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends VehicleModelEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
