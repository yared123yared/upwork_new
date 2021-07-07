part of 'bloc.dart';

class FeeItemGroupsModelBloc
    extends Bloc<FeeItemGroupsModelEvent, FeeItemGroupsModelState> {
  FeeItemGroupsModelRepository mrepository = FeeItemGroupsModelRepository();
  FeeItemGroupsModelBloc() : super(FeeItemGroupsModelState());

  @override
  Stream<FeeItemGroupsModelState> mapEventToState(
    FeeItemGroupsModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      FeeItemGroupsModelRepositoryReturnData ud =
          await mrepository.createFeeItemGroupsModel(
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
      GenericLookUpDataUsedForRegistration ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
            entitytype: event.entitytype,
            entityid: event.entityid,
            detailstype: "start",
            grades: ud.grades,
            feeitem: ud.feeitemlist);
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      FeeItemGroupsModelRepositoryReturnData ud =
          await mrepository.updateFeeItemGroupsModel(
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
      FeeItemGroupsModelRepositoryReturnData ud =
          await mrepository.updateFeeItemGroupsModelWithDiff(
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
