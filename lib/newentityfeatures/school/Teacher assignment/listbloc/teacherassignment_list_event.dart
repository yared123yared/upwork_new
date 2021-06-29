part of 'bloc.dart';

class TeacherAssignmentModelListEvent extends Equatable {
  const TeacherAssignmentModelListEvent();
  List<Object> get props => [];
}

class getPreData extends TeacherAssignmentModelListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends TeacherAssignmentModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends TeacherAssignmentModelListEvent {
  final String entityid;
  final String entitytype;
  final String grade;
  getListDataWithSearchParameter({
    @required this.entityid,
    @required this.entitytype,
    @required this.grade,
  });
  @override
  List<Object> get props => [entityid, entitytype, grade];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends TeacherAssignmentModelListEvent {
  final TeacherOfferingsAssignment item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
