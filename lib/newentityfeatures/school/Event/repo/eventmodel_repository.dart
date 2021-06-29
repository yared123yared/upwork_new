import 'dart:convert';

import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/commonrepo/user_session_reg_repository.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import '../bloc/bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/attendance_model.dart';

class EvtModelRepositoryReturnData {
  List<AttendanceModel> itemlist;
  AttendanceModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  EvtModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class EvtModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();
  // UserSessionRegRepository _userRepository;

  Future<EventDataModel> loadData(LoadDataEvent event) async {
    final String userId = FirebaseAuth.instance.currentUser.uid;
    EventDataModel grerror = new EventDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      EventDataModel gr;
      gr = EventDataModel(
          sessionTerms: await _schoolRepo.lookup
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
          instructorData:
              await _schoolRepo.instructor.setInstructorScheduleData(
            serviceID: event.entityid,
            staffID: userId,
            // staffID: _userRepository.getUser().userID,
          ),
          loadButtonState: ButtonState.loading,
          submitButtonState: ButtonState.loading,
          evtdata: null);
      if (event.virtualRoom == null &&
          event.sessionTerm == null &&
          event.kind == null) {
        gr = EventDataModel(
            sessionTerms: await _schoolRepo.lookup
                .getSessionStringList(serviceID: event.entityid),
            grades: await _schoolRepo.lookup
                .getGradesList(serviceID: event.entityid),
            loadButtonState: ButtonState.idle,
            instructorData:
                await _schoolRepo.instructor.setInstructorScheduleData(
              serviceID: event.entityid,
              staffID: userId,
              // staffID: _userRepository.getUser().userID,
            ),
            submitButtonState: ButtonState.idle,
            evtdata: null);
      } else {
        gr = EventDataModel(
          sessionTerms: await _schoolRepo.lookup
              .getSessionStringList(serviceID: event.entityid),
          grades:
              await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.idle,
          instructorData:
              await _schoolRepo.instructor.setInstructorScheduleData(
            serviceID: event.entityid,
            staffID: userId,
            // staffID: _userRepository.getUser().userID,
          ),
          evtdata: event.isofferingindependent
              ? await OfferingsVrManagementGateway.getEventOFR(
                  serviceID: event.entityid,
                  offeringname: event.offeringname,
                  sessionTerm: event.sessionTerm,
                  dateTime: event.date,
                  kind: event.kind,
                )
              : await OfferingsVrManagementGateway.getEventVR(
                  serviceID: event.entityid,
                  virtualroomname: event.virtualRoom,
                  sessionTerm: event.sessionTerm,
                  dateTime: event.date,
                  kind: event.kind,
                ),
        );
      }
      gr.errortype = -1;

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<EventDataModel> submitData(SubmitDataEvent event) async {
    EventDataModel grerror = new EventDataModel();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      event.atttype == "vr"
          ? await OfferingsVrManagementGateway.submitEventVirtualRoom(
              mdata: event.eventdata,
              kind: event.kind,
              sessionTermName: event.sessionTerm,
              virtualroomname: event.virtualRoom,
              mdate: event.date,
              serviceID: event.entityid)
          : await OfferingsVrManagementGateway.submitEventOfr(
              mdata: event.eventdata,
              kind: event.kind,
              vrlist: event.vrlist,
              sessionTermName: event.sessionTerm,
              offeringname: event.offeringname,
              mdate: event.date,
              serviceID: event.entityid);

      EventDataModel gr = EventDataModel(
          grades:
              await _schoolRepo.lookup.getGradesList(serviceID: event.entityid),
          sessionTerms: await _schoolRepo.lookup
              .getSessionStringList(serviceID: event.entityid),
          instructorData:
              await _schoolRepo.instructor.setInstructorScheduleData(
            serviceID: event.entityid,
            staffID: null,
            // staffID: _userRepository.getUser().userID,
          ),
          loadButtonState: ButtonState.idle,
          submitButtonState: ButtonState.success,
          evtdata: event.eventdata);
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }
}

class EventDataModel {
  final List<String> grades;
  final List<String> sessionTerms;
  final ButtonState loadButtonState;
  final ButtonState submitButtonState;
  final InstructorOfferingDataModel instructorData;
  final String evtdata;

  EventDataModel({
    this.grades,
    this.sessionTerms,
    this.loadButtonState,
    this.submitButtonState,
    this.instructorData,
    this.evtdata,
    this.errortype,
    this.error,
  });

  int errortype;
  String error;
}
