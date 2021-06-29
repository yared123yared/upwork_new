part of 'bloc.dart';

class EndUserBloc extends Bloc<EndUserEvent, EndUserState> {
  EndUserRepository mrepository = EndUserRepository();
  EndUserBloc() : super(EndUserState());

  @override
  Stream<EndUserState> mapEventToState(
    EndUserEvent event,
  ) async* {
    if (event is BookTripEvent) {
      yield IsBusy();
      try {
        final orderId = await mrepository.bookTrip(
          trip: event.trip,
          tripCutID: event.tripCutID,
          entityid: event.entityid,
          startPoint: event.startPoint,
          endPoint: event.endPoint,
          adultCount: event.adultCount,
          childCount: event.childCount,
          luggageWeight: event.luggageWeight,
          seatType: event.seatType,
        );
        yield BookTripSuccess(orderId: orderId);
      } catch (e) {
        yield BookTripFail(error: e.toString());
      }
    }
//
    if (event is createItem) {
      yield IsBusy();
      EndUserRepositoryReturnData ud = await mrepository.createEndUser(
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
      EndUserRepositoryReturnData ud = await mrepository.updateEndUser(
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
      EndUserRepositoryReturnData ud = await mrepository.updateEndUserWithDiff(
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
