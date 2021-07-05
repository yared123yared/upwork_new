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
  final String floorNum;
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
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
