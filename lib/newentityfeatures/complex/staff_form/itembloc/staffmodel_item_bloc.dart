part of 'bloc.dart';

class StaffModelBloc
    extends Bloc<StaffModelEvent, StaffModelState> {
  StaffModelRepository mrepository = StaffModelRepository();
  StaffModelBloc() : super(StaffModelState());

  @override
  Stream<StaffModelState> mapEventToState(
    StaffModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      StaffModelRepositoryReturnData ud =
          await mrepository.createStaffModel(
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
      StaffEntryData ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          complexModel: ud.complexModel
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      StaffModelRepositoryReturnData ud =
          await mrepository.updateStaffModel(
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
      StaffModelRepositoryReturnData ud =
          await mrepository.updateStaffModelWithDiff(
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
