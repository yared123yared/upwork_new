part of 'bloc.dart';

class SessionTermModelListEvent extends Equatable {
  const SessionTermModelListEvent();
  List<Object> get props => [];
}

//to get listdata
class GetListData extends SessionTermModelListEvent {
  final String entityid;
  final String entitytype;
  GetListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class DeleteItemWithData extends SessionTermModelListEvent {
  final SessionTerm item;
  final String entityid;
  final String entitytype;
  const DeleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
