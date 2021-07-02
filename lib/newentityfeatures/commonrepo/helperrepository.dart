import 'dart:async';

import 'package:get/get_core/src/get_main.dart';

import 'package:get/get.dart';

import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';

import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';

class HelperRepository {
  static NewSchoolRepository _schoolRepo = Get.find();

  static Future<List<String>> offeringModelGroupfunc(
      String grade, String entityid) async {
    try {
      return await _schoolRepo
          .getKindListForGrade(
            grade: grade,
            entitytype: "SERVICEPROVIDERINFO",
            entityid: entityid,
          )
          .then(
            (value) => value.map((e) => e.offeringgroupid).toList(),
          );
    } catch (e) {
      print(e);
    }
  }

  static Future<List<VirtualRoomModelNewFormat>> virtualroomlistfunc(
      String grade, String entityid) async {
    try {
      return await _schoolRepo.getVirtualRoomsList(
        grade: grade,
        serviceID: entityid,
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<List<AssignmentModel>> assignmentModellistbyofferinggroupfunc(
      String offeringgroupname, String entityid) async {
    try {
      return await _schoolRepo.assignment
          .getPublishedAssignmentsByOfferingGroup(
        offeringgroupname: offeringgroupname,
        serviceID: entityid,
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<List<TeacherOfferingsAssignment>>
      teacherOfferingsAssignmentllistbyofferinggroupfunc(
          String grade, String entityid) async {
    try {
      return await _schoolRepo.getTeacherOfferingsAssignmentListByGrade(
        grade: grade,
        serviceID: entityid,
      );
    } catch (e) {
      print(e);
    }
  }
}
