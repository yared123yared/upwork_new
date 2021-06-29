part of 'bloc.dart';

class EndUserListBloc extends Bloc<EndUserListEvent, EndUserListState> {
  EndUserRepository mrepository = EndUserRepository();
  EndUserListBloc() : super(EndUserListState());

  @override
  Stream<EndUserListState> mapEventToState(
    EndUserListEvent event,
  ) async* {
    if (event is StaffPositionPageEvent) {
      yield IsBusy();
      try {
        final tripCutStatus = await mrepository.getTripCutStatus(
          entityid: event.entityid,
          tripCut: event.tripCut,
        );
        if (tripCutStatus.isActive && tripCutStatus.tripStartTime != null) {

          yield StaffPositionPageState(
              tripCut: event.tripCut, tripCutCurrentStatus: tripCutStatus);
        } else {
          yield StaffPositionFailState(errorMsg: 'Trip has not yet started');
        }
      } catch (e) {
        yield HasExceptionFaliur(error: e);
      }
    }

    if (event is TripCutsResultsPageEvent) {
      yield IsBusy();
      final tripCuts = await mrepository.findTripCuts(
        startDate: event.startDate,
        entityid: event.entityid,
        startPoint: event.startPoint,
        endPoint: event.endPoint,
      );
      yield TripCutsResultsPageState(
        tripCuts: tripCuts.length == 0 ? [] : tripCuts,
      );
    }

    if (event is EndUserRoutePointsResultsFetched) {
      yield IsBusy();
      List<RoutePointsModel> routePoints =
          await mrepository.findRoutePoints(
        entityid: event.entityid,
        zipCode: event.zipCode,
        town: event.town,
      );
      if (routePoints.length == 0) {
        yield EndUserPointsSearchNotFound();
      } else {
        yield EndUserPointsSearchSuccess(routePoints: routePoints);
      }
    }

    //
    if (event is getListData) {
      yield IsBusy();
      EndUserRepositoryReturnData ud =
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
      EndUserRepositoryReturnData ud =
          await mrepository.getEndUserWithOfferingSearch(event.entitytype,
              event.entityid, event.sessionterm, event.offeringmodelgroupname);

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
      EndUserRepositoryReturnData ud = await mrepository.deleteEndUserWithData(
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
