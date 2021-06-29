part of 'bloc.dart';

class StudentBasicFormModelBloc
    extends Bloc<StudentBasicFormModelEvent, StudentBasicFormModelState> {
  StudentBasicFormModelRepository mrepository =
      StudentBasicFormModelRepository();
  StudentBasicFormModelBloc() : super(StudentBasicFormModelState());

  @override
  Stream<StudentBasicFormModelState> mapEventToState(
    StudentBasicFormModelEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      StudentBasicFormModelRepositoryReturnData ud =
          await mrepository.createStudentBasicFormModel(
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
      print('loading data from event ');
      StudentFormEntryData ud = await mrepository.getItemFormNewEntryData(
          event.entitytype, event.entityid);
      print('data loaded from event ${ud.studentId}');
      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          studentId: ud.studentId.toString(),
          availablePlaces: ud.availablePlaces,
          formIndex: ud.formIndex,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is updateItem) {
      yield IsBusy();
      StudentBasicFormModelRepositoryReturnData ud =
          await mrepository.updateStudentBasicFormModel(
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
      StudentBasicFormModelRepositoryReturnData ud =
          await mrepository.updateStudentBasicFormModelWithDiff(
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
