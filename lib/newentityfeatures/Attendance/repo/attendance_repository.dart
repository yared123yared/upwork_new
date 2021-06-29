import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/button_state.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';

import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import '../bloc/bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

class AttendanceModelRepositoryReturnData {
  List<AttendanceModel> itemlist;
  AttendanceModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  AttendanceModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class AttendanceModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();
  // UserSessionRegRepository _userRepository;

  final String userId = FirebaseAuth.instance.currentUser.uid;

  Future<AttendanceDataModel> loadData(LoadDataEvent event) async {
    AttendanceDataModel grerror = new AttendanceDataModel(
        error: '',
        attendanceModel: null,
        errortype: null,
        grades: [],
        instructorData: null,
        loadButtonState: null,
        sessionTerms: [],
        submitButtonState: null);
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      AttendanceDataModel gr = AttendanceDataModel(
        sessionTerms: await _schoolRepo.lookup
            .getSessionStringList(serviceID: event.entityid),
        grades:
            await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
        instructorData: await _schoolRepo.instructor.setInstructorScheduleData(
          serviceID: event.entityid,
          staffID: HelpUtil.getUserModel().userID,
          // staffID: _userRepository.getUser().userID,
        ),
        loadButtonState: ButtonState.idle,
        submitButtonState: ButtonState.idle,
        attendanceModel: await _schoolRepo.instructor.getAttendance(
          serviceID: event.entityid,
          name: event.name,
          sessionTerm: event.sessionTerm,
          dateTime: event.date,
          kind: event.kind,
          attendanceType: event.attendanceType,
        ),
        error: 'Loading Attendence Failed',
        errortype: -1,
      );
      return gr;
    } catch (ex) {
      return grerror;
    }
  }

  Future<AttendanceDataModel> submitData(SubmitDataEvent event) async {
    AttendanceDataModel grerror = new AttendanceDataModel(
        attendanceModel: null,
        error: '',
        errortype: null,
        grades: [],
        instructorData: null,
        loadButtonState: null,
        sessionTerms: [],
        submitButtonState: null);
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      await _schoolRepo.instructor.submitAttendance(
        attendanceModel: event.attendance,
        sessionTerm: event.sessionTerm,
        attendanceType: event.type,
        name: event.name,
        serviceID: event.entityid,
      );

      AttendanceDataModel gr = AttendanceDataModel(
        sessionTerms: await _schoolRepo.lookup
            .getSessionStringList(serviceID: event.entityid),
        grades:
            await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
        loadButtonState: ButtonState.idle,
        submitButtonState: ButtonState.success,
        attendanceModel: event.attendance,
        instructorData: await _schoolRepo.instructor.setInstructorScheduleData(
          serviceID: event.entityid, staffID: userId,
          // staffID: _userRepository.getUser().userID,
        ),
        errortype: -1,
        error: 'Attendence failed',
      );
      return gr;
    } catch (ex) {
      return grerror;
    }
  }
}

class AttendanceDataModel {
  final List<String> grades;
  final List<String> sessionTerms;
  final AttendanceModel attendanceModel;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;

  AttendanceDataModel({
    @required this.sessionTerms,
    @required this.grades,
    @required this.attendanceModel,
    @required this.loadButtonState,
    @required this.instructorData,
    @required this.submitButtonState,
    @required this.errortype,
    @required this.error,
  });

  int errortype;
  String error;
}
