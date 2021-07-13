part of 'bloc.dart';

class RegistryModelListEvent extends Equatable {
  const RegistryModelListEvent();
  List<Object> get props => [];
}

class getListDataByBuildingAndFloor extends RegistryModelListEvent {
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

class getListDataByListOfUnits extends RegistryModelListEvent {
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


class getListDataByUnitId extends RegistryModelListEvent {
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


//to get listdata
class getListData extends RegistryModelListEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  getListData(
      {@required this.entityid,
      @required this.entitytype,
      @required this.originType});
  @override
  List<Object> get props => [entityid, entitytype, entitytype];
}

class getPreData extends RegistryModelListEvent {
  final String entityid;
  final String entitytype;

  getPreData({
    @required this.entityid,
    @required this.entitytype,
  });
  @override
  List<Object> get props => [entityid, entitytype];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends RegistryModelListEvent {
  final RegistryModel item;
  final String entityid;
  final String entitytype;
  final bool updateowner;

  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,@required this.updateowner
  });
  List<Object> get() => [item, entityid, entitytype,updateowner];
}
