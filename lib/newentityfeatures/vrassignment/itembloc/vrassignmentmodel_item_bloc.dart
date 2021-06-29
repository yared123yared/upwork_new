part of 'bloc.dart';

class VrAssignmentModelBloc
    extends Bloc<VrAssignmentModelEvent, VrAssignmentModelState> {
  VrAssignmentModelRepository mrepository = VrAssignmentModelRepository();
  VrAssignmentModelBloc() : super(VrAssignmentModelState());

  @override
  Stream<VrAssignmentModelState> mapEventToState(
    VrAssignmentModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      print("assignment start");
      VrAssignmentModelRepositoryReturnData ud =
          await mrepository.createVrAssignmentModel(
              event.item, event.entitytype, event.entityid);
      print("assignment end");

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
      print("assignment returned predefined error");
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
          sessiontermlist: ud.sessionterm,
          gradelist: ud.grades,
          teacherofferingassignmentlistbyGrade: HelperRepository
              .teacherOfferingsAssignmentllistbyofferinggroupfunc,
          assignmentModellistbyofferinggroupfunc:
              HelperRepository.assignmentModellistbyofferinggroupfunc,
          examtermlist: ud.examtermlist,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      VrAssignmentModelRepositoryReturnData ud =
          await mrepository.updateVrAssignmentModel(
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
      VrAssignmentModelRepositoryReturnData ud =
          await mrepository.updateVrAssignmentModelWithDiff(
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
