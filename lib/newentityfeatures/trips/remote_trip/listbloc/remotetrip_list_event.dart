part of 'bloc.dart';

class RemoteTripListEvent extends Equatable {
  const RemoteTripListEvent();
  List<Object> get props => [];
}

class RemoteTripServiceProviderListEvent extends RemoteTripListEvent {
  final String entityid;
  final String entitytype;
  const RemoteTripServiceProviderListEvent({
    @required this.entityid,
    @required this.entitytype,
  });
}

//

class getPreData extends RemoteTripListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends RemoteTripListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends RemoteTripListEvent {
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
class deleteItemWithData extends RemoteTripListEvent {
  final RemoteTripData item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
