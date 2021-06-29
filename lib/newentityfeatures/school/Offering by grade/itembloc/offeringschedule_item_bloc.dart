part of 'bloc.dart';

class OfferingWeeklyScheduleBloc
    extends Bloc<OfferingWeeklyScheduleEvent, OfferingWeeklyScheduleState> {
  OfferingWeeklyScheduleRepository mrepository =
      OfferingWeeklyScheduleRepository();
  OfferingWeeklyScheduleBloc() : super(OfferingWeeklyScheduleState());

  @override
  Stream<OfferingWeeklyScheduleState> mapEventToState(
    OfferingWeeklyScheduleEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.createOfferingWeeklySchedule(
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
      OfferingWeeklyDataEntry ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          buttonstate: ud.buttonstate,
          offeringsScheduleModel: ud.offeringsScheduleModel,
          rooms: ud.rooms,
          schoolOwner: ud.schoolOwner,
          grades: ud.grades,
          getOfferingGroupModel: ud.getOfferingGroupModel,
          periods: ud.periods,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.updateOfferingWeeklySchedule(
        event.item,
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

    if (event is updateItemWithDiff) {
      yield IsBusy();
      OfferingWeeklyScheduleRepositoryReturnData ud =
          await mrepository.updateOfferingWeeklyScheduleWithDiff(
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
