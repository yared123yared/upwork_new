part of 'bloc.dart';

class RegistryModelBloc extends Bloc<RegistryModelEvent, RegistryModelState> {
  RegistryModelRepository mrepository = RegistryModelRepository();
  RegistryModelBloc() : super(RegistryModelState());

  @override
  Stream<RegistryModelState> mapEventToState(
    RegistryModelEvent event,
  ) async* {
    if (event is createRegistryViaResidentModel) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud =
          await mrepository.createRegistryModelViaResidentModel(
        event.item,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getForNewEntry) {
      yield IsBusy();
      RegistryEntryData ud = await mrepository.getInitialData(
          event.entitytype, event.entityid, event.registry);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          displayOwner: ud.displayOwner,
          haveAccess: ud.haveAccess,
          roles: ud.roles,
          unitList: ud.unitList,
          resident: ud.resident,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud = await mrepository
          .updateRegistryModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      RegistryModelRepositoryReturnData ud =
          await mrepository.updateRegistryModelWithDiff(
              event.newitem, event.olditem, event.entitytype, event.entityid,event.updateOwner);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
