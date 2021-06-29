part of 'bloc.dart';

class CreateAssignmentBloc
    extends Bloc<CreateAssignmentEvent, CreateAssignmentState> {
  AssignmentRepository cmrepository =
      AssignmentRepository(lookup: null, virtualRoom: null);
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
    if (event is getForNewEntry) {
      yield IsBusy();
      CreateAssignmentEntryData ud = await mrepository.getItemFormNewEntryData(
        event.entitytype,
        event.entityid,
      );

      if (ud.errortype == -1)
        yield IsReadyForDetailsPage(
          entitytype: event.entitytype,
          entityid: event.entityid,
          detailstype: "start",
          offerings: ud.offerings,
          grades: ud.grades,
          index: ud.index,
          question: ud.question,
          assignmentID: ud.assignmentID,
          studyMaterial: ud.studyMaterial,
          dynamicListState: ud.dynamicListState,
          listItems: ud.listItems,
          emptyList: ud.emptyList,
        );
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
    } else if (event is NextQuestionFormSchoolEvent) {
      mrepository.updateQuestion(
        newQuestion: event.question,
        entityid: event.entityid,
        assignmentID: event.assignmentID,
        questionIndex: event.index,
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
