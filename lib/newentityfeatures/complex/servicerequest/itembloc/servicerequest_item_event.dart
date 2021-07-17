part of 'bloc.dart';

class ServiceRequestModelEvent extends Equatable {
  const ServiceRequestModelEvent();
  @override
  List<Object> get props => [];
}

class createEntryLog extends ServiceRequestModelEvent {
  final EntryLogModel item;
  final String entityid;
  final String entitytype;
  const createEntryLog({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}


class createItem extends ServiceRequestModelEvent {
  final ServiceRequestModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends ServiceRequestModelEvent {
  final ServiceRequestModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends ServiceRequestModelEvent {
  final ServiceRequestModel newitem;
  final ServiceRequestModel olditem;
  final String entityid;
  final String entitytype;
  const updateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class getAdditionalDataEntryIDAvailable extends ServiceRequestModelEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends ServiceRequestModelEvent {
  final String entityid;
  final String entitytype;
  final int originType;
  final bool isupdate;
  final String requesttype;
  final serviceRequest;

  const getForNewEntry({ @required this.entityid, @required this.entitytype, @required this.isupdate, @required this.requesttype, @required this.serviceRequest, @required this.originType});
  List<Object> get() => [entityid, entitytype, isupdate, requesttype, serviceRequest, originType];
}
