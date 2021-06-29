part of 'bloc.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteRepository mrepository = RouteRepository();
  RouteBloc() : super(RouteState());

  @override
  Stream<RouteState> mapEventToState(
    RouteEvent event,
  ) async* {
    if (event is RoutePointsSearchResultsFetched) {
      yield LoadingRoutePointsSearch();
      List<RoutePointsModel> routePoints = await mrepository.findRoutePoints(
          // await RoutePointsRepository.findRoutePoints(
        entityid: event.entityid,
        zipCode: event.zipCode,
        town: event.town,
        state: event.state,
        district: event.district,
      );
      if (routePoints.length == 0) {
        yield RoutePointsSearchNotFound();
      } else {
        print(routePoints[0].pointName);
        yield RoutePointsSearchSuccess(routePoints: routePoints);
      }
    } else if (event is RoutePointFetched) {
      yield RoutePointsSearchFound(routePoint: event.routePoint);
    } else if (event is RoutePointsSearchReset) {
      yield RoutePointsSearchInitial();
    }

    if (event is createItem) {
      yield IsBusy();
      RouteRepositoryReturnData ud = await mrepository.createRoute(
          event.item, event.entitytype, event.entityid,);

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
      RouteRepositoryReturnData ud = await mrepository.updateRoute(
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
      RouteRepositoryReturnData ud = await mrepository.updateRouteWithDiff(
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
