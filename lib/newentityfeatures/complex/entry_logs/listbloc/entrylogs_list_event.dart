part of 'bloc.dart';

class EntryLogsListEvent extends Equatable {
  const EntryLogsListEvent();
  List<Object> get props => [];
}

class GetPreData extends EntryLogsListEvent {
  final String entityid;
  final String entitytype;
  GetPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class GetListData extends EntryLogsListEvent {
  final String entityid;
  final String entitytype;
  GetListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class GetListDataWithSearchParameter extends EntryLogsListEvent {
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
class DeleteItemWithData extends EntryLogsListEvent {
  final EntryLogModel item;
  final String entityid;
  final String entitytype;
  const DeleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
