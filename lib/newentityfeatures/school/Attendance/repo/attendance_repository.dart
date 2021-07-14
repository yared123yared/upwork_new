import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/repositories/auth_repository.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';

import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../bloc/bloc.dart';

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
  final String userId = FirebaseAuth.instance.currentUser.uid;

  // UserSessionRegRepository _userRepository;
  AuthRepository _authRepository;

  Future<AttendanceDataModel> loadData(LoadDataEvent event) async {
    AttendanceDataModel grerror = AttendanceDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      print("happening also here");
      //Please put your code here
      AttendanceDataModel gr = AttendanceDataModel();
      if (event.name == null &&
          event.sessionTerm == null &&
          event.date == null &&
          event.kind == null) {
        gr = AttendanceDataModel(
          sessionTerms: await SessionTermGateway
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await LookupGateway.getGradeList(serviceID: event.entityid),
          instructorData:
              await OfferingsVrManagementGateway.getInstructorScheduleData(
            serviceID: event.entityid, staffid: userId,
            // staffID: _userRepository.getUser().userID,
          ),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.idle,
          attendanceModel: null,
        );
        return gr;
      } else {
        print("happening here");
        gr = AttendanceDataModel(
          sessionTerms: await SessionTermGateway
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await LookupGateway.getGradeList(serviceID: event.entityid),
          instructorData:
              await OfferingsVrManagementGateway.getInstructorScheduleData(
            serviceID: event.entityid, staffid: userId,
            // staffID: _userRepository.getUser().userID,
          ),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.idle,
          attendanceModel: await OfferingsVrManagementGateway.getAttendance(
            serviceID: event.entityid,
            name: event.name,
            sessionTerm: event.sessionTerm,
            dateTime: event.date,
            kind: event.kind,
            attendanceType: event.attendanceType,
          ),
        );
      }
      return gr;
    } catch (ex) {
      print(ex);
      return grerror;
    }
  }

  Future<AttendanceDataModel> submitData(SubmitDataEvent event) async {
    AttendanceDataModel grerror = AttendanceDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      await OfferingsVrManagementGateway.submitAttendance(
        attendanceModel: event.attendance,
        sessionTerm: event.sessionTerm,
        attendanceType: event.type,
        name: event.name,
        serviceID: event.entityid,
      );

      AttendanceDataModel gr = AttendanceDataModel(
        sessionTerms: await SessionTermGateway
            .getSessionStringList(serviceID: event.entityid),
        grades:
            await LookupGateway.getGradeList(serviceID: event.entityid),
        loadButtonState: ButtonState.idle,
        submitButtonState: ButtonState.success,
        attendanceModel: event.attendance,
        instructorData: await OfferingsVrManagementGateway.getInstructorScheduleData(
          serviceID: event.entityid, staffid: userId,
          // staffID: _userRepository.getUser().userID,
        ),
        errortype: -1,
      );
      return gr;
    } catch (ex) {}
    return grerror;
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
    this.sessionTerms,
    this.grades,
    this.attendanceModel,
    this.loadButtonState,
    this.instructorData,
    this.submitButtonState,
    this.errortype,
    this.error,
  });

  int errortype;
  String error;
}
