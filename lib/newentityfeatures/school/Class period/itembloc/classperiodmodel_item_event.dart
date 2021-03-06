part of 'bloc.dart';

class ClassPeriodModelEvent extends Equatable {
  const ClassPeriodModelEvent();
  @override
  List<Object> get props => [];
}

class CreateItem extends ClassPeriodModelEvent {
  final ClassPeriodInfo item;
  final String type;
  final String entityid;
  final String entitytype;
  const CreateItem({
    @required this.item,
    @required this.type,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, type, entityid, entitytype];
}

class UpdateItem extends ClassPeriodModelEvent {
  final ClassPeriodInfo item;
  final String entityid;
  final String entitytype;
  const UpdateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class UpdateItemWithDiff extends ClassPeriodModelEvent {
  final ClassPeriodInfo newitem;
  final ClassPeriodInfo olditem;
  final String entityid;
  final String entitytype;
  const UpdateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class GetAdditionalDataEntryIDAvailable extends ClassPeriodModelEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const GetAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class GetForNewEntry extends ClassPeriodModelEvent {
  final String entityid;
  final String entitytype;
  const GetForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}
