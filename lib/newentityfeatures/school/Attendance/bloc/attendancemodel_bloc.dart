part of 'bloc.dart';

class AttendanceModelBloc
    extends Bloc<AttendanceModelEvent, AttendanceModelState> {
  AttendanceModelRepository mrepository = AttendanceModelRepository();
  AttendanceModelBloc() : super(AttendanceModelInitial());

  @override
  Stream<AttendanceModelState> mapEventToState(
    AttendanceModelEvent event,
  ) async* {
    if (event is LoadDataEvent) {
      yield IsBusy();
      AttendanceDataModel ud = await mrepository.loadData(event);
      if (ud.error==null)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          sessionTerms: ud.sessionTerms,
          grades: ud.grades,
          instructorData: ud.instructorData,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          attendanceModel: ud.attendanceModel,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
      print("attendenece is here");
    }
    if (event is SubmitDataEvent) {
      yield IsBusy();
      AttendanceDataModel ud = await mrepository.submitData(event);
      if (ud.errortype == -1)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          sessionTerms: ud.sessionTerms,
          grades: ud.grades,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          attendanceModel: ud.attendanceModel,
          instructorData: ud.instructorData,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
