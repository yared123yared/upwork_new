part of 'bloc.dart';

class VehicleRelationEvent extends Equatable {
  const VehicleRelationEvent();
  @override
  List<Object> get props => [];
}

class TripCutSearched extends VehicleRelationEvent {
  final String entityid;
  final String day;

  TripCutSearched({@required this.entityid, @required this.day});

  @override
  List<Object> get props => [this.entityid, this.day];
}

class VehicleSearched extends VehicleRelationEvent {
  final String entityid;
  final String numberPlate;

  VehicleSearched({@required this.entityid, @required this.numberPlate});

  @override
  List<Object> get props => [this.entityid, this.numberPlate];
}

class StaffSearched extends VehicleRelationEvent {
  final String entityid;
  final String staffName;

  StaffSearched({@required this.entityid, @required this.staffName});

  @override
  List<Object> get props => [this.entityid, this.staffName];
}

class StaffFetched extends VehicleRelationEvent {
  final RegisteredUser staff;
  final StaffNumber staffNumber;
  StaffFetched({@required this.staff, @required this.staffNumber});

  @override
  List<Object> get props => [this.staff, this.staffNumber];
}

class VehicleFetched extends VehicleRelationEvent {
  final Vehicle vehicle;

  VehicleFetched({@required this.vehicle});

  @override
  List<Object> get props => [this.vehicle];
}

class TripCutFetched extends VehicleRelationEvent {
  final TripCutShort tripCut;

  TripCutFetched({@required this.tripCut});

  @override
  List<Object> get props => [this.tripCut];
}


class createItem extends VehicleRelationEvent {
  final Relation item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends VehicleRelationEvent {
  final Relation item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends VehicleRelationEvent {
  final Relation newitem;
  final Relation olditem;
  final String entityid;
  final String entitytype;
  const updateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class getAdditionalDataEntryIDAvailable extends VehicleRelationEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends VehicleRelationEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
