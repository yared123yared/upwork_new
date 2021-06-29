part of 'bloc.dart';

class OfferingModelGroupListEvent extends Equatable {
  const OfferingModelGroupListEvent();
  List<Object> get props => [];
}

class getPreData extends OfferingModelGroupListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends OfferingModelGroupListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends OfferingModelGroupListEvent {
  final String entityid;
  final String entitytype;
  final String grade;
  // final String sessionterm;
  // final String offeringmodelgroupname;
  getListDataWithSearchParameter({
    @required this.entityid,
    @required this.entitytype,
    @required this.grade,
    // @required this.sessionterm,
    // @required this.offeringmodelgroupname,
  });
  @override
  List<Object> get props =>
      [entityid, entitytype, grade /* , sessionterm, offeringmodelgroupname */];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends OfferingModelGroupListEvent {
  final OfferingModelGroup item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
