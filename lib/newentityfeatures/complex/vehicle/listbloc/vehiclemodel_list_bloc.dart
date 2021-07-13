part of 'bloc.dart';

class VehicleModelListBloc
    extends Bloc<VehicleModelListEvent, VehicleModelListState> {
  VehicleModelRepository mrepository = VehicleModelRepository();
  VehicleModelListBloc() : super(VehicleModelListState());

  @override
  Stream<VehicleModelListState> mapEventToState(
    VehicleModelListEvent event,
  ) async* {
    if (event is GetListDataByUnits) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud = await mrepository
          .getAllVehicleModelsByUnits(entitytype:event.entitytype,entityid: event.entityid,myUnits:event.residentialunitlist);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetListDataByStaffId) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud = await mrepository
          .getAllVehicleModelsByStaffId(entitytype:event.entitytype,entityid: event.entityid,staffid:event.staffid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetListDataByNumPlate) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud = await mrepository
          .getAllVehicleModelsByNumPlate(entitytype:event.entitytype,entityid: event.entityid,numplate:event.numplate);

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
            oul: ud.oul,
            stafflist: ud.schoolownerlist,
            );
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
