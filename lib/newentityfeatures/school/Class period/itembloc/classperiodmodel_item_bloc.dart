part of 'bloc.dart';

class ClassPeriodModelBloc
    extends Bloc<ClassPeriodModelEvent, ClassPeriodModelState> {
  ClassPeriodModelRepository mrepository = ClassPeriodModelRepository();
  ClassPeriodModelBloc() : super(ClassPeriodModelState());

  @override
  Stream<ClassPeriodModelState> mapEventToState(
    ClassPeriodModelEvent event,
  ) async* {
    if (event is CreateItem) {
      yield IsBusy();
      ClassPeriodModelRepositoryReturnData ud =
          await mrepository.createClassPeriodModel(
        event.item,
        event.type,
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is GetForNewEntry) {
      yield IsBusy();
      ClassPeriodDataEntry ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          type: ud.type,
          types: ud.types,
          paymentPeriods: ud.paymentPeriods,
          feeItemsGroups: ud.feeItemsGroups,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is UpdateItem) {
      yield IsBusy();
      ClassPeriodModelRepositoryReturnData ud = await mrepository
          .updateClassPeriodModel(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is UpdateItemWithDiff) {
      yield IsBusy();
      ClassPeriodModelRepositoryReturnData ud =
          await mrepository.updateClassPeriodModelWithDiff(
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
