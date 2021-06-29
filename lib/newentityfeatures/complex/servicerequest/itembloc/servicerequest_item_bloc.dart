part of 'bloc.dart';

class ServiceRequestModelBloc
    extends Bloc<ServiceRequestModelEvent, ServiceRequestModelState> {
  ServiceRequestModelRepository mrepository = ServiceRequestModelRepository();
  ServiceRequestModelBloc() : super(ServiceRequestModelState());

  @override
  Stream<ServiceRequestModelState> mapEventToState(
    ServiceRequestModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      ServiceRequestModelRepositoryReturnData ud =
          await mrepository.createServiceRequestModel(
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
      ServiceRequestModelRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid,
              event.isupdate, event.requesttype,
              event.serviceRequest);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          isStaff: ud.isStaff,
          haveAccess: ud.haveAccess,
          user: ud.user,
          units: ud.unitlist,
          stafflist: ud.stafflist,
          buildinglist: ud.buildings,
          roles: ud.roles,
          btnState: ud.btnState,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      ServiceRequestModelRepositoryReturnData ud =
          await mrepository.updateServiceRequestModel(
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
      ServiceRequestModelRepositoryReturnData ud =
          await mrepository.updateServiceRequestModelWithDiff(
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
