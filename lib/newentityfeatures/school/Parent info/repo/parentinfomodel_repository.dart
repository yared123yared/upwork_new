import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';

import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/common_enum_methods.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';
import '../bloc/bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

enum AnswerFormState { studnetAnswer, teacherGiveScore, studentShowScore }

class ParentInfoModelRepositoryReturnData {
  List<AttendanceModel> itemlist;
  AttendanceModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  ParentInfoModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class ParentInfoModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();
  UserRepository _userRepository = HelpUtil.getUserRepository();

  Future<ParentInfoDataModel> viewEvent(ParentViewEvent event) async {
    ParentInfoDataModel grerror = ParentInfoDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      ParentInfoDataModel gr = ParentInfoDataModel(
        sessionTerms:
            HelpUtil.getUserModel().defaultServiceEntity.getSessionTerms(),
        assignmentListGetter: vrAssignmentGetter,
        virtualRooms:
            HelpUtil.getUserModel().defaultServiceEntity.getVirtualRooms(),
        mode: event.mode,
        data: null,
        idNumbers:
            HelpUtil.getUserModel().defaultServiceEntity.getIdCardNumbers(),
        errortype: -1,
      );

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<ParentInfoDataModel> loadAttendanceData(
      LoadAttendanceDataEvent event) async {
    ParentInfoDataModel grerror = ParentInfoDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      ParentInfoDataModel gr = ParentInfoDataModel(
        assignmentListGetter: vrAssignmentGetter,
        sessionTerms:
            HelpUtil.getUserModel().defaultServiceEntity.getSessionTerms(),
        virtualRooms:
            HelpUtil.getUserModel().defaultServiceEntity.getVirtualRooms(),
        mode: ParentViewMode.Attendance,
        data: await _schoolRepo.parent.getAttendenceForIDCardGaurdian(
          entityid: event.entityid,
          sessionterm: event.sessionTerm,
          idCardNumber: event.idNumber,
          startdate: event.startDate,
          enddate: event.endDate,
        ),
        idNumbers:
            HelpUtil.getUserModel().defaultServiceEntity.getIdCardNumbers(),
        errortype: -1,
      );

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<ParentInfoDataModel> loadEventData(LoadEventDataEvent event) async {
    ParentInfoDataModel grerror = ParentInfoDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      ParentInfoDataModel gr = ParentInfoDataModel(
        sessionTerms:
            HelpUtil.getUserModel().defaultServiceEntity.getSessionTerms(),
        virtualRooms:
            HelpUtil.getUserModel().defaultServiceEntity.getVirtualRooms(),
        assignmentListGetter: vrAssignmentGetter,
        mode: ParentViewMode.Event,
        data: await _schoolRepo.parent.getEventForIDCardGaurdian(
            entityid: event.entityid,
            virtualroomname: event.vrRoom,
            sessionterm: event.sessionTerm,
            startdate: event.startDate,
            enddate: event.endDate),
        idNumbers:
            HelpUtil.getUserModel().defaultServiceEntity.getIdCardNumbers(),
        errortype: -1,
      );

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<ParentInfoDataModel> loadProgressData(
      LoadProgressDataEvent event) async {
    ParentInfoDataModel grerror = ParentInfoDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      ParentInfoDataModel gr = ParentInfoDataModel(
        sessionTerms:
            HelpUtil.getUserModel().defaultServiceEntity.getSessionTerms(),
        assignmentListGetter: vrAssignmentGetter,
        virtualRooms:
            HelpUtil.getUserModel().defaultServiceEntity.getVirtualRooms(),
        mode: ParentViewMode.Progress,
        data: await _schoolRepo.parent.getProgressForGaurdian(
          entityid: event.entityid,
          sessionterm: event.sessionTerm,
          idCardNumber: event.idNumber,
        ),
        idNumbers:
            HelpUtil.getUserModel().defaultServiceEntity.getIdCardNumbers(),
        errortype: -1,
      );

      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<AnswerFormDataModel> loadAssignmentScoreData(
      LoadAssignmentsScoreDataEvent event) async {
    AnswerFormDataModel grerror = AnswerFormDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      AnswerFormDataModel gr;

      var vrAssignmentScore =
          await _schoolRepo.assignment.getVrAssignmentScoreForSingleStudent(
        sessionterm: event.sessionTerm,
        vrid: event.vrAssignment.vrid,
        idcardnum: event.idCard,
        entityid: event.entityid,
      );

      var assignment = await _schoolRepo.assignment.getPublishedAssignmentById(
        serviceID: event.entityid,
        assignmentID: event.vrAssignment.assignmentId,
      );

      if (vrAssignmentScore != null && vrAssignmentScore.isNotEmpty) {
        gr = AnswerFormDataModel(
          state: AnswerFormState.studentShowScore,
          answer: vrAssignmentScore.first,
          idCardNum: event.idCard,
          questionInfo: null,
          vrAssignment: event.vrAssignment,
          assignment: assignment,
          errortype: -1,
        );
      }

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<AnswerFormDataModel> loadAssignmentListData(
      LoadAssignmentsListDataEvent event) async {
    AnswerFormDataModel grerror = AnswerFormDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here

      var assignment = await _schoolRepo.assignment.getPublishedAssignmentById(
        serviceID: event.entityid,
        assignmentID: event.vrAssignment.assignmentId,
      );
      AnswerFormDataModel gr = AnswerFormDataModel(
        state: AnswerFormState.studnetAnswer,
        answer: null,
        idCardNum: event.idCard,
        questionInfo: null,
        vrAssignment: event.vrAssignment,
        assignment: assignment,
        errortype: -1,
      );

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<List<VrAssignmentModel>> vrAssignmentGetter({
    String idNumber,
    String sessionTerm,
    String virtualRoom,
  }) {
    return _schoolRepo.assignment.getVrAssignmentsForIdCard(
      entityid: idNumber, // _serviceID,
      sessionterm: sessionTerm,
      virtualRoomName: virtualRoom,
    );
  }

  Future<AnswerFormDataModel> submitScoreForStudent(
      SubmitAnswerForStudentSchoolEvent event) async {
    AnswerFormDataModel grerror = AnswerFormDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      AnswerFormDataModel gr = AnswerFormDataModel();

      AnsweredPaper paper = AnsweredPaper(
        answers: event.questions,
        studentID: event.idCardNum,
        stuname: _userRepository.getUser().name,
        submitdate: DateTime.now(),
      );

      await VrAssignmentGateway.submitScoreForStudent(
        assignmentid: event.assignmentID,
        vrassignmentid: event.vrAssignmentID.vrid,
        sessionTermName: event.vrAssignmentID.session,
        answerdatalist: [paper],
        submitdate: DateTime.now(),
        serviceID: event.entityid,
      );

      gr.errortype = -1;
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<AnswerFormDataModel> submitScoreForTeacher(
      SubmitAnswerForTeacherSchoolEvent event) async {
    AnswerFormDataModel grerror = AnswerFormDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      AnswerFormDataModel gr = AnswerFormDataModel();

      AnsweredPaper paper = AnsweredPaper(
        answers: event.questions,
        studentID: event.idCardNum,
        stuname: _userRepository.getUser().name,
        submitdate: DateTime.now(),
      );

      await VrAssignmentGateway.submitScoreForTeacher(
        assignmentid: event.assignmentID,
        vrassignmentid: event.vrAssignmentID.vrid,
        sessionTermName: event.vrAssignmentID.session,
        answerdatalist: [paper],
        submitdate: DateTime.now(),
        serviceID: event.entityid,
      );

      gr.errortype = -1;
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<AnswerFormDataModel>
      getVrAssignmentScoreIndependentOfferingForAllStudent(
          SubmitAnswerForTeacherSchoolEvent event) async {
    AnswerFormDataModel grerror = AnswerFormDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      AnswerFormDataModel gr = AnswerFormDataModel();

      var r = await _schoolRepo.assignment
          .getVrAssignmentScoreIndependentOfferingForAllStudent(
        offeringname: event.vrAssignmentID.offering,
        serviceID: event.entityid,
        sessionterm: event.vrAssignmentID.session,
        vrid: event.vrAssignmentID.vrid,
        virtualRoom: event.vrAssignmentID.virtualRoom,
      );

      r.forEach((element) {
        element.vrAssignmnet = event.vrAssignmentID;
      });

      gr.answeredList = r;
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }
}

class ParentInfoDataModel {
  final List<String> idNumbers;
  final List<String> sessionTerms;
  final List<String> virtualRooms;
  final ParentViewMode mode;
  final Map<String, Map<String, dynamic>> data;
  final Future<List<VrAssignmentModel>> Function({
    String idNumber,
    String sessionTerm,
    String virtualRoom,
  }) assignmentListGetter;

  ParentInfoDataModel({
    this.idNumbers,
    this.data,
    this.sessionTerms,
    this.virtualRooms,
    this.assignmentListGetter,
    this.mode,
    this.errortype,
    this.error,
  });

  int errortype;
  String error;
}

class AnswerFormDataModel {
  final AssignmentModel assignment;
  final AnsweredPaper answer;
  final QuestionInfo questionInfo;
  final VrAssignmentModel vrAssignment;
  final String idCardNum;
  final AnswerFormState state;
  List<AnsweredPaper> answeredList;

  AnswerFormDataModel({
    this.answer,
    this.idCardNum,
    this.vrAssignment,
    this.questionInfo,
    this.assignment,
    this.state,
    this.errortype,
    this.error,
  });

  int errortype;
  String error;
}
