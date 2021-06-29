part of 'bloc.dart';

class FamilyMemberListBloc
    extends Bloc<FamilyMemberListEvent, FamilyMemberListState> {
  FamilyMemberRepository mrepository = FamilyMemberRepository();
  FamilyMemberListBloc() : super(FamilyMemberListState());

  @override
  Stream<FamilyMemberListState> mapEventToState(
    FamilyMemberListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      FamilyMemberRepositoryReturnData ud =
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
      FamilyMemberRepositoryReturnData ud =
          await mrepository.getFamilyMemberWithOfferingSearch(
        event.entitytype,
        event.entityid,
        event.units,
      );

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
          units: ud.grades,
          // gradelist: ud.grades,
          // sessiontermlist: ud.sessionterm,
          // offeringModelGroupfunc: ud.offeringModelGroupfunc,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is deleteItemWithData) {
      yield IsBusy();
      FamilyMemberRepositoryReturnData ud =
          await mrepository.deleteFamilyMemberWithData(
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
