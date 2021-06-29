part of 'bloc.dart';

class HandleRelationEvent extends Equatable {
  const HandleRelationEvent();
  @override
  List<Object> get props => [];
}

class CalenderPageEvent extends HandleRelationEvent {
  @override
  List<Object> get props => [];
}

class RelationsSearchedEvent extends HandleRelationEvent {
  final DateTime startDate;
  final RegisteredUser staff;
  final String entityid;
  RelationsSearchedEvent({
    this.startDate,
    this.staff,
    @required this.entityid,
  });

  @override
  List<Object> get props => [];
}

class TripListRetrievedEvent extends HandleRelationEvent {
  final Relation relation;
  final String entityid;
  TripListRetrievedEvent({this.relation, this.entityid});

  @override
  List<Object> get props => [];
}

class RelationCheckedInEvent extends HandleRelationEvent {
  final Relation relation;
  final String entityid;
  final DateTime startDate;
  final RegisteredUser staff;

  RelationCheckedInEvent({
    @required this.relation,
    @required this.entityid,
    @required this.startDate,
    @required this.staff,
  });

  @override
  List<Object> get props => [];
}

class RelationTripStarted extends HandleRelationEvent {
  final Relation relation;
  final RouteTripModel trip;
  final String entityid;
  RelationTripStarted(
      {@required this.relation, @required this.trip, @required this.entityid});
  @override
  List<Object> get props => [];
}

class RelationTripEnded extends HandleRelationEvent {
  final Relation relation;
  final String entityid;

  RelationTripEnded({@required this.relation, @required this.entityid});
  @override
  List<Object> get props => [];
}

class RelationTripCanceled extends HandleRelationEvent {
  @override
  List<Object> get props => [];
}

class GenerateTicketPageEvent extends HandleRelationEvent {
  final Relation relation;
  final RouteTripModel trip;
  final Ticket ticket;
  final String entityid;
  final String entitytype;

  GenerateTicketPageEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.relation,
    @required this.trip,
    @required this.ticket,
  });
  @override
  List<Object> get props => [];
}

class RelationTripTicketGenerated extends HandleRelationEvent {
  final Relation relation;
  final RouteTripModel trip;
  final List<RouteMainPoints> routePoints;
  final Ticket ticket;
  final String entityid;
  final String entitytype;

  RelationTripTicketGenerated({
    @required this.relation,
    @required this.entityid,
    @required this.entitytype,
    @required this.trip,
    @required this.routePoints,
    @required this.ticket,
  });
  @override
  List<Object> get props => [];
}

class MainPointSelectPageEvent extends HandleRelationEvent {
  final Relation relation;
  final RouteTripModel trip;
  final MainPoint startOrEndPoint;
  final List<RouteMainPoints> routePoints;
  final Ticket ticket;
  MainPointSelectPageEvent(
      {@required this.relation,
      @required this.trip,
      @required this.routePoints,
      @required this.startOrEndPoint,
      @required this.ticket});
  @override
  List<Object> get props => [];
}
//

class createItem extends HandleRelationEvent {
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

class updateItem extends HandleRelationEvent {
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

class updateItemWithDiff extends HandleRelationEvent {
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
class getAdditionalDataEntryIDAvailable extends HandleRelationEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends HandleRelationEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
