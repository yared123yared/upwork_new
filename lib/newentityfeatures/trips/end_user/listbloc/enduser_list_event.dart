part of 'bloc.dart';

class EndUserListEvent extends Equatable {
  const EndUserListEvent();
  List<Object> get props => [];
}

class StaffPositionPageEvent extends EndUserListEvent {
  final TripCut tripCut;
  final String entityid;
  final String entitytype;

  StaffPositionPageEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.tripCut,
  });

  @override
  List<Object> get props => [];
}

class EndUserRoutePointsResultsFetched extends EndUserListEvent {
  final String town;
  final String zipCode;
  final String entityid;
  final String entitytype;

  EndUserRoutePointsResultsFetched({
    @required this.entityid,
    @required this.entitytype,
    @required this.town,
    @required this.zipCode,
  });

  @override
  List<Object> get props => [];
}

class TripCutsResultsPageEvent extends EndUserListEvent {
  final String entityid;
  final RoutePointsModel startPoint;
  final RoutePointsModel endPoint;
  final DateTime startDate;

  TripCutsResultsPageEvent(
      {this.startPoint, this.endPoint, this.startDate, this.entityid});
  @override
  List<Object> get props => [startPoint, endPoint, startDate, entityid];
}

//
class getPreData extends EndUserListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends EndUserListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends EndUserListEvent {
  final String entityid;
  final String entitytype;
  final String sessionterm;
  final String offeringmodelgroupname;
  getListDataWithSearchParameter(
      {@required this.entityid,
      @required this.entitytype,
      @required this.sessionterm,
      @required this.offeringmodelgroupname});
  @override
  List<Object> get props =>
      [entityid, entitytype, sessionterm, offeringmodelgroupname];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends EndUserListEvent {
  final VrAssignmentModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
