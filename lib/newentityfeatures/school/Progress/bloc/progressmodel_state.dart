part of 'bloc.dart';

abstract class ProgressModelState extends Equatable {
  const ProgressModelState();

  @override
  List<Object> get props => [];
}

class ProgressModelInitial extends ProgressModelState {}

class IsBusy extends ProgressModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends ProgressModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends ProgressModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ProgressModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class SubmitDataState extends ProgressModelState {
  final String detailstype;
  final String entityid;
  final String entitytype;

  final ProgressModel progressModel;
  final List<String> grades;
  final List<String> sessionTerms;
  final List<String> offeringList;
  final Map<String, List<VirtualRoomModel>> virtualRoomList;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;
  final List<ExamTermInfo> examtermlist;

  SubmitDataState({
    @required this.detailstype,
    @required this.entityid,
    @required this.entitytype,
    @required this.progressModel,
    @required this.grades,
    @required this.examtermlist,
    @required this.sessionTerms,
    @required this.virtualRoomList,
    @required this.loadButtonState,
    @required this.submitButtonState,
    @required this.offeringList,
    @required this.instructorData,
  });

  @override
  List<Object> get props => [
        virtualRoomList,
        grades,
        sessionTerms,
        offeringList,
        progressModel,
        loadButtonState,
        submitButtonState,
        instructorData,
      ];
}
