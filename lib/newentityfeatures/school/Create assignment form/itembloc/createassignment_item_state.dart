part of 'bloc.dart';

class CreateAssignmentState extends Equatable {
  const CreateAssignmentState();
  @override
  List<Object> get props => [];
}

class IsBusy extends CreateAssignmentState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends CreateAssignmentState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends CreateAssignmentState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends CreateAssignmentState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends CreateAssignmentState {

  final String entityid;
  final String entitytype;

  final Future<List<TeacherOfferingsAssignment>> Function(String grade)
      offerings;
  final List<String> grades;
  // final ButtonState buttonState;

  // final String assignmentID;
  // final VoidCallback addItemAction;
  // final String appBarTitle;
  // final String inAppTitle;


  IsReadyForDetailsPage({

    @required this.entityid,
    @required this.entitytype,
    @required this.offerings,
    @required this.grades,
    // @required this.buttonState,
   // @required this.question,
   // @required this.index,
    // @required this.buttonState,
   // @required this.assignmentID,
    //@required this.studyMaterial,
    // @required this.assignmentID,
    //@required this.dynamicListState,
  //  @required this.listItems,
    // @required this.assignmentID,
    // @required this.addItemAction,
    // @required this.appBarTitle,
    // @required this.inAppTitle,
//    @required this.emptyList,
  });

  @override
  List<Object> get props => [
        entityid,
        entitytype,
    offerings,
        grades,
      ];
}

class StudyMaterialsFormSchoolState extends CreateAssignmentState {
  final StudyMaterial studyMaterial;
  final bool emptyList;
  final String assignmentId;
  final int studyMaterialIndex;

  StudyMaterialsFormSchoolState(
      {@required this.studyMaterial,
      @required this.studyMaterialIndex,
      @required this.emptyList,
      @required this.assignmentId});

  @override
  List<Object> get props =>
      [studyMaterial, assignmentId, emptyList, studyMaterialIndex];
}

class QuestionFormSchoolState extends CreateAssignmentState {
  final String assignmentId;
  final bool emptyList;
  final Question question;
  final int questionIndex;

  QuestionFormSchoolState(
      {@required this.question,
      @required this.emptyList,
      @required this.assignmentId,
      @required this.questionIndex});

  @override
  List<Object> get props => [question, assignmentId, emptyList, questionIndex];
}

class NextQuestionFormSchoolState extends CreateAssignmentState {
  final String assignmentId;
  final bool emptyList;
  final Question question;
  final int questionIndex;

  NextQuestionFormSchoolState({
    @required this.question,
    @required this.emptyList,
    @required this.assignmentId,
    @required this.questionIndex,
  });

  @override
  List<Object> get props => [question, assignmentId, emptyList, questionIndex];
}