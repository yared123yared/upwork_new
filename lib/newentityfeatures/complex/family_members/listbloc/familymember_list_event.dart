part of 'bloc.dart';

class FamilyMemberListEvent extends Equatable {
  const FamilyMemberListEvent();
  List<Object> get props => [];
}

class getPreData extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  final List<String> units;
  
  getListDataWithSearchParameter({
    @required this.entityid,
    @required this.entitytype,
    @required this.units,
  });
  @override
  List<Object> get props => [entityid, entitytype, units];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends FamilyMemberListEvent {
  final FamilyMember item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
