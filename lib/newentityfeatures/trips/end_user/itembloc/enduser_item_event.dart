part of 'bloc.dart';

class EndUserEvent extends Equatable {
  const EndUserEvent();
  @override
  List<Object> get props => [];
}

class BookTripEvent extends EndUserEvent {
  final RouteTripModel trip;
  final String tripCutID;
  final String entityid;

  final int adultCount;
  final int childCount;
  final int luggageWeight;
  final String seatType;

  final RoutePointsModel startPoint;
  final RoutePointsModel endPoint;

  BookTripEvent({
    @required this.trip,
    @required this.tripCutID,
    @required this.entityid,
    @required this.adultCount,
    @required this.childCount,
    @required this.luggageWeight,
    @required this.seatType,
        @required this.startPoint,
    @required this.endPoint,

  });

  @override
  List<Object> get props => [];
}

//
class createItem extends EndUserEvent {
  final VrAssignmentModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends EndUserEvent {
  final VrAssignmentModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends EndUserEvent {
  final VrAssignmentModel newitem;
  final VrAssignmentModel olditem;
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
class getAdditionalDataEntryIDAvailable extends EndUserEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends EndUserEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
