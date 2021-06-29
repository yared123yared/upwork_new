part of 'bloc.dart';

class StaffModelListBloc
    extends Bloc<StaffModelListEvent, StaffModelListState> {
  StaffModelRepository mrepository = StaffModelRepository();
  StaffModelListBloc() : super(StaffModelListState());

  @override
  Stream<StaffModelListState> mapEventToState(
    StaffModelListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      StaffModelRepositoryReturnData ud =
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
      StaffModelRepositoryReturnData ud =
          await mrepository.getStaffModelWithOfferingSearch(
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
      StaffModelRepositoryReturnData ud =
          await mrepository.deleteStaffModelWithData(
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
