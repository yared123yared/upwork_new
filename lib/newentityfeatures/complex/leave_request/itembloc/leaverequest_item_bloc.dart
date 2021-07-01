part of 'bloc.dart';

class LeaveRequestBloc
    extends Bloc<LeaveRequestEvent, LeaveRequestState> {
  LeaveRequestRepository mrepository = LeaveRequestRepository();
  LeaveRequestBloc() : super(LeaveRequestState());

  @override
  Stream<LeaveRequestState> mapEventToState(
    LeaveRequestEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      LeaveRequestRepositoryReturnData ud =
          await mrepository.createLeaveRequest(
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
      LeaveRequestEntryData ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid, event.originType);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          isManager: ud.isManager,
          user: ud.user,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      LeaveRequestRepositoryReturnData ud =
          await mrepository.updateLeaveRequest(
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
      LeaveRequestRepositoryReturnData ud =
          await mrepository.updateLeaveRequestWithDiff(
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
