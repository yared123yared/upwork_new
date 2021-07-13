part of 'bloc.dart';

class CreateAssignmentBloc
    extends Bloc<CreateAssignmentEvent, CreateAssignmentState> {

  CreateAssignmentRepository mrepository = CreateAssignmentRepository();
  CreateAssignmentBloc() : super(CreateAssignmentState());

  @override
  Stream<CreateAssignmentState> mapEventToState(
    CreateAssignmentEvent event,
  ) async* {
    if (event is createItem) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud = await mrepository
          .createCreateAssignment(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is QuestionFormSchoolEvent) {
      yield QuestionFormSchoolState(
        questionIndex: event.index,
        question: event.question,
        assignmentId: event.assignmentID,
        emptyList: event.emptyList,
      );
    }

    if (event is StudyMaterialsFormSchoolEvent) {
      yield StudyMaterialsFormSchoolState(
        studyMaterialIndex: event.index,
        studyMaterial: event.studyMaterial,
        assignmentId: event.assignmentID,
        emptyList: event.emptyList,
      );
    }
    if (event is AddStudyMaterialAndUpdateItem) {
      CreateAssignmentRepositoryReturnData ud;
      yield IsBusy();
      CreateAssignmentRepositoryReturnData studyMaterialResult =
          await mrepository.addStudyMaterial(
        event.item,
        event.file,
        event.studyMaterial,
        event.entitytype,
        event.entityid,
      );
      if (studyMaterialResult.errortype == -1) {
        ud = await mrepository.updateCreateAssignment(
          event.item,
          event.entitytype,
          event.entityid,
        );

        if (ud.errortype == -1) {
          yield IsSaved();
        } else if (ud.errortype == 1) {
          yield HasLogicalFaliur(error: ud.error);
        } else {
          yield HasExceptionFaliur(error: ud.error);
        }
      } else if (studyMaterialResult.errortype == 1) {
        yield HasLogicalFaliur(error: studyMaterialResult.error);
      } else {
        yield HasExceptionFaliur(error: studyMaterialResult.error);
      }
    }
    if (event is updateItem) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud = await mrepository
          .updateCreateAssignment(event.item, event.entitytype, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is publishItem) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud =
          await mrepository.publishAssignment(event.item, event.entityid);

      if (ud.errortype == -1)
        yield IsSaved();
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }

    if (event is updateItemWithDiff) {
      yield IsBusy();
      CreateAssignmentRepositoryReturnData ud =
          await mrepository.updateCreateAssignmentWithDiff(
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
