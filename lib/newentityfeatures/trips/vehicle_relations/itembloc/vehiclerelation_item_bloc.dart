part of 'bloc.dart';

enum StaffNumber { Staff1, Staff2 }

class VehicleRelationBloc
    extends Bloc<VehicleRelationEvent, VehicleRelationState> {
  VehicleRelationsRepository mrepository = VehicleRelationsRepository();
  VehicleRelationBloc() : super(VehicleRelationState());

  @override
  Stream<VehicleRelationState> mapEventToState(
    VehicleRelationEvent event,
  ) async* {
        if (event is TripCutSearched) {
      yield RelationSearchLoading();
      try {
        final tripCutList = await VehicleRelationRepository.findTripCut(
            dayOfWeek: event.day, serviceId: event.entityid);
        if (tripCutList.length == 0) {
          yield RelationSearchNotFound();
        } else {
          yield TripCutListFound(tripCutList: tripCutList);
        }
      } catch (e, stacktrace) {
        print(stacktrace);
        yield RelationSearchFailed();
      }
    } else if (event is StaffSearched) {
      yield RelationSearchLoading();
      try {
        final staffList = await VehicleRelationRepository.findStaff(
          name: event.staffName,
          serviceId: event.entityid,
        );
        if (staffList.length == 0) {
          yield RelationSearchNotFound();
        } else {
          yield StaffListFound(staffList: staffList);
        }
      } catch (e, stacktrace) {
        print(stacktrace);
        yield RelationSearchFailed();
      }
    } else if (event is VehicleSearched) {
      yield RelationSearchLoading();
      try {
        final vehicleList = await VehicleRelationRepository.findVehicle(
            numberPlate: event.numberPlate, serviceId: event.entityid);
        if (vehicleList.length == 0) {
          yield RelationSearchNotFound();
        } else {
          yield VehicleListFound(vehicleList: vehicleList);
        }
      } catch (e, stacktrace) {
        print(stacktrace);
        yield RelationSearchFailed();
      }
    } else if (event is StaffFetched) {
      yield StaffFetch(staff: event.staff, staffNumber: event.staffNumber);
    } else if (event is TripCutFetched) {
      yield TripCutFetch(tripCut: event.tripCut);
    } else if (event is VehicleFetched) {
      yield VehicleFetch(vehicle: event.vehicle);
    }

    if (event is createItem) {
      yield IsBusy();
      VehicleRelationRepositoryReturnData ud =
          await mrepository.createVehicleRelation(
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
      VehicleRelationRepositoryReturnData ud =
          await mrepository.updateVehicleRelation(
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
      VehicleRelationRepositoryReturnData ud =
          await mrepository.updateVehicleRelationWithDiff(
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
