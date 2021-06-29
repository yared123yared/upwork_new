import 'dart:convert';

import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/place.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';

import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';
import 'package:complex/newentityfeatures/Models/user_reg_payment_date.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:complex/newentityfeatures/gateway/user_registration_gateway.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';

class StudentBasicFormModelRepositoryReturnData {
  List<UserRegistrationModel> itemlist;
  UserRegistrationModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  StudentBasicFormModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class StudentBasicFormModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<StudentBasicFormModelRepositoryReturnData>
      getAllStudentBasicFormModels(String entitytype, String entityid) async {
    StudentBasicFormModelRepositoryReturnData myreturn =
        StudentBasicFormModelRepositoryReturnData();
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

  Future<StudentFormEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    StudentFormEntryData grerror = new StudentFormEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      int studentId = await _schoolRepo.getRegistrationModel(entityid);
      int formIndex = 1;
      List<Place> availablePlaces = await Place.places;
      // bool update;

      StudentFormEntryData gr = new StudentFormEntryData();
      gr.errortype = -1;
      gr.availablePlaces = availablePlaces;
      gr.formIndex = formIndex;
      gr.studentId = studentId;
      // gr.update
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<StudentBasicFormModelRepositoryReturnData>
      getStudentBasicFormModelWithOfferingSearch(String entitytype,
          String entityid, String sessionterm, String offeringgroup) async {
    StudentBasicFormModelRepositoryReturnData grerror =
        new StudentBasicFormModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<UserRegistrationModel> list =
          await _schoolRepo.getUserRegistrationList(serviceID: entityid);

      StudentBasicFormModelRepositoryReturnData gr =
          new StudentBasicFormModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<StudentBasicFormModelRepositoryReturnData> createStudentBasicFormModel(
      UserRegistrationModel item, String entitytype, String entityid) async {
    StudentBasicFormModelRepositoryReturnData myreturn =
        StudentBasicFormModelRepositoryReturnData();

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

    item.guardian1AppUserId = guardian1Id;
    item.guardian2appUserId = guardian2Id;
    item.appuserid = appuserid;

    await _schoolRepo.addUserReg(
      userReg: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StudentBasicFormModelRepositoryReturnData> updateStudentBasicFormModel(
      UserRegistrationModel item, String entitytype, String entityid) async {
    StudentBasicFormModelRepositoryReturnData myreturn =
        StudentBasicFormModelRepositoryReturnData();
    await UserRegistrationGateway.updateUserRegistration(
      userReg: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StudentBasicFormModelRepositoryReturnData>
      updateStudentBasicFormModelWithDiff(
          UserRegistrationModel newitem,
          UserRegistrationModel olditem,
          String entitytype,
          String entityid) async {
    return null;
  }

  Future<StudentBasicFormModelRepositoryReturnData>
      deleteStudentBasicFormModelWithData(UserRegistrationModel item,
          String entitytype, String entityid) async {
    StudentBasicFormModelRepositoryReturnData myreturn =
        StudentBasicFormModelRepositoryReturnData();

    await UserRegistrationGateway.removeUserRegistration(item, entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StudentBasicFormModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    StudentBasicFormModelRepositoryReturnData myreturn =
        StudentBasicFormModelRepositoryReturnData();

    List<UserRegistrationModel> list =
        await _schoolRepo.getUserRegistrationList(serviceID: entityid);

    myreturn.itemlist = list;
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<List<UserRegistrationModel>> getUserWithOneOf({
    String cardNum,
    String phone,
    String guardianPhone,
    String entitytype,
    String entityid,
  }) async {
    List<UserRegistrationModel> users =
        await _schoolRepo.getUserRegistrationList(
      serviceID: entityid,
    );

    List<UserRegistrationModel> filteredUsers = [];
    users.forEach((user) {
      if (user.idCardNum == cardNum ||
          user.guardian1phone == phone ||
          user.guardian2phone == phone) {
        filteredUsers.add(user);
      }
    });
/* 
    List<UserSessionRegModel> userSessions =
        await _schoolRepo.userSessionReg.getUserSessionReg(
      serviceID: entityid,
    );

    List<UserSessionRegModel> filteredSessions = [];
    userSessions.forEach((session) {
      if (session.idCardNum == cardNum) {
        filteredSessions.add(session);
      }
    });

    UserSessionRegModel userSession =
        await _schoolRepo.userSessionReg.getUserSessionRegModel(
      serviceID: entityid,
      sessionterm: sessionterm,
      idcardnum: cardNum,
    );
 */
/* 
    // List<UserRegPaymentModel>
    List<UserRegFeeCollectionModel> userFees =
        await _schoolRepo.getFeeICollection(
      serviceID: entityid,
    );
    List<UserRegFeeCollectionModel> filteredFees = [];
    userFees.forEach((feeItem) {
      if (feeItem.idCardNum == cardNum && feeItem.sessionTerm == cardNum) {
        filteredFees.add(feeItem);
      }
    });
 */
    // UserRegistrationModel user = await _schoolRepo.getUserWithOneOf(
    //   entityid,
    //   cardNum: cardNum,
    //   phone: phone,
    //   guardianPhone: guardianPhone,
    // );

    return filteredUsers;
  }
}

class StudentFormEntryData {
  int formIndex;
  bool update;
  List<Place> availablePlaces;
  int studentId;
  int errortype;
  String error;
  StudentFormEntryData({
    this.formIndex,
    this.update,
    this.studentId,
    this.availablePlaces,
    this.errortype,
    this.error,
  });
}
