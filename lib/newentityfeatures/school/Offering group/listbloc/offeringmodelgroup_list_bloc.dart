part of 'bloc.dart';

class OfferingModelGroupListBloc
    extends Bloc<OfferingModelGroupListEvent, OfferingModelGroupListState> {
  OfferingModelGroupRepository mrepository = OfferingModelGroupRepository();
  OfferingModelGroupListBloc() : super(OfferingModelGroupListState());

  @override
  Stream<OfferingModelGroupListState> mapEventToState(
    OfferingModelGroupListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      OfferingModelGroupRepositoryReturnData ud =
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
      OfferingModelGroupRepositoryReturnData ud =
          await mrepository.getOfferingModelGroupWithOfferingSearch(
        event.entitytype,
        event.entityid,
        event.grade,
        // event.sessionterm,
        // event.offeringmodelgroupname,
      );

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
      OfferingModelGroupRepositoryReturnData ud =
          await mrepository.deleteOfferingModelGroupWithData(
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
