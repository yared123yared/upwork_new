part of 'bloc.dart';

class OfferingModelGroupBloc
    extends Bloc<OfferingModelGroupEvent, OfferingModelGroupState> {
  OfferingModelGroupRepository mrepository = OfferingModelGroupRepository();
  OfferingModelGroupBloc() : super(OfferingModelGroupState());

  @override
  Stream<OfferingModelGroupState> mapEventToState(
    OfferingModelGroupEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      OfferingModelGroupRepositoryReturnData ud =
          await mrepository.createOfferingModelGroup(
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
      OfferingDataEntry ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          grades: ud.grades,
          groups: ud.groups,
          subject: ud.subject,
          // btnState: btnState,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      OfferingModelGroupRepositoryReturnData ud =
          await mrepository.updateOfferingModelGroup(
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
      OfferingModelGroupRepositoryReturnData ud =
          await mrepository.updateOfferingModelGroupWithDiff(
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
