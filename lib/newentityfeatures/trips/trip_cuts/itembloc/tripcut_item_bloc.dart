part of 'bloc.dart';

class TripCutBloc extends Bloc<TripCutEvent, TripCutState> {
  TripCutRepository mrepository = TripCutRepository();
  TripCutBloc() : super(TripCutState());

  @override
  Stream<TripCutState> mapEventToState(
    TripCutEvent event,
  ) async* {
    if (event is TripSearchFetched) {
      List<RouteTripModel> trips = [];
      yield TripSearchLoading();
      try {
        // trips = await RoutesTripRepository.findTrip(
        trips = await mrepository.findTrip(
          dayName: event.dayName,
          routeName: event.routeName,
          entityid: event.entityid,
        );
        if (trips.length == 0) {
          yield TripSearchNotFound();
        } else {
          yield TripSearchSuccess(trips: trips);
        }
      } catch (e, stacktrace) {
        print(stacktrace);
        yield TripSearchFailed();
      }
    }

    if (event is createItem) {
      yield IsBusy();
      TripCutRepositoryReturnData ud = await mrepository.createTripCut(
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
      TripCutRepositoryReturnData ud = await mrepository.updateTripCut(
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
      TripCutRepositoryReturnData ud = await mrepository.updateTripCutWithDiff(
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
