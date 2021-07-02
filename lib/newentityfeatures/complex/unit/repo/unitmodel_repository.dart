import 'dart:convert';

import 'package:complex/common/helputil.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

// import '../model/unit_model.dart';
import 'package:complex/newentityfeatures/Models/unit_model.dart';

class UnitModelRepositoryReturnData {
  List<UnitModel> itemlist;
  UnitModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  UnitModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class UnitModelRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<UnitModelRepositoryReturnData> getAllUnitModels(
      String entitytype, String entityid) async {
    UnitModelRepositoryReturnData myreturn = UnitModelRepositoryReturnData();

    ComplexModel complexModel = _complexRepository.getComplex(
      complexID: entityid,
    );

    myreturn.itemlist = await _complexRepository.units.getUnitList(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      // user: _user,
    );

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

  Future<UnitModelEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    UnitModelEntryData grerror = new UnitModelEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      UnitModelEntryData gr = new UnitModelEntryData();

      // if (_complexRepository.getBuildingList(complexID: entityid) == null ||
      //     _complexRepository.getBuildingList(complexID: entityid).length == 0) {
      //   await _complexRepository.setBuildingList(complexID: entityid);
      // }

      List buildingList = await _complexRepository.getBuildingList(
        complexID: entityid,
      );
      bool isOwner = _complexRepository
          .getComplexList()[entityid]
          .roles
          .contains(EntityRoles.Owner);
      bool isManager = _complexRepository
          .getComplexList()[entityid]
          .roles
          .contains(EntityRoles.Manager);

      gr.buildingList = buildingList;
      gr.isOwner = isOwner;
      gr.isManager = isManager;
      gr.btnState = ButtonState.idle;
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<UnitModelRepositoryReturnData> createUnitModel(
      UnitModel item, String entitytype, String entityid) async {
    UnitModelRepositoryReturnData myreturn = UnitModelRepositoryReturnData();
    await _complexRepository.units.addNewUnit(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      unitModel: item,
      user: _user,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<UnitModelRepositoryReturnData> updateUnitModel(
      UnitModel item, String entitytype, String entityid) async {
    UnitModelRepositoryReturnData myreturn = UnitModelRepositoryReturnData();
    await _complexRepository.units.updateUnit(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      unitModel: item,
      user: _user,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<UnitModelRepositoryReturnData> updateUnitModelWithDiff(
      UnitModel newitem,
      UnitModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<UnitModelRepositoryReturnData> deleteUnitModelWithData(
      UnitModel item, String entitytype, String entityid) async {
    UnitModelRepositoryReturnData myreturn = UnitModelRepositoryReturnData();
    await _complexRepository.units.removeUnit(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      unitModel: item,
      user: _user,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<UnitModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    UnitModelRepositoryReturnData myreturn = UnitModelRepositoryReturnData();

    ComplexModel complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    List<UnitModel> unitList = await _complexRepository.units.getUnitList(
      entitytype: entitytype,
      entityid: entityid,
      // complexID: entityid,
      // user: _user,
    );

    myreturn.itemlist = unitList;
    myreturn.errortype = -1;
    return myreturn;
  }
}

class UnitModelEntryData {
  bool isManager;
  bool isOwner;
  List<BuildingModel> buildingList;
  var btnState;

  String error;
  int errortype;
}
