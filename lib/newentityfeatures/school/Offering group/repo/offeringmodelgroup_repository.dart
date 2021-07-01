import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class OfferingModelGroupRepositoryReturnData {
  List<OfferingModelGroup> itemlist;
  OfferingModelGroup item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  OfferingModelGroupRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class OfferingModelGroupRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<OfferingModelGroupRepositoryReturnData> getAllOfferingModelGroups(
      String entitytype, String entityid) async {
    OfferingModelGroupRepositoryReturnData myreturn =
        OfferingModelGroupRepositoryReturnData();
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

  // Future<List<String>> getVirtualRoomsINGrade(String grade) {
  //   return _schoolRepo.getListOfVirtualRoomByGrade(
  //     entityid: _serviceID,
  //     entitytype: "SERVICEPROVIDERINFO",
  //     grade: grade,
  //   );
  // }

  Future<OfferingDataEntry> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    OfferingDataEntry grerror = OfferingDataEntry();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> grades =
          await _schoolRepo.lookup.getGradesList(serviceID: entityid);
      List<String> subject =
          await _schoolRepo.getListOfSubject(serviceID: entityid);

      //Please put your code here
      OfferingDataEntry gr = OfferingDataEntry(
        // buttonState: ButtonState.idle,
        // : event.offeringModelGroup,
        grades: grades,
        groups: (String grade) {
          return _schoolRepo.getListOfVirtualRoomByGrade(
            entityid: entityid,
            entitytype: "SERVICEPROVIDERINFO",
            grade: grade,
          );
        },
        subject: subject,
        errortype: -1,
      );
      // gr.grades = grades;
      // gr.offeringModelGroupfunc = helperrepository.offeringModelGroupfunc;
      // gr.subjectlist = subject;
      // gr.assignmentModellistbyofferinggroupfunc =
      //     helperrepository.assignmentModellistbyofferinggroupfunc;
      // gr.teacherofferingassignmentlistbyGrade =
      //     helperrepository.teacherOfferingsAssignmentllistbyofferinggroupfunc;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<OfferingModelGroupRepositoryReturnData>
      getOfferingModelGroupWithOfferingSearch(
    String entitytype,
    String entityid,
    String grade,
    // String sessionterm,
    // String offeringgroup,
  ) async {
    OfferingModelGroupRepositoryReturnData grerror =
        new OfferingModelGroupRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";
    try {
      List<OfferingModelGroup> list = await _schoolRepo.getKindListForGrade(
        grade: grade,
        entitytype: entitytype,
        entityid: entityid,
      );

      OfferingModelGroupRepositoryReturnData gr =
          new OfferingModelGroupRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {
      print("err $ex");
    }
    return grerror;
  }

  Future<OfferingModelGroupRepositoryReturnData> createOfferingModelGroup(
      OfferingModelGroup item, String entitytype, String entityid) async {
    OfferingModelGroupRepositoryReturnData myreturn =
        OfferingModelGroupRepositoryReturnData();
    await _schoolRepo.getOfferingModel(
      entityid: entityid,
      entitytype: entitytype,
      actiontype: "add",
      data: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<OfferingModelGroupRepositoryReturnData> updateOfferingModelGroup(
      OfferingModelGroup item, String entitytype, String entityid) async {
    OfferingModelGroupRepositoryReturnData myreturn =
        OfferingModelGroupRepositoryReturnData();
    await _schoolRepo.getOfferingModel(
      entityid: entityid,
      entitytype: entitytype,
      actiontype: "update",
      data: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<OfferingModelGroupRepositoryReturnData>
      updateOfferingModelGroupWithDiff(
          OfferingModelGroup newitem,
          OfferingModelGroup olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<OfferingModelGroupRepositoryReturnData>
      deleteOfferingModelGroupWithData(
          OfferingModelGroup item, String entitytype, String entityid) async {
    return null;
  }

  Future<OfferingModelGroupRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    OfferingModelGroupRepositoryReturnData myreturn =
        OfferingModelGroupRepositoryReturnData();

    myreturn.itemlist = await _schoolRepo.getListOfOfferingModelGroup(
      serviceID: entityid,
      grade: null,
    );
    myreturn.errortype = -1;
    return myreturn;
  }
}

class OfferingDataEntry {
  String detailstype; //create or update
  String entityid;
  String entitytype;
  List<String> grades;
  Future<List<String>> Function(String) groups;
  List<String> subject;
  // final ButtonState btnState;

  int errortype;
  String error;

  OfferingDataEntry({
    this.entityid,
    this.entitytype,
    this.detailstype,
    this.grades,
    this.groups,
    this.subject,
    this.errortype,
    this.error,
    // @required this.btnState,
  });
}
