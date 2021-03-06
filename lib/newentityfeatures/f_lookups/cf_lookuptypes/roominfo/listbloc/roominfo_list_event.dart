part of 'bloc.dart';

class RoomInfoListEvent extends Equatable {
  const RoomInfoListEvent();
  List<Object> get props => [];
}

//to get listdata
class GetListData extends RoomInfoListEvent {
  final String entityid;
  final String entitytype;
  GetListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class DeleteItemWithData extends RoomInfoListEvent {
  final RoomInfo item;
  final String entityid;
  final String entitytype;
  const DeleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
