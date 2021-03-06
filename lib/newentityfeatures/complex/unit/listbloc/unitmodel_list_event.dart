part of 'bloc.dart';

class UnitModelListEvent extends Equatable {
  const UnitModelListEvent();
  List<Object> get props => [];
}

class getPreData extends UnitModelListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataByBuildingAndFloor extends UnitModelListEvent {
  final String entityid;
  final String entitytype;
  final String buildingid;
  final int floor;
  getListDataByBuildingAndFloor(
      {@required this.entityid,
      @required this.entitytype,
      @required this.buildingid,
      @required this.floor});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends UnitModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends UnitModelListEvent {
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
class deleteItemWithData extends UnitModelListEvent {
  final UnitModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
