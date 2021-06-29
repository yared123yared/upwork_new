part of 'bloc.dart';

enum MainPoint { start, end }

class HandleRelationBloc
    extends Bloc<HandleRelationEvent, HandleRelationState> {
  HandleRelationsRepository mrepository = HandleRelationsRepository();
  HandleRelationBloc() : super(HandleRelationState());

  StreamSubscription<Position> _locationTracker;

  @override
  Stream<HandleRelationState> mapEventToState(
    HandleRelationEvent event,
  ) async* {
    if (event is CalenderPageEvent) {
      yield CalenderPageState();
    } else if (event is RelationsSearchedEvent) {
      yield HandleRelationLoadingState();
      // setFields(startDate: event.startDate, staff: event.staff);
      final relationList = await HandleRelationRepository.findRelations(
        serviceID: event.entityid,
        staff: event.staff,
        startDate: event.startDate,
      );
      yield RelationListState(
        relationList: relationList,
      );
    } else if (event is TripListRetrievedEvent) {
      yield HandleRelationLoadingState();
      // setFields(relation: event.relation);
      final routeTrips = await HandleRelationRepository.findTrips(
        serviceID: event.entityid,
        tripCutShort: event.relation.tripCut,
      );
      yield TripListPageState(trips: routeTrips, relation: event.relation);
    } else if (event is RelationCheckedInEvent) {
      yield HandleRelationLoadingState();
      try {
        final position = await Geolocator.getCurrentPosition();
        final checkInID = await HandleRelationRepository.relationCheckIn(
          relation: event.relation,
          serviceID: event.entityid,
          staff: event.staff,
          staffStartDate: event.startDate,
          position: position,
        );
        yield RelationCheckInSuccess(checkInId: checkInID);
      } catch (e) {
        yield RelationCheckInFail(errorMsg: e.toString());
      }
    } else if (event is RelationTripStarted) {
      yield* _mapTripStartToState(event);
    } else if (event is RelationTripEnded) {
      _locationTracker?.cancel();
      final position = await Geolocator.getCurrentPosition();
      await HandleRelationRepository.endTrip(
        relation: event.relation,
        position: position,
        serviceID: event.entityid,
      );
    } else if (event is GenerateTicketPageEvent) {
      yield HandleRelationLoadingState();
      final routePoints = await HandleRelationRepository.fetchRoutePoints(
        serviceID: event.entityid,
        trip: event.trip,
      );
      yield GenerateTicketPageState(
        ticket: event.ticket,
        routePoints: routePoints,
        trip: event.trip,
        relation: event.relation,
      );
    } else if (event is MainPointSelectPageEvent) {
      yield MainPointSelectPageState(
        ticket: event.ticket,
        relation: event.relation,
        trip: event.trip,
        startOrEndPoint: event.startOrEndPoint,
        routePoints: event.routePoints,
      );
    } else if (event is RelationTripTicketGenerated) {
      yield HandleRelationLoadingState();
      try {
        final ticketPrice = await HandleRelationRepository.generateTicket(
          relation: event.relation,
          trip: event.trip,
          routePoints: event.routePoints,
          ticket: event.ticket,
          serviceID: event.entityid,
        );
        yield GenerateTicketSuccess(ticketPrice: ticketPrice);
      } catch (e) {
        yield GenerateTicketFail(errorMsg: e.toString());
      }
    }

//
    if (event is createItem) {
      yield IsBusy();
      HandleRelationsRepositoryReturnData ud = await mrepository
          .createHandleRelation(event.item, event.entitytype, event.entityid);

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
      HandleRelationsRepositoryReturnData ud = await mrepository
          .updateHandleRelation(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      HandleRelationsRepositoryReturnData ud =
          await mrepository.updateHandleRelationWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }

  Stream<HandleRelationState> _mapTripStartToState(
      RelationTripStarted event) async* {
    _locationTracker?.cancel();
    final position = await Geolocator.getCurrentPosition();
    await HandleRelationRepository.startTrip(
      relation: event.relation,
      trip: event.trip,
      position: position,
      tripStartTime: DateTime.now(),
      serviceID: event.entityid,
    );
    _locationTracker = Geolocator.getPositionStream(distanceFilter: 50)
        .listen((Position position) async {
      await HandleRelationRepository.trackStaff(
        relation: event.relation,
        position: position,
        serviceID: event.entityid,
      );
    });
  }

  @override
  Future<void> close() {
    _locationTracker?.cancel();
    return super.close();
  }
}
