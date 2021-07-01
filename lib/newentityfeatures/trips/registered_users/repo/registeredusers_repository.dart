import 'package:complex/common/helputil.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';

import 'package:complex/newentityfeatures/trips/repository/repo/registered_user_repository.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/trips/model/models/registered_user.dart';

class RegisteredUsersRepositoryReturnData {
  List<RegisteredUser> itemlist;
  RegisteredUser item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RegisteredUsersRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class RegisteredUsersRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<RegisteredUsersRepositoryReturnData> getAllRegisteredUserss(
      String entitytype, String entityid) async {
    RegisteredUsersRepositoryReturnData myreturn =
        RegisteredUsersRepositoryReturnData();
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
      List<String> grades = await _schoolRepo.lookup.getGradesList(
        serviceID: entityid,
      );

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
      gr.grades = grades;

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

  Future<RegisteredUsersRepositoryReturnData>
      getRegisteredUsersWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    RegisteredUsersRepositoryReturnData grerror =
        new RegisteredUsersRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      RegisteredUsersRepositoryReturnData gr =
          new RegisteredUsersRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<RegisteredUsersRepositoryReturnData> createRegisteredUsers(
      RegisteredUser item, String entitytype, String entityid) async {
    RegisteredUsersRepositoryReturnData myreturn =
        RegisteredUsersRepositoryReturnData();
    String guardian1Id = null;
    String guardian2Id = null;
    String appuserid = null;

    SignUpRequest _signUpModel = SignUpRequest(
        email: item.guardian1email,
        username: item.guardian1name,
        phoneNum: item.guardian1phone,
        password: "defultPassword",
        requestType: "PROFILE");

    SignUpRequest _signUpModel2 = SignUpRequest(
        email: item.guardian2email,
        username: item.guardian2name,
        phoneNum: item.guardian2phone,
        password: "defultPassword",
        requestType: "PROFILE");

    var authrepository = HelpUtil.getAuthRepositoryl();
    GeneralResponse gr =
        await authrepository.createUserForRequest(request: _signUpModel);
    if (gr.success) guardian1Id = _signUpModel.userId;
    gr = await authrepository.createUserForRequest(request: _signUpModel2);
    if (gr.success) guardian2Id = _signUpModel.userId;

    if (item.email != null) {
      SignUpRequest _signUpModel3 = SignUpRequest(
        email: item.email,
        username: item.name,
        phoneNum: null,
        password: "defultPassword",
      );
      gr = await authrepository.createUserForRequest(request: _signUpModel3);
      if (gr.success) appuserid = _signUpModel.userId;
    }

    var user = item.copyWith(
      guardian1id: guardian1Id,
      guardian2id: guardian2Id,
      userId: appuserid,
    );

    await RegisteredUserRepo.registerUser(user: user, serviceId: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegisteredUsersRepositoryReturnData> updateRegisteredUsers(
      RegisteredUser item, String entitytype, String entityid) async {
    RegisteredUsersRepositoryReturnData myreturn =
        RegisteredUsersRepositoryReturnData();
    String guardian1Id = null;
    String guardian2Id = null;
    String appuserid = null;

    SignUpRequest _signUpModel = SignUpRequest(
        email: item.guardian1email,
        username: item.guardian1name,
        phoneNum: item.guardian1phone,
        password: "defultPassword",
        requestType: "PROFILE");

    SignUpRequest _signUpModel2 = SignUpRequest(
        email: item.guardian2email,
        username: item.guardian2name,
        phoneNum: item.guardian2phone,
        password: "defultPassword",
        requestType: "PROFILE");

    var authrepository = HelpUtil.getAuthRepositoryl();
    GeneralResponse gr =
        await authrepository.createUserForRequest(request: _signUpModel);
    if (gr.success) guardian1Id = _signUpModel.userId;
    gr = await authrepository.createUserForRequest(request: _signUpModel2);
    if (gr.success) guardian2Id = _signUpModel.userId;

    if (item.email != null) {
      SignUpRequest _signUpModel3 = SignUpRequest(
        email: item.email,
        username: item.name,
        phoneNum: null,
        password: "defultPassword",
      );
      gr = await authrepository.createUserForRequest(request: _signUpModel3);
      if (gr.success) appuserid = _signUpModel.userId;
    }

    var user = item.copyWith(
      guardian1id: guardian1Id,
      guardian2id: guardian2Id,
      userId: appuserid,
    );

    await RegisteredUserRepo.registerUser(
      user: user,
      serviceId: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegisteredUsersRepositoryReturnData> updateRegisteredUsersWithDiff(
      RegisteredUser newitem,
      RegisteredUser olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<RegisteredUsersRepositoryReturnData> deleteRegisteredUsersWithData(
      RegisteredUser item, String entitytype, String entityid) async {
    RegisteredUsersRepositoryReturnData myreturn =
        RegisteredUsersRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegisteredUsersRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    RegisteredUsersRepositoryReturnData myreturn =
        RegisteredUsersRepositoryReturnData();
    myreturn.itemlist = await RegisteredUserRepo.registeredUser(
      entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }
}
