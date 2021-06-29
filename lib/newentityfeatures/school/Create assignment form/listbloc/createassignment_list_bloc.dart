part of 'bloc.dart';

class CreateAssignmentListBloc
    extends Bloc<CreateAssignmentListEvent, CreateAssignmentListState> {
  CreateAssignmentRepository mrepository = CreateAssignmentRepository();
  CreateAssignmentListBloc() : super(CreateAssignmentListState());

  @override
  Stream<CreateAssignmentListState> mapEventToState(
    CreateAssignmentListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud =
          await mrepository.getInitialData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsListDataLoaded(listdata: ud.itemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is getListDataWithSearchParameter) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud =
          await mrepository.getCreateAssignmentWithOfferingSearch(
              event.entitytype,
              event.entityid,
              event.sessionterm,
              event.offeringmodelgroupname);

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
      CreateAssignmentRepositoryReturnData ud =
          await mrepository.deleteCreateAssignmentWithData(
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
