import 'package:complex/common/model/button_state.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class OfferingWeeklyScheduleRepositoryReturnData {
  List<OfferingWeeklySchedule> itemlist;
  OfferingWeeklySchedule item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  OfferingWeeklyScheduleRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class OfferingWeeklyScheduleRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      getAllOfferingWeeklySchedules(String entitytype, String entityid) async {
    OfferingWeeklyScheduleRepositoryReturnData myreturn =
        OfferingWeeklyScheduleRepositoryReturnData();
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

  Future<OfferingWeeklyDataEntry> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    OfferingWeeklyDataEntry grerror = OfferingWeeklyDataEntry();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      Future<List<OfferingModelGroup>> Function(String) _offeringModelGroup =
          (String grade) async => await _schoolRepo.getKindListForGrade(
                grade: grade,
                entitytype: 'SERVICEPROVIDERINFO',
                entityid: entityid,
              );

      List<ClassPeriodInfo> periods =
          _schoolRepo.getClassPeriodInfoList(serviceID: entityid);

      if (periods == null) {
        await _schoolRepo.setClassPeriodList(serviceID: entityid);
        periods = _schoolRepo.getClassPeriodInfoList(
          serviceID: entityid,
        );
      }

      ///this function will be used to fill the primary and secondary owner fields
      getAssignment(String grade) =>
          _schoolRepo.get_ListOfAssignemntOfferedByTeacher(
            serviceID: entityid,
            grade: grade,
          );
      //
      //Please put your code here
      OfferingWeeklyDataEntry gr = OfferingWeeklyDataEntry(
        buttonstate: ButtonState.idle,
        offeringsScheduleModel: null,
        rooms: await _schoolRepo.lookup
            .getRoomInfoList(serviceID: entityid)
            .then((v) => v.map((e) => e.roomName).toList()),
        schoolOwner: await _schoolRepo.getSchoolOwner(
          entityid: entityid,
          staffcategory: 'instructor',
          entitytype: 'SERVICEPROVIDERINFO',
        ),
        grades: await _schoolRepo.getListOfGrades(serviceID: entityid),
        getOfferingGroupModel: _offeringModelGroup,
        periods: periods,
        errortype: -1,
        // getAssignmentsWithGrade: getAssignment,
      );

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      getOfferingWeeklyScheduleWithOfferingSearch(String entitytype,
          String entityid, String sessionterm, String offeringgroup) async {
    OfferingWeeklyScheduleRepositoryReturnData grerror =
        new OfferingWeeklyScheduleRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      OfferingWeeklyScheduleRepositoryReturnData gr =
          new OfferingWeeklyScheduleRepositoryReturnData();
      gr = await getOfferingWeeklyScheduleWithOfferingSearch(
        entitytype,
        entityid,
        sessionterm,
        offeringgroup,
      );
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      createOfferingWeeklySchedule(OfferingWeeklySchedule item,
          String entitytype, String entityid) async {
    OfferingWeeklyScheduleRepositoryReturnData myreturn =
        OfferingWeeklyScheduleRepositoryReturnData();
    await _schoolRepo.getOfferingWeeklyScheduleModel(
      data: item,
      actiontype: "add",
      entitytype: entitytype,
      entityid: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      getOfferingScheduleWithGradeSearch(
    String entityid,
    String grade,
    // String sessionterm,
    // String offeringgroup,
  ) async {
    OfferingWeeklyScheduleRepositoryReturnData grerror =
        new OfferingWeeklyScheduleRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";
    try {
      Map<String, List<OfferingWeeklySchedule>> list =
          await _schoolRepo.getOfferingWeeklyForGrade(
        grade: grade,
        entityid: entityid,
      );

      OfferingWeeklyScheduleRepositoryReturnData gr =
          new OfferingWeeklyScheduleRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list[grade];
      return gr;
    } catch (ex) {
      print("err $ex");
    }
    return grerror;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      updateOfferingWeeklySchedule(OfferingWeeklySchedule item,
          String entitytype, String entityid) async {
    OfferingWeeklyScheduleRepositoryReturnData myreturn =
        OfferingWeeklyScheduleRepositoryReturnData();
    await _schoolRepo.getOfferingWeeklyScheduleModel(
      data: item,
      actiontype: "update",
      entitytype: entitytype,
      entityid: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      updateOfferingWeeklyScheduleWithDiff(
          OfferingWeeklySchedule newitem,
          OfferingWeeklySchedule olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData>
      deleteOfferingWeeklyScheduleWithData(OfferingWeeklySchedule item,
          String entitytype, String entityid) async {
    return null;
  }

  Future<OfferingWeeklyScheduleRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    OfferingWeeklyScheduleRepositoryReturnData myreturn =
        OfferingWeeklyScheduleRepositoryReturnData();

    List list = await _schoolRepo.getOfferingWeekly(serviceID: entityid);

    myreturn.itemlist = list;
    myreturn.errortype = -1;
    return myreturn;
  }
}

class OfferingWeeklyDataEntry {
  ButtonState buttonstate;
  Future<List<OfferingModelGroup>> Function(String) getOfferingGroupModel;
  OfferingWeeklySchedule offeringsScheduleModel;
  List<String> grades;
  List<String> rooms;
  List<SchoolOwner> schoolOwner;
  List<ClassPeriodInfo> periods;

  int errortype;
  String error;

  OfferingWeeklyDataEntry({
    this.buttonstate,
    this.getOfferingGroupModel,
    this.offeringsScheduleModel,
    this.grades,
    this.rooms,
    this.schoolOwner,
    this.periods,
    this.error,
    this.errortype,
  });
}
