part of 'bloc.dart';

class RouteListEvent extends Equatable {
  const RouteListEvent();
  List<Object> get props => [];
}

class getPreData extends RouteListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends RouteListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends RouteListEvent {
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
class deleteItemWithData extends RouteListEvent {
  final RouteModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
