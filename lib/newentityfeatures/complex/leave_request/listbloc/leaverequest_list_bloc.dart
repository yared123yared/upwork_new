part of 'bloc.dart';

class LeaveRequestListBloc
    extends Bloc<LeaveRequestListEvent, LeaveRequestListState> {
  LeaveRequestRepository mrepository = LeaveRequestRepository();
  LeaveRequestListBloc() : super(LeaveRequestListState());
//origintype 1 -waiting for approval, 2 - for particular staff, 3 - History for Manager
  @override
  Stream<LeaveRequestListState> mapEventToState(
    LeaveRequestListEvent event,
  ) async* {
    if (event is getListData) {
      LeaveRequestRepositoryReturnData ud = new LeaveRequestRepositoryReturnData();
      yield IsBusy();
      if(event.originType==1) {
         ud =
        await mrepository.getLeaveRequestWaitingForApprovalNext180Days(
          event.entitytype,
          event.entityid,
          event.originType,
        );
      }
      else if(event.originType==2) {
        ud =
        await mrepository.getLeaveRequestParticularStaff(
          event.entitytype,
          event.entityid,
          event.originType,
        );
      }
      if(event.originType==3) {
        ud =
        await mrepository.getLeaveRequestActiveAllStaff(
          event.entitytype,
          event.entityid,
          event.originType,
        );
      }

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getPreData) {
      yield IsBusy();
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getListFormPreLoadData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSearchParaLoaded(
            gradelist: ud.grades,
            sessiontermlist: ud.sessionterm,
            offeringModelGroupfunc: ud.offeringModelGroupfunc);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is deleteItemWithData) {
      yield IsBusy();
      LeaveRequestRepositoryReturnData ud =
          await mrepository.deleteLeaveRequestWithData(
              event.item, event.entitytype, event.entityid);
      if (ud.errortype == -1)
        yield IsDeleted();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
  }
}
