import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';

import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class SessionRegistrationRepositoryReturnData {
  List<UserSessionRegModel> itemlist;
  UserSessionRegModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  SessionRegistrationRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class SessionRegistrationRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<SessionRegistrationRepositoryReturnData> getAllSessionRegistrations(
      String entitytype, String entityid) async {
    SessionRegistrationRepositoryReturnData myreturn =
        SessionRegistrationRepositoryReturnData();
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

  Future<SessionRegistrationEntryData> getItemFormNewEntryData(
    String entitytype,
    String entityid,
    String sessionTerm,
    String cardNum,
  ) async {
    SessionRegistrationEntryData grerror = SessionRegistrationEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      bool update = false;

      List<VirtualRoomModelNewFormat> virtualRoomList =
          await _schoolRepo.getVirtualRoomsList(serviceID: entityid);

      List<FeePlanModel> feePlanList =
          await _schoolRepo.feePlans.getFeePlanList(serviceID: entityid);

      List<PaymentPeriodInfo> paymentPeriods = await _schoolRepo.lookup
          .getPaymentPeriodInfoList(serviceID: entityid);

      List<OfferingWeeklySchedule> offeringScheduleList =
          await _schoolRepo.getOfferingWeekly(serviceID: entityid);

      List<String> activeSessions =
          await _schoolRepo.lookup.getSessionStringList(serviceID: entityid);

      Future<List<OfferingModelGroup>> Function(String) offeringModelGroup =
          (String grade) async => await _schoolRepo.getListOfOfferingModelGroup(
                serviceID: entityid,
                grade: grade,
              );
      // List all = await _schoolRepo.userSessionReg
      //     .getUserSessionReg(serviceID: entityid);
      UserSessionRegModel userSessionRegModel =
          await _schoolRepo.userSessionReg.getUserSessionRegModel(
        serviceID: entityid,
        sessionterm: sessionTerm,
        idcardnum: cardNum,
      );

      if (userSessionRegModel != null) {
        update = true;
      }

      SessionRegistrationEntryData gr = SessionRegistrationEntryData();
      gr.errortype = -1;
      gr.update = update;
      gr.virtualRoomList = virtualRoomList;
      gr.feePlanList = feePlanList;
      gr.paymentPeriods = paymentPeriods;
      gr.offeringScheduleList = offeringScheduleList;
      gr.activeSessions = activeSessions;
      gr.offeringModelGroup = offeringModelGroup;
      gr.userSessionRegModel = userSessionRegModel;

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<SessionRegistrationRepositoryReturnData>
      getSessionRegistrationWithOfferingSearch(String entitytype,
          String entityid, String sessionterm, String offeringgroup) async {
    SessionRegistrationRepositoryReturnData grerror =
        new SessionRegistrationRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      UserSessionRegModel item =
          await _schoolRepo.userSessionReg.getUserSessionRegModel(
        serviceID: entityid,
        sessionterm: sessionterm,
        idcardnum: null,
      );
      SessionRegistrationRepositoryReturnData gr =
          new SessionRegistrationRepositoryReturnData();
      gr.errortype = -1;
      gr.item = item;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<SessionRegistrationRepositoryReturnData> createSessionRegistration(
      UserSessionRegModel item, String entitytype, String entityid) async {
    SessionRegistrationRepositoryReturnData myreturn =
        SessionRegistrationRepositoryReturnData();
    await _schoolRepo.userSessionReg.addUserSessionRegistration(
      userSession: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<SessionRegistrationRepositoryReturnData> updateSessionRegistration(
      UserSessionRegModel item, String entitytype, String entityid) async {
    return null;
  }

  Future<SessionRegistrationRepositoryReturnData>
      updateSessionRegistrationWithDiff(
          UserSessionRegModel newitem,
          UserSessionRegModel olditem,
          String entitytype,
          String entityid) async {
    SessionRegistrationRepositoryReturnData myreturn =
        SessionRegistrationRepositoryReturnData();
    await _schoolRepo.userSessionReg.updateUserSessionRegistration(
      oldData: olditem,
      newData: newitem,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<SessionRegistrationRepositoryReturnData>
      deleteSessionRegistrationWithData(
          UserSessionRegModel item, String entitytype, String entityid) async {
    SessionRegistrationRepositoryReturnData myreturn =
        SessionRegistrationRepositoryReturnData();
    myreturn.itemlist =
        await _schoolRepo.userSessionReg.closeUserSessionRegistration(
      userSession: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<SessionRegistrationRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    SessionRegistrationRepositoryReturnData myreturn =
        SessionRegistrationRepositoryReturnData();
    myreturn.itemlist = await _schoolRepo.userSessionReg.getUserSessionReg(
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<List<UserSessionRegModel>> getUserWithOneOf({
    String cardNum,
    String phone,
    String guardianPhone,
    String entitytype,
    String entityid,
  }) async {
    List<UserSessionRegModel> users =
        await _schoolRepo.userSessionReg.getUserSessionReg(
      serviceID: entityid,
    );

    List<UserSessionRegModel> usersWithId = [];
    users.forEach((user) {
      if (user.idCardNum == cardNum) {
        usersWithId.add(user);
      }
    });

    return usersWithId;
  }
}

class SessionRegistrationEntryData {
  bool update;
  List<VirtualRoomModelNewFormat> virtualRoomList;
  List<FeePlanModel> feePlanList;
  List<PaymentPeriodInfo> paymentPeriods;
  List<OfferingWeeklySchedule> offeringScheduleList;
  List<String> activeSessions;
  Future<List<OfferingModelGroup>> Function(String) offeringModelGroup;
  UserSessionRegModel userSessionRegModel;

  int errortype;
  String error;
}
