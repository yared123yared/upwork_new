import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/place.dart';
import 'package:complex/data/models/request/auth_request/signup_request.dart';
import 'package:complex/data/models/response/general_response.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';

import 'package:complex/newentityfeatures/gateway/user_registration_gateway.dart';
//import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
//import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
//import 'package:logger/logger.dart';

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

  Future<StudentFormEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    StudentFormEntryData grerror = StudentFormEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      int studentId = await UserRegistrationGateway.getRegistrationNumber(entityid);
      int formIndex = 1;
      List<Place> availablePlaces = await Place.places;
      // bool update;

      StudentFormEntryData gr = StudentFormEntryData();
      gr.errortype = -1;
      gr.availablePlaces = availablePlaces;
      gr.formIndex = formIndex;
      gr.studentId = studentId;
      // gr.update
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
        requestType: "CHECKANDCREATE");

    SignUpRequest _signUpModel2 = SignUpRequest(
        email: item.guardian2email,
        username: item.guardian2name,
        phoneNum: item.guardian2phone,
        password: "defultPassword",
        requestType: "CHECKANDCREATE");

    var authrepository = HelpUtil.getAuthRepositoryl();
    GeneralResponseWithUserId gr =
        await authrepository.createUserForRequest_for(request: _signUpModel);
    if (gr.success) guardian1Id = gr.userid;
    gr = await authrepository.createUserForRequest_for(request: _signUpModel2);
    if (gr.success) guardian2Id = gr.userid;

    if (item.email != null) {
      SignUpRequest _signUpModel3 = SignUpRequest(
          email: item.email,
          username: item.name,
          phoneNum: null,
          password: "defultPassword",
          requestType: "CHECKANDCREATE");
      gr =
          await authrepository.createUserForRequest_for(request: _signUpModel3);
      if (gr.success) appuserid = gr.userid;
    }

    item.guardian1AppUserId = guardian1Id;
    item.guardian2appUserId = guardian2Id;
    item.appuserid = appuserid;

    await UserRegistrationGateway.addNewUserRegistration(
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

    List<UserRegistrationModel> list =[];


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
        await UserRegistrationGateway.getUserWithOneOf(serviceID:entityid,cardNum: cardNum,phone:phone,guardianPhone:guardianPhone   );

    return users;
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
