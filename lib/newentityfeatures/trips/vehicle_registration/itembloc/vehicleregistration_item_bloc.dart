part of 'bloc.dart';

class VehicleRegistrationBloc
    extends Bloc<VehicleRegistrationEvent, VehicleRegistrationState> {
  VehicleRegistrationRepository mrepository = VehicleRegistrationRepository();
  VehicleRegistrationBloc() : super(VehicleRegistrationState());

  @override
  Stream<VehicleRegistrationState> mapEventToState(
    VehicleRegistrationEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      VehicleRegistrationRepositoryReturnData ud =
          await mrepository.createVehicleRegistration(
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
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      VehicleRegistrationRepositoryReturnData ud =
          await mrepository.updateVehicleRegistration(
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
      VehicleRegistrationRepositoryReturnData ud =
          await mrepository.updateVehicleRegistrationWithDiff(
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
