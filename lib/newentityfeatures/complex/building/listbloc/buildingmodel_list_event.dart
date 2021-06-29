part of 'bloc.dart';




class BuildingModelListEvent extends Equatable {
  const BuildingModelListEvent();
  List<Object> get props => [];
}












//to get listdata
class getListData extends BuildingModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid,@required this.entitytype});
  @override
  List<Object> get props => [entityid,entitytype];
}



//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends BuildingModelListEvent {
  
  final BuildingModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [ item, entityid, entitytype];
}





