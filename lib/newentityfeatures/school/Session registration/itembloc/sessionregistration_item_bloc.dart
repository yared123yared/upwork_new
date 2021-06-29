part of 'bloc.dart';

class SessionRegistrationBloc
    extends Bloc<SessionRegistrationEvent, SessionRegistrationState> {
  SessionRegistrationRepository mrepository = SessionRegistrationRepository();
  SessionRegistrationBloc() : super(SessionRegistrationState());

  @override
  Stream<SessionRegistrationState> mapEventToState(
    SessionRegistrationEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      SessionRegistrationRepositoryReturnData ud =
          await mrepository.createSessionRegistration(
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
      SessionRegistrationEntryData ud =
          await mrepository.getItemFormNewEntryData(
        event.entitytype,
        event.entityid,
        event.sessionTerm,
        event.cardNum,
      );

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          update: ud.update,
          virtualRoomList: ud.virtualRoomList,
          feePlanList: ud.feePlanList,
          paymentPeriods: ud.paymentPeriods,
          offeringScheduleList: ud.offeringScheduleList,
          activeSessions: ud.activeSessions,
          offeringModelGroup: ud.offeringModelGroup,
          userSessionRegModel: ud.userSessionRegModel,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      SessionRegistrationRepositoryReturnData ud =
          await mrepository.updateSessionRegistration(
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
      SessionRegistrationRepositoryReturnData ud =
          await mrepository.updateSessionRegistrationWithDiff(
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
