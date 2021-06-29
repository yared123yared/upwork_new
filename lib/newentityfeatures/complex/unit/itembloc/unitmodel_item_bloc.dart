part of 'bloc.dart';

class UnitModelBloc extends Bloc<UnitModelEvent, UnitModelState> {
  UnitModelRepository mrepository = UnitModelRepository();
  UnitModelBloc() : super(UnitModelState());

  @override
  Stream<UnitModelState> mapEventToState(
    UnitModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      UnitModelRepositoryReturnData ud = await mrepository.createUnitModel(
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
      UnitModelEntryData ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          isManager: ud.isManager,
          isOwner: ud.isOwner,
          buildingList: ud.buildingList,
          btnState: ud.btnState,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      UnitModelRepositoryReturnData ud = await mrepository.updateUnitModel(
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
      UnitModelRepositoryReturnData ud =
          await mrepository.updateUnitModelWithDiff(
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
