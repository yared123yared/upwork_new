part of 'bloc.dart';

abstract class AttendanceModelState extends Equatable {
  const AttendanceModelState();

  @override
  List<Object> get props => [];
}

class AttendanceModelInitial extends AttendanceModelState {}

class IsBusy extends AttendanceModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends AttendanceModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends AttendanceModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends AttendanceModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class SubmitDataState extends AttendanceModelState {
  final String detailstype;
  final String entityid;
  final String entitytype;

  final List<String> grades;
  final List<String> sessionTerms;
  final AttendanceModel attendanceModel;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;

  SubmitDataState({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.sessionTerms,
    @required this.grades,
    @required this.attendanceModel,
    @required this.loadButtonState,
    @required this.instructorData,
    @required this.submitButtonState,
  });

  @override
  List<Object> get props =>
      [attendanceModel, loadButtonState, submitButtonState];
}
