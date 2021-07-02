part of 'bloc.dart';

class ExamTermInfoBloc extends Bloc<ExamTermInfoEvent, ExamTermInfoState> {
  ExamTermInfoRepository mrepository = ExamTermInfoRepository();
  ExamTermInfoBloc() : super(ExamTermInfoState());

  @override
  Stream<ExamTermInfoState> mapEventToState(
    ExamTermInfoEvent event,
  ) async* {
    if (event is CreateItem) {
      yield IsBusy();
      ExamTermInfoRepositoryReturnData ud = await mrepository
          .createExamTermInfo(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetForNewEntry) {
      yield IsBusy();
      ExamTermInfoRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
            entitytype: event.entitytype,
            entityid: event.entityid,
            detailstype: "start");
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is UpdateItem) {
      yield IsBusy();
      ExamTermInfoRepositoryReturnData ud = await mrepository
          .updateExamTermInfo(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is UpdateItemWithDiff) {
      yield IsBusy();
      ExamTermInfoRepositoryReturnData ud =
          await mrepository.updateExamTermInfoWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
