part of 'bloc.dart';

class FeePlanModelListBloc
    extends Bloc<FeePlanModelListEvent, FeePlanModelListState> {
  FeePlanModelRepository mrepository = FeePlanModelRepository();
  FeePlanModelListBloc() : super(FeePlanModelListState());

  @override
  Stream<FeePlanModelListState> mapEventToState(
    FeePlanModelListEvent event,
  ) async* {
    if (event is GetListData) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is GetListDataWithSearchParameter) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud =
          await mrepository.getFeePlanModelWithOfferingSearch(event.entitytype,
              event.entityid, event.sessionterm, event.offeringmodelgroupname);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is GetPreData) {
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

    if (event is DeleteItemWithData) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud =
          await mrepository.deleteFeePlanModelWithData(
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
