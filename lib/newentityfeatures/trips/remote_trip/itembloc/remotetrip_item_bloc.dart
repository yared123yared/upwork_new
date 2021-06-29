part of 'bloc.dart';

class RemoteTripBloc extends Bloc<RemoteTripEvent, RemoteTripState> {
  RemoteTripRepository mrepository = RemoteTripRepository();
  RemoteTripBloc() : super(RemoteTripState());

  @override
  Stream<RemoteTripState> mapEventToState(
    RemoteTripEvent event,
  ) async* {
    if (event is RemoteTripRouteListEvent) {
      try {
        List<String> routes = await mrepository.getRoutesList(
          event.entitytype,
          event.entityid,
        );
        yield RemoteTripRouteListState(
          trip: routes,
        );
      } catch (e) {
        yield HasExceptionFaliur(error: e);
      }
    }

    if (event is createItem) {
      yield IsBusy();
      RemoteTripRepositoryReturnData ud = await mrepository.createRemoteTrip(
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
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      RemoteTripRepositoryReturnData ud = await mrepository.updateRemoteTrip(
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
      RemoteTripRepositoryReturnData ud =
          await mrepository.updateRemoteTripWithDiff(
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
