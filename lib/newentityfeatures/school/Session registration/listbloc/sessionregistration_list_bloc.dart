part of 'bloc.dart';

class SessionRegistrationListBloc
    extends Bloc<SessionRegistrationListEvent, SessionRegistrationListState> {
  SessionRegistrationRepository mrepository = SessionRegistrationRepository();
  SessionRegistrationListBloc() : super(SessionRegistrationListState());

  @override
  Stream<SessionRegistrationListState> mapEventToState(
    SessionRegistrationListEvent event,
  ) async* {
    if (event is StudentSearchEvent) {
      yield IsBusy();
      try {
        List<UserSessionRegModel> user = await mrepository.getUserWithOneOf(
          cardNum: event.card,
          entitytype: event.entitytype,
          entityid: event.entityid,
        );
        print("search check ${user.first}");
        if (user == null)
          yield StudentSearchState(
            user: user,
            card: event.card,
          );
        else {
          yield StudentSearchSuccessfullState(user: user);
        }
      } catch (e) {
        yield HasExceptionFaliur(error: e);
      }
    }

    if (event is getListData) {
      yield IsBusy();
      SessionRegistrationRepositoryReturnData ud =
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
      SessionRegistrationRepositoryReturnData ud =
          await mrepository.getSessionRegistrationWithOfferingSearch(
              event.entitytype,
              event.entityid,
              event.sessionterm,
              event.offeringmodelgroupname);

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
      SessionRegistrationRepositoryReturnData ud =
          await mrepository.deleteSessionRegistrationWithData(
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
