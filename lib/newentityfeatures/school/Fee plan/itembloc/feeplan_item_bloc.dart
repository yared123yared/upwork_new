part of 'bloc.dart';

class FeePlanModelBloc extends Bloc<FeePlanModelEvent, FeePlanModelState> {
  FeePlanModelRepository mrepository = FeePlanModelRepository();
  FeePlanModelBloc() : super(FeePlanModelState());

  @override
  Stream<FeePlanModelState> mapEventToState(
    FeePlanModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud = await mrepository
          .createFeePlanModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      FeePlanEntryData ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          sessions: ud.sessions,
          editable: ud.editable,
          grades: ud.grades,
          feeItemsGroups: ud.feeItemsGroups,
          paymentPeriods: ud.paymentPeriods,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud = await mrepository
          .updateFeePlanModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      FeePlanModelRepositoryReturnData ud =
          await mrepository.updateFeePlanModelWithDiff(
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
