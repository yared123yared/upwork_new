part of 'bloc.dart';




class SessionTermModelListEvent extends Equatable {
  const SessionTermModelListEvent();
  List<Object> get props => [];
}












//to get listdata
class getListData extends SessionTermModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid,@required this.entitytype});
  @override
  List<Object> get props => [entityid,entitytype];
}



//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends SessionTermModelListEvent {
  
  final SessionTermModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [ item, entityid, entitytype];
}





