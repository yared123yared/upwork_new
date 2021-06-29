part of 'bloc.dart';

class ParentInfoModelBloc
    extends Bloc<ParentInfoModelEvent, ParentInfoModelState> {
  ParentInfoModelRepository mrepository = ParentInfoModelRepository();
  ParentInfoModelBloc() : super(ParentInfoModelInitial());

  @override
  Stream<ParentInfoModelState> mapEventToState(
    ParentInfoModelEvent event,
  ) async* {
    if (event is ParentViewEvent) {
      yield IsBusy();
      ParentInfoDataModel ud = await mrepository.viewEvent(event);
      print(ud.error);
      if (ud.errortype == -1)
        yield ViewState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          sessionTerms: ud.sessionTerms,
          assignmentListGetter: ud.assignmentListGetter,
          virtualRooms: ud.virtualRooms,
          mode: ud.mode,
          data: ud.data,
          idNumbers: ud.idNumbers,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is LoadAttendanceDataEvent) {
      yield IsBusy();
      ParentInfoDataModel ud = await mrepository.loadAttendanceData(event);
      if (ud.errortype == -1)
        yield ViewState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          assignmentListGetter: ud.assignmentListGetter,
          sessionTerms: ud.sessionTerms,
          virtualRooms: ud.virtualRooms,
          mode: ud.mode,
          data: ud.data,
          idNumbers: ud.idNumbers,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is LoadEventDataEvent) {
      yield IsBusy();
      ParentInfoDataModel ud = await mrepository.loadEventData(event);
      if (ud.errortype == -1)
        yield ViewState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          sessionTerms: ud.sessionTerms,
          virtualRooms: ud.virtualRooms,
          assignmentListGetter: ud.assignmentListGetter,
          mode: ud.mode,
          data: ud.data,
          idNumbers: ud.idNumbers,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is LoadProgressDataEvent) {
      yield IsBusy();
      ParentInfoDataModel ud = await mrepository.loadProgressData(event);
      print(ud);
      if (ud.errortype == -1)
        yield ViewState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          sessionTerms: ud.sessionTerms,
          assignmentListGetter: ud.assignmentListGetter,
          virtualRooms: ud.virtualRooms,
          mode: ud.mode,
          data: ud.data,
          idNumbers: ud.idNumbers,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is LoadAssignmentsScoreDataEvent) {
      yield IsBusy();
      AnswerFormDataModel ud = await mrepository.loadAssignmentScoreData(event);
      if (ud.errortype == -1)
        yield AnswerFormSchoolState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          state: ud.state,
          answer: ud.answer,
          idCardNum: ud.idCardNum,
          questionInfo: ud.questionInfo,
          vrAssignment: ud.vrAssignment,
          assignment: ud.assignment,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    }
    if (event is LoadAssignmentsListDataEvent) {
      yield IsBusy();
      AnswerFormDataModel ud = await mrepository.loadAssignmentListData(event);
      if (ud.errortype == -1)
        yield AnswerFormSchoolState(
          entityid: event.entityid,
          entitytype: event.entitytype,
          detailstype: event.detailstype,
          state: ud.state,
          answer: ud.answer,
          idCardNum: ud.idCardNum,
          questionInfo: ud.questionInfo,
          vrAssignment: ud.vrAssignment,
          assignment: ud.assignment,
        );
      else if (ud.errortype == 1)
        yield HasLogicalFaliur(error: ud.error);
      else
        yield HasExceptionFaliur(error: ud.error);
    } else if (event is SubmitAnswerForStudentSchoolEvent) {
      yield IsBusy();

      AnswerFormDataModel ud = await mrepository.submitScoreForStudent(event);

      if (ud.errortype == -1) {
        yield IsSaved();
      } else if (ud.errortype == 1) {
        yield HasLogicalFaliur(error: ud.error);
      } else {
        yield HasExceptionFaliur(error: ud.error);
      }

      // add(SchoolPageEvent());
    } else if (event is SubmitAnswerForTeacherSchoolEvent) {
      yield IsBusy();

      AnswerFormDataModel ud = await mrepository.submitScoreForTeacher(event);

      if (ud.errortype == -1) {
        AnswerFormDataModel ud2 = await mrepository
            .getVrAssignmentScoreIndependentOfferingForAllStudent(event);

        // add(AssignmentSubmittersListSchoolEvent(
        //   sessionVroom: event.vrAssignmentID.session,
        //   vrAssignmentID: event.vrAssignmentID,
        // ));
        if (ud2.errortype == -1) {
          yield VrAssignmentAnsweredPaperListState(
            answeredPaperList: ud2.answeredList,
          );
        } else if (ud2.errortype == 1) {
          yield HasLogicalFaliur(error: ud2.error);
        } else {
          yield HasExceptionFaliur(error: ud2.error);
        }
      } else if (ud.errortype == 1) {
        yield HasLogicalFaliur(error: ud.error);
      } else {
        yield HasExceptionFaliur(error: ud.error);
      }
    }
  }
}
