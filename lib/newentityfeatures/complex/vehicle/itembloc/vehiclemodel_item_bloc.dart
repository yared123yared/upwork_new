part of 'bloc.dart';

class VehicleModelBloc extends Bloc<VehicleModelEvent, VehicleModelState> {
  VehicleModelRepository mrepository = VehicleModelRepository();
  VehicleModelBloc() : super(VehicleModelState());

  @override
  Stream<VehicleModelState> mapEventToState(
    VehicleModelEvent event,
  ) async* {
    if (event is CreateItem) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud = await mrepository
          .createVehicleModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetForNewEntry) {
      yield IsBusy();
      VehicleModelEntryData ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          vehicleIndex: ud.vehicleIndex,
          oul: ud.oul,
          staff: ud.stafflist,
          isResident: ud.isResident,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is UpdateItem) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud =
          await mrepository.updateVehicleModel(
              event.item, event.vehicleIndex, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is UpdateItemWithDiff) {
      yield IsBusy();
      VehicleModelRepositoryReturnData ud =
          await mrepository.updateVehicleModelWithDiff(
              event.newitem,
              event.olditem,
              event.vehicleIndex,
              event.entitytype,
              event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
