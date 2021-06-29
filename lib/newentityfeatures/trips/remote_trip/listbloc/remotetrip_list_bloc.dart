part of 'bloc.dart';

class RemoteTripListBloc
    extends Bloc<RemoteTripListEvent, RemoteTripListState> {
  RemoteTripRepository mrepository = RemoteTripRepository();
  RemoteTripListBloc() : super(RemoteTripListState());

  @override
  Stream<RemoteTripListState> mapEventToState(
    RemoteTripListEvent event,
  ) async* {
    // if (event is RemoteTripServiceProviderListEvent) {
    if (event is getListData) {
      try {
        List<RemoteTripData> serviceProviders =
            await mrepository.getServiceProvidersList(
          event.entitytype,
          event.entityid,
        );
        yield IsListDataLoaded(listdata: serviceProviders);
        // yield RemoteTripServiceProviderListState(
        //   serviceProviders: serviceProviders,
        // );
      } catch (e) {
        yield HasExceptionFaliur(error: e);
      }
    }

    // if (event is getListData) {
    //   yield IsBusy();
    //   RemoteTripRepositoryReturnData ud =
    //       await mrepository.getInitialData(event.entitytype, event.entityid);

    //   if (ud.errortype == -1)
    //     yield IsListDataLoaded(listdata: ud.itemlist);
    //   else if (ud.errortype == 1)
    //     yield HasLogicalFaliur(error: ud.error);
    //   else
    //     yield HasExceptionFaliur(error: ud.error);
    // }

    // if (event is getListDataWithSearchParameter) {
    //   yield IsBusy();
    //   RemoteTripRepositoryReturnData ud =
    //       await mrepository.getRemoteTripWithOfferingSearch(event.entitytype,
    //           event.entityid, event.sessionterm, event.offeringmodelgroupname);

    //   if (ud.errortype == -1)
    //     yield IsListDataLoaded(listdata: ud.itemlist);
    //   else if (ud.errortype == 1)
    //     yield HasLogicalFaliur(error: ud.error);
    //   else
    //     yield HasExceptionFaliur(error: ud.error);
    // }

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
      RemoteTripRepositoryReturnData ud =
          await mrepository.deleteRemoteTripWithData(
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
