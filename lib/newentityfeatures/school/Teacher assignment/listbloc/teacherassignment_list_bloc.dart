part of 'bloc.dart';

class TeacherAssignmentModelListBloc extends Bloc<
    TeacherAssignmentModelListEvent, TeacherAssignmentModelListState> {
  TeacherAssignmentModelRepository mrepository =
      TeacherAssignmentModelRepository();
  TeacherAssignmentModelListBloc() : super(TeacherAssignmentModelListState());

  @override
  Stream<TeacherAssignmentModelListState> mapEventToState(
    TeacherAssignmentModelListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      TeacherAssignmentModelRepositoryReturnData ud =
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
      TeacherAssignmentModelRepositoryReturnData ud =
          await mrepository.getTeacherAssignmentModelWithOfferingSearch(
              event.entitytype, event.entityid, event.grade);

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
      TeacherAssignmentModelRepositoryReturnData ud =
          await mrepository.deleteTeacherAssignmentModelWithData(
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
