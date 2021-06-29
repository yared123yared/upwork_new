part of 'bloc.dart';

class RouteTripEvent extends Equatable {
  const RouteTripEvent();
  @override
  List<Object> get props => [];
}

class RouteTripSearchResultsFetched extends RouteTripEvent {
  final String routeName;
  final String entityid;
  final String entitytype;

  RouteTripSearchResultsFetched({
    @required this.routeName,
    @required this.entityid,
    @required this.entitytype,
  });
  @override
  List<Object> get props => [];
}

class RouteFetched extends RouteTripEvent {
  final RouteModel route;

  RouteFetched({@required this.route});
  @override
  List<Object> get props => [];
}

class RouteTripSearchReset extends RouteTripEvent {
  RouteTripSearchReset();
  @override
  List<Object> get props => [];
}

class createItem extends RouteTripEvent {
  final RouteTripModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends RouteTripEvent {
  final RouteTripModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends RouteTripEvent {
  final RouteTripModel newitem;
  final RouteTripModel olditem;
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
class getAdditionalDataEntryIDAvailable extends RouteTripEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends RouteTripEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
