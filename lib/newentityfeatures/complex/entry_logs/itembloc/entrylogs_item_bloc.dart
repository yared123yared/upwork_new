part of 'bloc.dart';

class EntryLogsBloc extends Bloc<EntryLogsEvent, EntryLogsState> {
  EntryLogsRepository mrepository = EntryLogsRepository();
  EntryLogsBloc() : super(EntryLogsState());

  @override
  Stream<EntryLogsState> mapEventToState(
    EntryLogsEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud = await mrepository.createEntryLogs(
          event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      EntryLogsEntryData ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          haveAccess: ud.haveAccess,
          userId: ud.userId,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud = await mrepository.updateEntryLogs(
          event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      EntryLogsRepositoryReturnData ud =
          await mrepository.updateEntryLogsWithDiff(
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
