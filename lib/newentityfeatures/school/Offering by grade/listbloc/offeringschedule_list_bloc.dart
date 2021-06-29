part of 'bloc.dart';

class OfferingWeeklyScheduleListBloc extends Bloc<
    OfferingWeeklyScheduleListEvent, OfferingWeeklyScheduleListState> {
  OfferingWeeklyScheduleRepository mrepository =
      OfferingWeeklyScheduleRepository();
  OfferingWeeklyScheduleListBloc() : super(OfferingWeeklyScheduleListState());

  @override
  Stream<OfferingWeeklyScheduleListState> mapEventToState(
    OfferingWeeklyScheduleListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getListDataWithSearchParameter) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.getOfferingWeeklyScheduleWithOfferingSearch(
              event.entitytype,
              event.entityid,
              event.sessionterm,
              event.offeringmodelgroupname);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getListDataWithGradeParameter) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.getOfferingScheduleWithGradeSearch(
        event.entityid,
        event.grade,
        // event.sessionterm,
        // event.offeringmodelgroupname,
      );
      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getPreData) {
      yield IsBusy();
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getListFormPreLoadData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSearchParaLoaded(
            gradelist: ud.grades,
            sessiontermlist: ud.sessionterm,
            offeringModelGroupfunc: ud.offeringModelGroupfunc);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is deleteItemWithData) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.deleteOfferingWeeklyScheduleWithData(
              event.item, event.entitytype, event.entityid);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
