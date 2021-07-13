// import 'package:complex/newentityfeatures/complex/repository/gateway/registry_gateway.dart';
// import 'package:complex/newentityfeatures/complex/repository/gateway/resident_gateway.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
//import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
//import 'package:complex/newentityfeatures/Models/tempmodelforcomplex.dart';
import 'package:complex/newentityfeatures/gateway/registry_gateway.dart';
import 'package:complex/newentityfeatures/gateway/unit_gateway.dart';
// import 'package:complex/newentityfeatures/Models/entity/entity_roles.dart';
import 'package:get/get.dart';

// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';

import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';

// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/unit_model.dart';
import 'package:complex/newentityfeatures/Models/resident_model.dart';
import 'package:complex/newentityfeatures/Models/registry_model.dart';

class RegistryModelRepositoryReturnData {
  List<RegistryModel> itemlist;
  RegistryModel item;
  RegistryEntryData listviewData;
  List<String> availableUnitForOwner;
  OccupiedUnitLookupModel oul;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  RegistryModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
    listviewData = RegistryEntryData();
  }
}

class RegistryModelRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();



  Future<RegistryModelRepositoryReturnData>
      getAllRegistryModelsByBuildingAndFloor(String entitytype, String entityid,
          int originType, String buildingName, int floorNum) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    List<RegistryModel> newRegistryList = [];
    bool isOwner = _user.userID.endsWith("o");

    List<RegistryModel> registryList =
        await RegistryGateway.getRegistryListForBuildingAndFloor(
      entitytype: entitytype,
      entityid: entityid,
      buildingid: buildingName,
      floor: floorNum,
    );
    myreturn.itemlist = registryList;

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> getRegistryListDataByListOfUnits(
      String entitytype,
      String entityid,
      int originType,
      List<String> unitlist) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    List<String> unitList = _user.defaultComplexEntity.residentunits
        .map((residentUnit) =>
            residentUnit.rd.substring(0, residentUnit.rd.length - 2))
        .toList();

    List<RegistryModel> newRegistryList = [];
    bool isOwner = false;
    _user.defaultComplexEntity.residentunits.forEach((residentUnit) {
      if (residentUnit.rd.endsWith("o")) {
        isOwner = true;
      }
    });

    List<RegistryModel> registryList;
    if (unitList.isNotEmpty) {
      registryList =
          await RegistryGateway.getRegistryListForListOfUnits(
        entitytype: entitytype,
        entityid: entityid,
        unitlist: unitList,
      );
    } else {
      registryList = [];
    }

    myreturn.availableUnitForOwner =[]; //this represent units which are free and can be rented out

    for(var k  in registryList)
      {
        if(_user.userID == k.ownerUserId)
          {
            if(k.residentUserId ==null || k.residentUserId.isEmpty)
              myreturn.availableUnitForOwner.add(k.unitAddress);
          }
      }

    myreturn.itemlist = registryList;
    myreturn.listviewData.isOwner = isOwner;

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> getRegistryListDataByUnitId(
      String entitytype, String entityid, int originType, String unitid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    List<RegistryModel> registryList = [];
    bool isOwner = false;

    RegistryModel myreg =
        await RegistryGateway.getRegistryListForUnitId(
      entitytype: entitytype,
      entityid: entityid,
      unitid: unitid,
    );
    registryList.add(myreg);
    myreturn.itemlist = registryList;

    myreturn.errortype = -1;
    return myreturn;
  }



  Future<RegistryModelRepositoryReturnData> createRegistryModelViaResidentModel(
      ResidentModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    await RegistryGateway.addResidentRequest(
      resident: item,

      entitytype: entitytype,
      entityid: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }


  Future<RegistryModelRepositoryReturnData> updateRegistryModel(
      RegistryModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();
    return null;
  }

  Future<RegistryModelRepositoryReturnData> updateRegistryModelWithDiff(
      RegistryModel newitem,
      RegistryModel olditem,
      String entitytype,
      String entityid,bool updateowner) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();




    await RegistryGateway.updateRegistry(
      entityid: entityid,
      entitytype: entitytype,
      oldRegistry: olditem,
      newRegistry: newitem,
      isOwner: updateowner,
      userModel: _user,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> deleteRegistryModelWithData(
      RegistryModel item, String entitytype, String entityid,bool updateowner) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();





    await RegistryGateway.deleteRegistry(
      entitytype: entitytype,
      unitadress: item.unitAddress,
      isOwner: updateowner,
      userModel: _user,
      entityid: entityid,
    );
    // RegistryGateway.deleteRegistry(
    //   complexModel: complexModel,
    //   unitadress: item.unitAddress,
    //   isOwner: isOwner,
    //   userModel: _user,
    // );

    // final data = await _complexRepository.removeResident(
    //   complexID: entityid,
    //   unitadress: item.unitAddress,
    //   userModel: _user,
    //   isOwner: isOwner,
    // );

    // if (data)
    //   await _complexRepository.registry.setRegistryList(complexID: entityid);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryEntryData> getInitialData(
      String entitytype, String entityid, RegistryModel registry) async {
    RegistryEntryData myreturn = RegistryEntryData();




    List<UnitModel> unitList = await UnitGateway.getUnitList(
      entitytype: entitytype,
      entityid: entityid,
    );

    myreturn.oul = await _complexRepository.getOccupiedUnits(
      entitytype: entitytype,
      entityid: entityid,
    );

    myreturn.unitList = unitList;

    myreturn.errortype = -1;
    return myreturn;
  }
}

class RegistryEntryData {
  bool haveAccess;
  bool displayOwner;
  List<String> roles;
  String buildingType;
  List<UnitModel> unitList;
  ResidentModel resident;
  bool isOwner;
  OccupiedUnitLookupModel oul;
  var btnState;

  String error;
  int errortype;
}
