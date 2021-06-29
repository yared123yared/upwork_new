part of 'bloc.dart';

class CreateAssignmentEvent extends Equatable {
  const CreateAssignmentEvent();
  @override
  List<Object> get props => [];
}

class AddStudyMaterialAndUpdateItem extends CreateAssignmentEvent {
  final AssignmentModel item;
  final StudyMaterial studyMaterial;
  final file;
  final String entityid;
  final String entitytype;
  const AddStudyMaterialAndUpdateItem({
    @required this.item,
    @required this.file,
    @required this.studyMaterial,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, file, studyMaterial, entityid, entitytype];
}

class createItem extends CreateAssignmentEvent {
  final AssignmentModel item;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends CreateAssignmentEvent {
  final AssignmentModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class publishItem extends CreateAssignmentEvent {
  final AssignmentModel item;
  final String entityid;
  //final String entitytype;
  const publishItem({
    @required this.item,
    @required this.entityid,
    // @required this.entitytype,
  });
  List<Object> get() => [item, entityid];
}

class updateItemWithDiff extends CreateAssignmentEvent {
  final AssignmentModel newitem;
  final AssignmentModel olditem;
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
class getAdditionalDataEntryIDAvailable extends CreateAssignmentEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable({
    @required this.id,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends CreateAssignmentEvent {
  final String entityid;
  final String entitytype;
  const getForNewEntry({@required this.entityid, @required this.entitytype});
  List<Object> get() => [entityid, entitytype];
}

class StudyMaterialsFormSchoolEvent extends CreateAssignmentEvent {
  final String entityid;
  final String entitytype;
  final StudyMaterial studyMaterial;
  final String assignmentID;
  final bool emptyList;
  final int index;

  StudyMaterialsFormSchoolEvent(
      {@required this.entityid,
      @required this.entitytype,
      @required this.studyMaterial,
      @required this.index,
      @required this.emptyList,
      @required this.assignmentID});

  @override
  List<Object> get props =>
      [entityid, entitytype, studyMaterial, assignmentID, emptyList, index];
}

class QuestionFormSchoolEvent extends CreateAssignmentEvent {
  final String entityid;
  final String entitytype;
  final Question question;
  final String assignmentID;
  final bool emptyList;
  final int index;

  QuestionFormSchoolEvent(
      {@required this.entityid,
      @required this.entitytype,
      @required this.question,
      @required this.index,
      @required this.emptyList,
      @required this.assignmentID});

  @override
  List<Object> get props =>
      [entityid, entitytype, question, assignmentID, emptyList, index];
}

class NextQuestionFormSchoolEvent extends CreateAssignmentEvent {
  final String entityid;
  final String entitytype;
  final Question question;
  final String assignmentID;
  final bool emptyList;
  final int index;

  NextQuestionFormSchoolEvent({
    @required this.entityid,
    @required this.entitytype,
    this.question,
    this.assignmentID,
    this.emptyList,
    this.index,
  });

  @override
  List<Object> get props =>
      [entityid, entitytype, question, assignmentID, emptyList, index];
}
