part of 'bloc.dart';

class VehicleModelListBloc
    extends Bloc<VehicleModelListEvent, VehicleModelListState> {
  VehicleModelRepository mrepository = VehicleModelRepository();
  VehicleModelListBloc() : super(VehicleModelListState());

  @override
  Stream<VehicleModelListState> mapEventToState(
    VehicleModelListEvent event,
  ) async* {
    if (event is GetListData) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud = await mrepository
          .getAllVehicleModels(event.entitytype, event.entityid);

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
      VehicleModelRepositoryReturnData ud =
          await mrepository.deleteVehicleModelWithData(
              event.item, event.index, event.entitytype, event.entityid);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
