part of 'bloc.dart';

class FamilyMemberListEvent extends Equatable {
  const FamilyMemberListEvent();
  List<Object> get props => [];
}

class GetPreData extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  GetPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class GetListData extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  GetListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class GetListDataWithSearchParameter extends FamilyMemberListEvent {
  final String entityid;
  final String entitytype;
  final List<String> units;

  GetListDataWithSearchParameter({
    @required this.entityid,
    @required this.entitytype,
    @required this.units,
  });
  @override
  List<Object> get props => [entityid, entitytype, units];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class DeleteItemWithData extends FamilyMemberListEvent {
  final FamilyMember item;
  final String entityid;
  final String entitytype;
  const DeleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
