part of 'bloc.dart';




class StringListEvent extends Equatable {
  const StringListEvent();
  List<Object> get props => [];
}



//to get listdata
class getListData extends StringListEvent {
  final String entityid;
  final String entitytype;
  final String fieldname;

  getListData({@required this.entityid,@required this.entitytype,@required this.fieldname});
  @override
  List<Object> get props => [entityid,entitytype,fieldname];
}





//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends StringListEvent {
  
  final String item;
  final String entityid;
  final String entitytype;
  final String fieldname;
  final RoomInfo roomInfo;
  final ExamTermInfo examTermInfo;
  final SessionTermModel sessionTermModel;
  const deleteItemWithData({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
    @required this.fieldname,
    this.roomInfo,
    this.sessionTermModel,
    this.examTermInfo,


  });
  List<Object> get() => [ item, entityid, entitytype,fieldname];
}


//for very special cases , like in case of lookups which are mere a list of strings , we use the listview to add and delete
class createItem extends StringListEvent {
  
  final String item;
  final String entityid;
  final String entitytype;
  final String fieldname;
  final RoomInfo roomInfo;
  final ExamTermInfo examTermInfo;
  final SessionTermModel sessionTermModel;
  const createItem({
    
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
	@required this.fieldname,
    this.roomInfo,
    this.examTermInfo,
    this.sessionTermModel
  });
  List<Object> get() => [item, entityid, entitytype,fieldname];
}

