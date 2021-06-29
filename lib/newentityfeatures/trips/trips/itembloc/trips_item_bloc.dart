part of 'bloc.dart';

class RouteTripBloc extends Bloc<RouteTripEvent, RouteTripState> {
  RouteTripRepository mrepository = RouteTripRepository();
  RouteTripBloc() : super(RouteTripState());

  @override
  Stream<RouteTripState> mapEventToState(
    RouteTripEvent event,
  ) async* {
    if (event is RouteTripSearchResultsFetched) {
      yield LoadingRouteTripSearch();
      // List<RouteModel> routes = await RoutesRepository.findRoutes(
      List<RouteModel> routes = await mrepository.findRoutes(
        routeName: event.routeName,
        entityid: event.entityid,
      );
      if (routes.length == 0) {
        yield RouteTripSearchNotFound();
      } else {
        yield RouteTripSearchSuccess(routes: routes);
      }
    } else if (event is RouteFetched) {
      yield RoutePointsSearchFound(route: event.route);
    } else if (event is RouteTripSearchReset) {
      yield RouteTripSearchInitial();
    }

    if (event is createItem) {
      yield IsBusy();
      RouteTripRepositoryReturnData ud = await mrepository.createRouteTrip(
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
      RouteTripRepositoryReturnData ud = await mrepository.updateRouteTrip(
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
      RouteTripRepositoryReturnData ud =
          await mrepository.updateRouteTripWithDiff(
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
