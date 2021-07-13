part of 'bloc.dart';

class VehicleModelListEvent extends Equatable {
  const VehicleModelListEvent();
  List<Object> get props => [];
}

class GetPreData extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  GetPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata


class GetListDataByUnits extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  final  List<String> residentialunitlist;

  GetListDataByUnits({@required this.entityid, @required this.entitytype, @required this.residentialunitlist});
@override
List<Object> get props => [entityid, entitytype,residentialunitlist];
}

class GetListDataByStaffId extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  final  String staffid;

  GetListDataByStaffId({@required this.entityid, @required this.entitytype, @required this.staffid});
  @override
  List<Object> get props => [entityid, entitytype,staffid];
}
class GetListDataByNumPlate extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  final  String numplate;

  GetListDataByNumPlate({@required this.entityid, @required this.entitytype, @required this.numplate});
  @override
  List<Object> get props => [entityid, entitytype,numplate];
}



class GetListDataWithSearchParameter extends VehicleModelListEvent {
  final String entityid;
  final String entitytype;
  final String sessionterm;
  final String offeringmodelgroupname;
  GetListDataWithSearchParameter(
      {@required this.entityid,
      @required this.entitytype,
      @required this.sessionterm,
      @required this.offeringmodelgroupname});
  @override
  List<Object> get props =>
      [entityid, entitytype, sessionterm, offeringmodelgroupname];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class DeleteItemWithData extends VehicleModelListEvent {
  final ComplexVehicleModel item;
  final int index;
  final String entityid;
  final String entitytype;

  const DeleteItemWithData({
    @required this.item,
    @required this.index,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, index, entityid, entitytype];
}
