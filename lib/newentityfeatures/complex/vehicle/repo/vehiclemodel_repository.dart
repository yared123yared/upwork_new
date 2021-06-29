import 'dart:convert';


import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/complex_vehicle_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
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
  UserRepository _userRepository = Get.find();
  UserModel get _user => _userRepository.getUser();

  Future<VehicleModelRepositoryReturnData> getAllVehicleModels(
      String entitytype, String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();

    if (_complexRepository.getVehicleList(complexID: entityid) == null ||
        _complexRepository.getVehicleList(complexID: entityid).length == 0) {
      await _complexRepository.setVehicleList(
        entityid: entityid,
        entitytype: entitytype,
        user: _user,
      );
    }
    myreturn.itemlist = _complexRepository.getVehicleList(
      complexID: entityid,
    );
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
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
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
    VehicleModelEntryData grerror = new VehicleModelEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    ComplexModel complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    bool isResident = complexModel.roles.contains(EntityRoles.Manager);

    List staff = _complexRepository.getStaffList(complexID: entityid);

    List<UnitModel> unitList = await _complexRepository.units.getUnitList(
      // complex: complexModel,
      entityid: entityid,
      entitytype: entitytype,
      // user: _user,
    );

    try {
      VehicleModelEntryData gr = new VehicleModelEntryData();
      gr.vehicleIndex = null; // TODO
      gr.unitList = unitList;
      gr.staff = staff;
      gr.isResident = isResident;
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<VehicleModelRepositoryReturnData> createVehicleModel(
      ComplexVehicleModel item, String entitytype, String entityid) async {
    VehicleModelRepositoryReturnData grerror =
        new VehicleModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      VehicleModelRepositoryReturnData gr =
          new VehicleModelRepositoryReturnData();
      await _complexRepository.addNewVehicle(
        entitytype: entitytype,
        entityid: entityid,
        user: _user,
        vehicle: item,
      );
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;

    // await _complexRepository.setVehicleList(
    //   entitytype: entitytype,
    //   entityid: entityid,
    //   // complexID: entityid,
    //   user: _user,
    // );
  }

  Future<VehicleModelRepositoryReturnData> updateVehicleModel(
      ComplexVehicleModel item,
      int vehicleIndex,
      String entitytype,
      String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();
    await _complexRepository.updateVehicle(
      entitytype: entitytype,
      entityid: entityid,
      newVehicle: item,
      userModel: _user,
      oldVehicle:
          _complexRepository.getVehicleList(complexID: entityid)[vehicleIndex],
    );
    // await _complexRepository.setVehicleList(
    //   entitytype: entitytype,
    //   entityid: entityid,
    //   // complexID: entityid,
    //   user: _user,
    // );
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
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      await _complexRepository.updateVehicle(
        entitytype: entitytype,
        entityid: entityid,
        newVehicle: newitem,
        userModel: _user,
        oldVehicle: olditem,
      );
    } catch (e) {
      print(e);
      return e;
    }
    return null;
  }

  Future<VehicleModelRepositoryReturnData> deleteVehicleModelWithData(
      ComplexVehicleModel item,
      int index,
      String entitytype,
      String entityid) async {
    VehicleModelRepositoryReturnData myreturn =
        VehicleModelRepositoryReturnData();
    await _complexRepository.removeComplexVehicle(
      entityid,
      _complexRepository
          .getVehicleList(complexID: entityid)[/* event. */ index]
          .vehicleID,
    );

    // await _complexRepository.setVehicleList(
    //   entitytype: entitytype,
    //   entityid: entityid,
    //   // complexID: entityid,
    //   user: _user,
    // );

    myreturn.errortype = -1;
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
  List<UnitModel> unitList;
  List<StaffModelx> staff;
  bool isResident;

  String error;
  int errortype;
}
