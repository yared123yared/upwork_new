import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class TeacherAssignmentModelRepositoryReturnData {
  List<TeacherOfferingsAssignment> itemlist;
  TeacherOfferingsAssignment item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  TeacherAssignmentModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class TeacherAssignmentModelRepository {


  Future<TeacherAssignmentModelRepositoryReturnData>
      getAllTeacherAssignmentModels(String entitytype, String entityid) async {
    TeacherAssignmentModelRepositoryReturnData myreturn =
        TeacherAssignmentModelRepositoryReturnData();
    //Please put your code here

    myreturn.errortype = -1;
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
          await LookupGateway.getGradeList(serviceID: entityid);
      List<String> sessiontermlist =
          await SessionTermGateway.getSessionStringList(
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

  Future<TeacherEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    TeacherEntryData grerror = TeacherEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> grades = await LookupGateway.getGradeList(
        serviceID: entityid,
      );

      List<SchoolOwner> schoolOwners = await OfferingsVrManagementGateway.getListOfStaff(
        entityid: entityid,
        entitytype: entitytype,
        staffcategory: 'instructor',
      );

      Future<List<String>> Function(String) offeringModelGroup =
          (String grade) async => await OfferingsVrManagementGateway.getKindListForGrade(
                grade: grade,
                entitytype: entitytype,
                entityid: entityid,
              )
              .then(
                (value) => value.map((e) => e.offeringgroupid).toList(),
              );

      Future<List<String>> Function(String grade) virtualRooms =
          (String grade) async => await OfferingsVrManagementGateway.getVirtualRoomsListForGrade(
                entityid: entityid,
                entitytype: entitytype,
                grade: grade,
              );

      //Please put your code here
      TeacherEntryData gr = TeacherEntryData();
      gr.errortype = -1;
      gr.grades = grades;
      gr.schoolOwners = schoolOwners;
      gr.offeringModelGroup = offeringModelGroup;
      gr.virtualRooms = virtualRooms;

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<TeacherAssignmentModelRepositoryReturnData>
      getTeacherAssignmentModelWithOfferingSearch(
          String entitytype, String entityid, String grade) async {
    TeacherAssignmentModelRepositoryReturnData grerror =
        new TeacherAssignmentModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<TeacherOfferingsAssignment> list =
          await OfferingsVrManagementGateway
              .getTeacherOfferingsAssignmentList(
         entityid,
         grade,
      );
      TeacherAssignmentModelRepositoryReturnData gr =
          new TeacherAssignmentModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<TeacherAssignmentModelRepositoryReturnData>
      createTeacherAssignmentModel(TeacherOfferingsAssignment item,
          String entitytype, String entityid) async {
    TeacherAssignmentModelRepositoryReturnData myreturn =
        TeacherAssignmentModelRepositoryReturnData();
    await OfferingsVrManagementGateway.createTeacherOfferingsAssignment(
      model: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TeacherAssignmentModelRepositoryReturnData>
      updateTeacherAssignmentModel(TeacherOfferingsAssignment item,
          String entitytype, String entityid) async {
    TeacherAssignmentModelRepositoryReturnData myreturn =
        TeacherAssignmentModelRepositoryReturnData();
    await OfferingsVrManagementGateway.updateOfferingSchedule(
      oldData: item,
      newData: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TeacherAssignmentModelRepositoryReturnData>
      updateTeacherAssignmentModelWithDiff(
          TeacherOfferingsAssignment newitem,
          TeacherOfferingsAssignment olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<TeacherAssignmentModelRepositoryReturnData>
      deleteTeacherAssignmentModelWithData(TeacherOfferingsAssignment item,
          String entitytype, String entityid) async {
    TeacherAssignmentModelRepositoryReturnData myreturn =
        TeacherAssignmentModelRepositoryReturnData();
    await OfferingsVrManagementGateway.deleteOfferingSchedule(
      model: item,
      serviceID: entityid,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<TeacherAssignmentModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    TeacherAssignmentModelRepositoryReturnData myreturn =
        TeacherAssignmentModelRepositoryReturnData();

    myreturn.itemlist =
        await OfferingsVrManagementGateway
            .getTeacherOfferingsAssignmentList(
       entityid,
       null,
    );

    myreturn.errortype = -1;
    return myreturn;
  }
}

class TeacherEntryData {
  List<String> grades;
  List<SchoolOwner> schoolOwners;
  Future<List<String>> Function(String) offeringModelGroup;
  Future<List<String>> Function(String grade) virtualRooms;

  int errortype;
  String error;
}
