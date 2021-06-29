part of 'bloc.dart';

class ProgressModelBloc extends Bloc<ProgressModelEvent, ProgressModelState> {
  ProgressModelRepository mrepository = ProgressModelRepository();
  ProgressModelBloc() : super(ProgressModelInitial());

  @override
  Stream<ProgressModelState> mapEventToState(
    ProgressModelEvent event,
  ) async* {
    if (event is LoadDataEvent) {
      yield IsBusy();
      ProgressDataModel ud = await mrepository.loadData(event);
      if (ud.errortype == -1)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          offeringList: ud.offeringList,
          examtermlist: ud.examtermlist,
          sessionTerms: ud.sessionTerms,
          virtualRoomList: ud.virtualRoomList,
          grades: ud.grades,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          instructorData: ud.instructorData,
          progressModel: ud.progressModel,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is SubmitDataEvent) {
      yield IsBusy();
      ProgressDataModel ud = await mrepository.submitData(event);
      if (ud.errortype == -1)
        yield SubmitDataState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          offeringList: ud.offeringList,
          examtermlist: ud.examtermlist,
          grades: ud.grades,
          sessionTerms: ud.sessionTerms,
          virtualRoomList: ud.virtualRoomList,
          instructorData: ud.instructorData,
          loadButtonState: ud.loadButtonState,
          submitButtonState: ud.submitButtonState,
          progressModel: ud.progressModel,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
