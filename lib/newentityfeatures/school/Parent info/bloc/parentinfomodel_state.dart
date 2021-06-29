part of 'bloc.dart';

abstract class ParentInfoModelState extends Equatable {
  const ParentInfoModelState();

  @override
  List<Object> get props => [];
}

class ParentInfoModelInitial extends ParentInfoModelState {}

class IsBusy extends ParentInfoModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends ParentInfoModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends ParentInfoModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ParentInfoModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class ViewState extends ParentInfoModelState {
  final String detailstype;
  final String entityid;
  final String entitytype;

  final List<String> idNumbers;
  final List<String> sessionTerms;
  final List<String> virtualRooms;
  final ParentViewMode mode;
  final Map<String, Map<String, dynamic>> data;
  final Future<List<VrAssignmentModel>> Function({
    String idNumber,
    String sessionTerm,
    String virtualRoom,
  }) assignmentListGetter;

  ViewState({
    @required this.detailstype,
    @required this.entityid,
    @required this.entitytype,
    @required this.idNumbers,
    @required this.data,
    @required this.sessionTerms,
    @required this.virtualRooms,
    @required this.assignmentListGetter,
    @required this.mode,
  });

  @override
  List<Object> get props => [idNumbers, mode, data, sessionTerms, virtualRooms];
}

class AnswerFormSchoolState extends ParentInfoModelState {
  final String detailstype;
  final String entityid;
  final String entitytype;

  final AssignmentModel assignment;
  final AnsweredPaper answer;
  final QuestionInfo questionInfo;
  final VrAssignmentModel vrAssignment;
  final String idCardNum;
  final AnswerFormState state;

  AnswerFormSchoolState({
    @required this.detailstype,
    @required this.entityid,
    @required this.entitytype,
    @required this.answer,
    @required this.idCardNum,
    @required this.vrAssignment,
    @required this.questionInfo,
    @required this.assignment,
    @required this.state,
  });

  @override
  List<Object> get props => [answer, questionInfo];
}

class VrAssignmentAnsweredPaperListState extends ParentInfoModelState {
  final List<AnsweredPaper> answeredPaperList;

  VrAssignmentAnsweredPaperListState({@required this.answeredPaperList});

  List<Object> get props => [answeredPaperList];
}
