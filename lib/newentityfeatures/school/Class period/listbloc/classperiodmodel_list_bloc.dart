part of 'bloc.dart';

class ClassPeriodModelListBloc
    extends Bloc<ClassPeriodModelListEvent, ClassPeriodModelListState> {
  ClassPeriodModelRepository mrepository = ClassPeriodModelRepository();
  ClassPeriodModelListBloc() : super(ClassPeriodModelListState());

  @override
  Stream<ClassPeriodModelListState> mapEventToState(
    ClassPeriodModelListEvent event,
  ) async* {
    if (event is getListData) {
      yield IsBusy();
      ClassPeriodModelRepositoryReturnData ud =
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
      ClassPeriodModelRepositoryReturnData ud =
          await mrepository.getClassPeriodModelWithOfferingSearch(
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
      ClassPeriodModelRepositoryReturnData ud =
          await mrepository.deleteClassPeriodModelWithData(
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
