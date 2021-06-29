part of 'bloc.dart';

class VrAssignmentModelState extends Equatable {
  const VrAssignmentModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VrAssignmentModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends VrAssignmentModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VrAssignmentModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VrAssignmentModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends VrAssignmentModelState {
  IsReadyForDetailsPage(
      {@required this.entityid,
      @required this.entitytype,
      @required this.detailstype,
      @required this.sessiontermlist,
      @required this.gradelist,
      @required this.assignmentModellistbyofferinggroupfunc,
      @required this.teacherofferingassignmentlistbyGrade,
      @required this.examtermlist});

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> sessiontermlist;
  final List<String> gradelist;
  final Future<List<AssignmentModel>> Function(String, String)
      assignmentModellistbyofferinggroupfunc;
  final Future<List<TeacherOfferingsAssignment>> Function(String, String)
      teacherofferingassignmentlistbyGrade;
  final List<ExamTermInfo> examtermlist;
  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        sessiontermlist,
        gradelist,
        assignmentModellistbyofferinggroupfunc,
        teacherofferingassignmentlistbyGrade,
        examtermlist
      ];
}
