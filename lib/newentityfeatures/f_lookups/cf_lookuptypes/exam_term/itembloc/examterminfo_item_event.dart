part of 'bloc.dart';

class ExamTermInfoEvent extends Equatable {
  const ExamTermInfoEvent();
  @override
  List<Object> get props => [];
}


class createItem extends ExamTermInfoEvent {
  
  final ExamTermInfo item;
  final String entityid;
  final String entitytype;
  const createItem({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends ExamTermInfoEvent {
  
  final ExamTermInfo item;
  final String entityid;
  final String entitytype;
  const updateItem({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends ExamTermInfoEvent {
  
  final ExamTermInfo newitem;
  final ExamTermInfo olditem;
  final String entityid;
  final String entitytype;
  const updateItemWithDiff({
    
    @required this.newitem,
	@required this.olditem,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [newitem,olditem, entityid, entitytype];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item , 
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) , 
class getAdditionalDataEntryIDAvailable extends ExamTermInfoEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable({
    @required this.id,
    @required this.entityid,
    @required this.entitytype
  });
  List<Object> get() => [ id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends ExamTermInfoEvent {
  
  final String entityid;
  final String entitytype;
  const getForNewEntry({
    @required this.entityid,
    @required this.entitytype
  });
  List<Object> get() => [  entityid, entitytype];
}
