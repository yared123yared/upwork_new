part of 'bloc.dart';

class RegistryModelEvent extends Equatable {
  const RegistryModelEvent();
  @override
  List<Object> get props => [];
}

class createRegistryViaResidentModel extends RegistryModelEvent {
  final newentityresi.ResidentModel item;
  final String entityid;
  final String entitytype;
  const createRegistryViaResidentModel({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class createRegistryViaRegestryPartialEntry extends RegistryModelEvent {
  final newentityregi.RegistryModel item;
  final String entityid;
  final String entitytype;
  final bool isowner;
  const createRegistryViaRegestryPartialEntry(
      {@required this.item,
      @required this.entityid,
      @required this.entitytype,
      @required this.isowner});
  List<Object> get() => [item, entityid, entitytype, isowner];
}

class updateResident extends RegistryModelEvent {
  final ResidentModel item;
  final bool isowner;
  final String entityid;
  final String entitytype;
  const updateResident({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,@required this.isowner
  });
  List<Object> get() => [item, entityid, entitytype,isowner];
}

class updateItem extends RegistryModelEvent {
  final newentityregi.RegistryModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends RegistryModelEvent {
  final newentityregi.RegistryModel newitem;
  final newentityregi.RegistryModel olditem;
  final String entityid;
  final String entitytype;
  final bool  updateOwner;
  const updateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,@required this.updateOwner
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype,updateOwner];
}

class deleteitem extends RegistryModelEvent {
  final ResidentModel rm;
  final bool updateOwner;
  final String entityid;
  final String entitytype;

  const deleteitem({
    @required this.rm,
    @required this.updateOwner,
    @required this.entityid,
    @required this.entitytype
  });
  List<Object> get() => [rm, updateOwner, entityid, entitytype];
}


//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class getAdditionalDataEntryIDAvailable extends RegistryModelEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends RegistryModelEvent {
  final String entityid;
  final String entitytype;
  final newentityregi.RegistryModel registry;

  const getForNewEntry({
    @required this.entityid,
    @required this.entitytype,
    this.registry,
  });
  List<Object> get() => [entityid, entitytype, registry];
}
