part of 'bloc.dart';

class ServiceRequestModelListEvent extends Equatable {
  const ServiceRequestModelListEvent();
  List<Object> get props => [];
}

//to get listdata
class getListData extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  final List<String> residentunitlist;
  final String userid;
  getListData({@required this.entityid, @required this.entitytype, @required this.originType, @required this.residentunitlist, @required this.userid});
  @override
  List<Object> get props => [entityid, entitytype, originType,residentunitlist,userid];
}
class getPreData extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;

  getPreData({
    @required this.entityid,
    @required this.entitytype,
  });
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataByBuildingAndFloor extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  final String buildingName;
  final int floorNum;
  getListDataByBuildingAndFloor({
    @required this.entityid,
    @required this.entitytype,
    @required this.originType,
    @required this.buildingName,
    @required this.floorNum,
  });
  @override
  List<Object> get props =>
      [entityid, entitytype, originType, buildingName, floorNum];
}

class getListDataByListOfUnits extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  final List<String> unitlist;

  getListDataByListOfUnits({
    @required this.entityid,
    @required this.entitytype,
    @required this.originType,
    @required this.unitlist,

  });
  @override
  List<Object> get props =>
      [entityid, entitytype, originType, unitlist];
}


class getListDataByUnitId extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  final String unitid;

  getListDataByUnitId({
    @required this.entityid,
    @required this.entitytype,
    @required this.originType,
    @required this.unitid,

  });
  @override
  List<Object> get props =>
      [entityid, entitytype, originType, unitid];
}



class getListDataForServiceRequestType extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final String requesttype;
  getListDataForServiceRequestType(
      {@required this.entityid,
      @required this.entitytype,
      @required this.requesttype});
  @override
  List<Object> get props => [entityid, entitytype, requesttype];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends ServiceRequestModelListEvent {
  final ServiceRequestModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
