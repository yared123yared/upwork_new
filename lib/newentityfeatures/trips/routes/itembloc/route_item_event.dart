part of 'bloc.dart';

class RouteEvent extends Equatable {
  const RouteEvent();
  @override
  List<Object> get props => [];
}

class RoutePointsSearchResultsFetched extends RouteEvent {
  final String entityid;
  final String zipCode;
  final String town;
  final String state;
  final String district;

  RoutePointsSearchResultsFetched({
    @required this.entityid,
    @required this.zipCode,
    @required this.town,
    @required this.state,
    @required this.district,
  });
  @override
  List<Object> get props => [];
}

class RoutePointFetched extends RouteEvent {
  final RoutePointsModel routePoint;

  RoutePointFetched({@required this.routePoint});
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'RoutePointFetched : {Route Point name : ${routePoint.pointName} | Route Point lat : ${routePoint.geoPoint.latitude} | Route Point long : ${routePoint.geoPoint.longitude}';
  }
}

class RoutePointsSearchReset extends RouteEvent {
  RoutePointsSearchReset();
  @override
  List<Object> get props => [];
}

class createItem extends RouteEvent {
  final RouteModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends RouteEvent {
  final RouteModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends RouteEvent {
  final RouteModel newitem;
  final RouteModel olditem;
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
class getAdditionalDataEntryIDAvailable extends RouteEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends RouteEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
