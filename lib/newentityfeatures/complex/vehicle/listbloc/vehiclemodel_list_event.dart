part of 'bloc.dart';

class VehicleModelListEvent extends Equatable {
  const VehicleModelListEvent();
  List<Object> get props => [];
}

class getPreData extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends VehicleModelListEvent {
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
class deleteItemWithData extends VehicleModelListEvent {
  final ComplexVehicleModel item;
  final int index;
  final String entityid;
  final String entitytype;

  const deleteItemWithData({
    @required this.item,
    @required this.index,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, index, entityid, entitytype];
}
