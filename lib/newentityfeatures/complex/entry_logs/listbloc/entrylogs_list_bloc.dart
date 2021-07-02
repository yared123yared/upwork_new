part of 'bloc.dart';

class EntryLogsListBloc extends Bloc<EntryLogsListEvent, EntryLogsListState> {
  EntryLogsRepository mrepository = EntryLogsRepository();
  EntryLogsListBloc() : super(EntryLogsListState());

  @override
  Stream<EntryLogsListState> mapEventToState(
    EntryLogsListEvent event,
  ) async* {
    if (event is GetListData) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is GetListDataWithSearchParameter) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud =
          await mrepository.getEntryLogsWithOfferingSearch(event.entitytype,
              event.entityid, event.sessionterm, event.offeringmodelgroupname);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is GetPreData) {
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

    if (event is DeleteItemWithData) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud =
          await mrepository.deleteEntryLogsWithData(
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
