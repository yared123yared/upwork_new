part of 'bloc.dart';

class TeacherAssignmentModelBloc
    extends Bloc<TeacherAssignmentModelEvent, TeacherAssignmentModelState> {
  TeacherAssignmentModelRepository mrepository =
      TeacherAssignmentModelRepository();
  TeacherAssignmentModelBloc() : super(TeacherAssignmentModelState());

  @override
  Stream<TeacherAssignmentModelState> mapEventToState(
    TeacherAssignmentModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      TeacherAssignmentModelRepositoryReturnData ud =
          await mrepository.createTeacherAssignmentModel(
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
      TeacherEntryData ud = await mrepository
          .getItemFormNewEntryData(event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          grades: ud.grades,
          schoolOwners: ud.schoolOwners,
          offeringModelGroup: ud.offeringModelGroup,
          virtualRooms: ud.virtualRooms,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      TeacherAssignmentModelRepositoryReturnData ud =
          await mrepository.updateTeacherAssignmentModel(
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
      TeacherAssignmentModelRepositoryReturnData ud =
          await mrepository.updateTeacherAssignmentModelWithDiff(
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
