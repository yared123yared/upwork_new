//import 'dart:convert';


import 'package:complex/common/helputil.dart';
//import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';
//import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
//import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
//import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/gateway/complex_staff_gateway.dart';
import 'package:complex/newentityfeatures/gateway/complex_vehicle_gateway.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class VehicleModelRepositoryReturnData {
  List<ComplexVehicleModel> itemlist;
  ComplexVehicleModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  VehicleModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class VehicleModelRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository =  HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<VehicleModelRepositoryReturnData> getAllVehicleModelsByUnits({
      @required String entitytype,@required String entityid,@required List<String> myUnits}) async {
    VehicleModelRepositoryReturnData myreturn =         VehicleModelRepositoryReturnData();
    try {
      myreturn.itemlist = await ComplexVehicleGateway.getMyVehicleList(entitytype:entitytype,entityid:entityid,myUnits:myUnits);
      myreturn.errortype=-1;
    } catch (e) {

      myreturn.errortype=-2;
      myreturn.error=e.toString();
  }
    return myreturn;
  }

  Future<VehicleModelRepositoryReturnData> getAllVehicleModelsByStaffId({
    @required String entitytype,@required String entityid,@required String staffid}) async {
    VehicleModelRepositoryReturnData myreturn =         VehicleModelRepositoryReturnData();
    try {
      myreturn.itemlist = await ComplexVehicleGateway.getVehicleListByStaff(entitytype:entitytype,entityid:entityid,staffid:staffid);
      myreturn.errortype=-1;
    } catch (e) {

      myreturn.errortype=-2;
      myreturn.error=e.toString();
    }
    return myreturn;
  }

  Future<VehicleModelRepositoryReturnData> getAllVehicleModelsByNumPlate({
    @required String entitytype,@required String entityid,@required String numplate}) async {
    VehicleModelRepositoryReturnData myreturn =         VehicleModelRepositoryReturnData();
    try {
      ComplexVehicleModel cvm = await ComplexVehicleGateway.getVehicleListByNumPlate(entitytype:entitytype,entityid:entityid,numplate:numplate);
      myreturn.itemlist = [cvm];
      myreturn.errortype=-1;
    } catch (e) {

      myreturn.errortype=-2;
      myreturn.error=e.toString();
    }
    return myreturn;
  }



  Future<GenericLookUpDataUsedForRegistration> getListFormPreLoadData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();

      OccupiedUnitLookupModel  oul = await _complexRepository.getOccupiedUnits(
        entitytype: entitytype,
        entityid: entityid,
      );
      gr.schoolownerlist = await ComplexStaffGateway.getListOfAllStaff(entitytype: entitytype, entityid: entityid);
      gr.oul=oul;
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }




  Future<VehicleModelEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    VehicleModelEntryData grerror = VehicleModelEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";


    OccupiedUnitLookupModel  oul = await _complexRepository.getOccupiedUnits(
      entitytype: entitytype,
      entityid: entityid,
    );

    List staff = await ComplexStaffGateway.getListOfAllStaff(entitytype: entitytype, entityid: entityid);



    try {
      VehicleModelEntryData gr = VehicleModelEntryData();
      gr.vehicleIndex = null; // TODO
      gr.oul = oul;
      gr.stafflist = staff;

      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }




  Future<VehicleModelRepositoryReturnData> createVehicleModel(
      ComplexVehicleModel item, String entitytype, String entityid) async {
    VehicleModelRepositoryReturnData grerror =
        new VehicleModelRepositoryReturnData();


    try {
      VehicleModelRepositoryReturnData gr =
          new VehicleModelRepositoryReturnData();
      await ComplexVehicleGateway.newComplexVehicleCreateRequest(
        entitytype: entitytype,
        entityid: entityid,
        user: _user,
        vehicle: item,
      );
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      grerror.error = "UNknown exception has occured";
      print(ex);
    }

    return grerror;


  }

  Future<VehicleModelRepositoryReturnData> updateVehicleModel(
      ComplexVehicleModel item,
      int vehicleIndex,
      String entitytype,
      String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();
    await ComplexVehicleGateway.updateVehicle(
      entitytype: entitytype,
      entityid: entityid,
      newVehicle: item,
        user: _user,
      oldVehicle:item

    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<VehicleModelRepositoryReturnData> updateVehicleModelWithDiff(
      ComplexVehicleModel newitem,
      ComplexVehicleModel olditem,
      int vehicleIndex,
      String entitytype,
      String entityid) async {
    VehicleModelRepositoryReturnData grerror =
        new VehicleModelRepositoryReturnData();


    try {
      await ComplexVehicleGateway.updateVehicle(
          entitytype: entitytype,
          entityid: entityid,
          newVehicle: newitem,
          user: _user,
          oldVehicle:olditem

      );
      grerror.errortype = -1;
    } catch (e) {
      grerror.errortype=2;
      grerror.error=e.toString();
    }
    return grerror;
  }

  Future<VehicleModelRepositoryReturnData> deleteVehicleModelWithData(
      ComplexVehicleModel item,
      int index,
      String entitytype,
      String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();
    try {
      await ComplexVehicleGateway.deleteVehicle(
          entitytype: entitytype,
          entityid: entityid, numplate: item.numberPlate, user: _user
      );
      myreturn.errortype=-1;
    }
   catch (e) {
     myreturn.errortype=2;
     myreturn.error=e.toString();
  }
  return myreturn;

  }

  Future<VehicleModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}

class VehicleModelEntryData {
  int vehicleIndex;
  OccupiedUnitLookupModel oul;
  List<SchoolOwner> stafflist;
  bool isResident;

  String error;
  int errortype;
}
