part of 'bloc.dart';

abstract class EvtModelState extends Equatable {
  const EvtModelState();

  @override
  List<Object> get props => [];
}

class EvtModelInitial extends EvtModelState {}

class IsBusy extends EvtModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends EvtModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends EvtModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends EvtModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class SubmitDataState extends EvtModelState {
  final String detailstype;
  final String entityid;
  final String entitytype;

  final List<String> grades;
  final List<String> sessionTerms;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;
  final String evtdata;

  SubmitDataState({
    @required this.detailstype,
    @required this.entityid,
    @required this.entitytype,
    @required this.evtdata,
    @required this.grades,
    @required this.sessionTerms,
    @required this.loadButtonState,
    @required this.submitButtonState,
    @required this.instructorData,
  });

  @override
  List<Object> get props => [
        evtdata,
        grades,
        sessionTerms,
        loadButtonState,
        submitButtonState,
        instructorData,
      ];
}
