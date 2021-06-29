part of 'bloc.dart';

class EvtModelBloc extends Bloc<EvtModelEvent, EvtModelState> {
  EvtModelRepository mrepository = EvtModelRepository();
  EvtModelBloc() : super(EvtModelInitial());

  @override
  Stream<EvtModelState> mapEventToState(
    EvtModelEvent event,
  ) async* {
    if (event is LoadDataEvent) {
      yield IsBusy();
      EventDataModel ud = await mrepository.loadData(event);
      if (ud.errortype == -1)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: "",
          grades: ud.grades,
          sessionTerms: ud.sessionTerms,
          instructorData: ud.instructorData,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          evtdata: ud.evtdata,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is SubmitDataEvent) {
      yield IsBusy();
      EventDataModel ud = await mrepository.submitData(event);
      if (ud.errortype == -1)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          grades: ud.grades,
          sessionTerms: ud.sessionTerms,
          instructorData: ud.instructorData,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          evtdata: ud.evtdata,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
