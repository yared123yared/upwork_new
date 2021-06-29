part of 'bloc.dart';

class VehicleRelationListBloc
    extends Bloc<VehicleRelationListEvent, VehicleRelationListState> {
  VehicleRelationsRepository mrepository = VehicleRelationsRepository();
  VehicleRelationListBloc() : super(VehicleRelationListState());

  @override
  Stream<VehicleRelationListState> mapEventToState(
    VehicleRelationListEvent event,
  ) async* {
    
    if (event is getListData) {
      yield IsBusy();
      VehicleRelationRepositoryReturnData ud =
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
      VehicleRelationRepositoryReturnData ud =
          await mrepository.getVehicleRelationWithOfferingSearch(
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
      VehicleRelationRepositoryReturnData ud =
          await mrepository.deleteVehicleRelationWithData(
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
