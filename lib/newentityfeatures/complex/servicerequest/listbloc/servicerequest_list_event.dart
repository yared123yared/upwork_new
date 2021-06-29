part of 'bloc.dart';




class ServiceRequestModelListEvent extends Equatable {
  const ServiceRequestModelListEvent();
  List<Object> get props => [];
}












//to get listdata
class getListData extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid,@required this.entitytype});
  @override
  List<Object> get props => [entityid,entitytype];
}

class getListDataForServiceRequestType extends ServiceRequestModelListEvent {
  final String entityid;
  final String entitytype;
  final String requesttype;
  getListDataForServiceRequestType({@required this.entityid,@required this.entitytype,@required this.requesttype});
  @override
  List<Object> get props => [entityid,entitytype,requesttype];
}


//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends ServiceRequestModelListEvent {
  
  final ServiceRequestModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [ item, entityid, entitytype];
}





