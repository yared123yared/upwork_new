import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

import 'package:flutter/cupertino.dart';

import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';

class InstructorRepository {
  Map<String, Map<String, InstructorOfferingDataModel>> _instructorData;

  Future<InstructorOfferingDataModel> setInstructorScheduleData({
    @required String serviceID,
    @required String staffID,
  }) async {
    _instructorData = _instructorData ?? {};
    _instructorData[serviceID] = _instructorData[serviceID] ?? {};
    _instructorData[serviceID][staffID] = _instructorData[serviceID][staffID] ??
        await OfferingsVrManagementGateway.getInstructorScheduleData(
          serviceID,
          staffID,
        );
    return _instructorData[serviceID][staffID];
  }

  Future<AttendanceModel> getAttendance({
    @required Attendancetype attendanceType,
    @required String name,
    @required String sessionTerm,
    @required String serviceID,
    @required DateTime dateTime,
    @required String kind,
  }) async {
    AttendanceModel att;
    if (attendanceType == Attendancetype.Ofr) {
      att = await OfferingsVrManagementGateway.getAttendanceOFR(
        offeringname: name,
        sessionTerm: sessionTerm,
        dateTime: dateTime,
        kind: kind,
        serviceID: serviceID,
      );
    } else {
      att = await OfferingsVrManagementGateway.getAttendanceVR(
        serviceID: serviceID,
        dateTime: dateTime,
        sessionTerm: sessionTerm,
        kind: kind,
        virtualroomname: name,
      );
    }

    return att;
  }

  Future submitAttendance(
      {@required Attendancetype attendanceType,
      @required AttendanceModel attendanceModel,
      @required String name,
      @required String sessionTerm,
      @required String serviceID}) async {
    if (attendanceType == Attendancetype.Vr) {
      await OfferingsVrManagementGateway.submitAttendanceVirtualRoom(
          attendanceModel: attendanceModel,
          virtualroomname: name,
          serviceID: serviceID,
          sessionTermName: sessionTerm);
    } else {
      await OfferingsVrManagementGateway.submitAttendanceOfr(
          attendanceModel: attendanceModel,
          offeringname: name,
          serviceID: serviceID,
          sessionTermName: sessionTerm);
    }
  }
}
