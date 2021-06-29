part of 'bloc.dart';

class FamilyMemberBloc extends Bloc<FamilyMemberEvent, FamilyMemberState> {
  FamilyMemberRepository mrepository = FamilyMemberRepository();
  FamilyMemberBloc() : super(FamilyMemberState());

  @override
  Stream<FamilyMemberState> mapEventToState(
    FamilyMemberEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      FamilyMemberRepositoryReturnData ud = await mrepository
          .createFamilyMember(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is getForNewEntry) {
      yield IsBusy();
      FamilyEntryData ud = await mrepository.getItemFormNewEntryData(
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          models: ud.models,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      FamilyMemberRepositoryReturnData ud = await mrepository
          .updateFamilyMember(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      FamilyMemberRepositoryReturnData ud =
          await mrepository.updateFamilyMemberWithDiff(
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
