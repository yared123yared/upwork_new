import 'dart:convert';

import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/gateway/complex_staff_gateway.dart';
import 'package:complex/newentityfeatures/gateway/complex_staff_gateway.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/Models/tempmodelforcomplex.dart';

// import 'package:complex/entity/model/entity_roles.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

// import '../model/service_request_model.dart';
import 'package:complex/newentityfeatures/Models/service_request_model.dart';

class ServiceRequestModelRepositoryReturnData {
  List<ServiceRequestModel> itemlist;
  ServiceRequestModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  List<String> unitlist;
  List<SchoolOwner> stafflist;
  List<String> buildings;
  List<String> roles;
  UserModel user;
  bool isStaff;
  bool haveAccess;
  var btnState;
  OccupiedUnitLookupModel oul;

  ServiceRequestModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class ServiceRequestModelRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();
  static FirebaseMessaging _firebaseMessaging=FirebaseMessaging.instance;

  Future<ServiceRequestModelRepositoryReturnData> getAllServiceRequestModels(
      String entitytype, String entityid) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();


    myreturn.oul = await _complexRepository.getOccupiedUnits(
      entitytype: entitytype,
      entityid: entityid,
    );
    // List<String> role = _complexModel.stringRoles;
    List<ServiceRequestModel> services =
        await _complexRepository.getAllActiveServiceRequestList(
      entitytype: entitytype,
      entityid: entityid,
      userModel: _user,
    );


    myreturn.itemlist = services;



    myreturn.errortype = -1;

    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData>
      getAllServiceRequestModelsForStaffId(String entitytype, String entityid,
          int originType, String staffid) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();

    List<String> roles;

    // List<String> role = _complexModel.stringRoles;
    List<ServiceRequestModel> services =
        await _complexRepository.getServiceRequestStaffSelf(
      entitytype: entitytype,
      entityid: entityid,
      userid: staffid,
    );
    List<ServiceRequestModel> filteredServices = [];

    myreturn.itemlist = services;

    // myreturn.itemlist = await _complexRepository.getServiceRequestList(
    //   complexID: entityid,
    // );

    myreturn.errortype = -1;

    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData>
      getAllServiceRequestModelsForListOfUnits(
          String entitytype,
          String entityid,
          int originType,
          List<String> residentunitlist) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();

    List<String> roles;

    // List<String> role = _complexModel.stringRoles;
    List<ServiceRequestModel> services =
        await _complexRepository.getAllServiceRequestModelsForListOfUnits(
      entitytype: entitytype,
      entityid: entityid,
      residentunitlist: residentunitlist,
    );
    List<ServiceRequestModel> filteredServices = [];

    myreturn.itemlist = services;

    // myreturn.itemlist = await _complexRepository.getServiceRequestList(
    //   complexID: entityid,
    // );

    myreturn.errortype = -1;

    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData> createServiceRequestModel(
      ServiceRequestModel item, String entitytype, String entityid) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();

    String _fcmToken = await _firebaseMessaging.getToken();

    await _complexRepository.addNewServiceRequest(
      fcmToken: _fcmToken,
      serviceRequest: item,
      entitytype: entitytype,
      entityid: entityid,
      roletype: item.requesterType,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData> updateServiceRequestModel(
      ServiceRequestModel item, String entitytype, String entityid) async {
    return null;
  }

  Future<ServiceRequestModelRepositoryReturnData>
      updateServiceRequestModelWithDiff(
          ServiceRequestModel newitem,
          ServiceRequestModel olditem,
          String entitytype,
          String entityid) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();

    await _complexRepository.updateServiceRequest(
      newRequest: newitem,
      oldRequest: olditem,
      user: _user,
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
    );
    // await _complexRepository.setServiceRequestList(complexID: entityid);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData>
      deleteServiceRequestModelWithData(
          ServiceRequestModel item, String entitytype, String entityid) async {
    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();
    await _complexRepository.deleteServiceRequest(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      serviceRequest: item,
    );
    // await _complexRepository.setServiceRequestList(complexID: entityid);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<ServiceRequestModelRepositoryReturnData> getInitialDataList(
      String entitytype,
      String entityid,
      ) async {


    ServiceRequestModelRepositoryReturnData myreturn =
        ServiceRequestModelRepositoryReturnData();

    myreturn.oul = await _complexRepository.getOccupiedUnits(
      entitytype: entitytype,
      entityid: entityid,
    );

    myreturn.stafflist= await ComplexStaffGateway.getListOfAllStaff(entitytype: entitytype,
      entityid: entityid);


    myreturn.errortype = -1;


    return myreturn;
  }






  Future<ServiceRequestModelRepositoryReturnData> getInitialData(
      String entitytype,
      String entityid,
      bool isupdate,
      String requestype,
      ServiceRequestModel serviceRequest,
      int originType) async {
    if (isupdate) {
      //
      //getstafflist, buildinglist,
    }

    ServiceRequestModelRepositoryReturnData myreturn =
    ServiceRequestModelRepositoryReturnData();
    //await _userRepository.updateUser();




    var btnState;
    var user = _user;



    myreturn.oul = await _complexRepository.getOccupiedUnits(
      entitytype: entitytype,
      entityid: entityid,
    );



    myreturn.stafflist= await ComplexStaffGateway.getListOfAllStaff(entitytype: entitytype,
        entityid: entityid);



    myreturn.errortype = -1;


    myreturn.unitlist = _user.defaultComplexEntity.getUnitList();

    myreturn.buildings = myreturn.oul.buildinglist;

    myreturn.user = user;

    return myreturn;
  }



}
