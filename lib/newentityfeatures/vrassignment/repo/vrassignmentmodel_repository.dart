import 'dart:convert';

import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart'
    as asmyvr;
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class VrAssignmentModelRepositoryReturnData {
  List<asmyvr.VrAssignmentModel> itemlist;
  asmyvr.VrAssignmentModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  VrAssignmentModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class VrAssignmentModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<VrAssignmentModelRepositoryReturnData> getAllVrAssignmentModels(
      String entitytype, String entityid) async {
    VrAssignmentModelRepositoryReturnData myreturn =
        VrAssignmentModelRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<GenericLookUpDataUsedForRegistration> getListFormPreLoadData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> gradelist =
          await _schoolRepo.lookup.getGradesList(serviceID: entityid);
      List<String> sessiontermlist =
          await _schoolRepo.lookup.getSessionStringList(
        serviceID: entityid,
      );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = gradelist;
      gr.sessionterm = sessiontermlist;
      gr.offeringModelGroupfunc = HelperRepository.offeringModelGroupfunc;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<GenericLookUpDataUsedForRegistration> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> gradelist =
          await _schoolRepo.lookup.getGradesList(serviceID: entityid);
      List<String> sessiontermlist =
          await _schoolRepo.lookup.getSessionStringList(
        serviceID: entityid,
      );

      List<ExamTermInfo> examtermlist =
          await _schoolRepo.lookup.getExamTermsList(
        serviceID: entityid,
      );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = gradelist;
      gr.sessionterm = sessiontermlist;
      gr.examtermlist = examtermlist;
      gr.assignmentModellistbyofferinggroupfunc =
          HelperRepository.assignmentModellistbyofferinggroupfunc;
      gr.teacherofferingassignmentlistbyGrade =
          HelperRepository.teacherOfferingsAssignmentllistbyofferinggroupfunc;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VrAssignmentModelRepositoryReturnData>
      getVrAssignmentModelWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    VrAssignmentModelRepositoryReturnData grerror =
        new VrAssignmentModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<asmyvr.VrAssignmentModel> vrlist =
          await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
              serviceID: entityid,
              sessionTerm: sessionterm,
              offering: offeringgroup);
      //Please put your code here
      VrAssignmentModelRepositoryReturnData gr =
          new VrAssignmentModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = vrlist;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VrAssignmentModelRepositoryReturnData> createVrAssignmentModel(
      asmyvr.VrAssignmentModel item, String entitytype, String entityid) async {
    VrAssignmentModelRepositoryReturnData myreturn =
        VrAssignmentModelRepositoryReturnData();
    print("assignment calling from repository");

    //Please put your code here
    await _schoolRepo.assignment.attachAssignment(
      vrAssignmentModel: item,
      serviceID: entityid,
    );
    print("assignment returning error from repository");

    return myreturn;
  }

  Future<VrAssignmentModelRepositoryReturnData> updateVrAssignmentModel(
      asmyvr.VrAssignmentModel item, String entitytype, String entityid) async {
    await _schoolRepo.assignment.updateAttachedAssignment(
      vrAssignmentModel: item,
      serviceID: entityid,
    );
    return null;
  }

  Future<VrAssignmentModelRepositoryReturnData> updateVrAssignmentModelWithDiff(
      asmyvr.VrAssignmentModel newitem,
      asmyvr.VrAssignmentModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<VrAssignmentModelRepositoryReturnData> deleteVrAssignmentModelWithData(
      asmyvr.VrAssignmentModel item, String entitytype, String entityid) async {
    return null;
  }

  Future<VrAssignmentModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    VrAssignmentModelRepositoryReturnData myreturn =
        VrAssignmentModelRepositoryReturnData();
    myreturn.errortype = -1;
    //Please put your code here
    return myreturn;
  }
}
