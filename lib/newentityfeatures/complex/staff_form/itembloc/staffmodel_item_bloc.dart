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
              item:event.item, entitytype:event.entitytype, entityid:event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {



        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",

        );

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
              newitem:event.newitem,olditem: event.olditem, entitytype:event.entitytype,entityid: event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
