// import 'package:complex/newentityfeatures/complex/repository/gateway/registry_gateway.dart';
// import 'package:complex/newentityfeatures/complex/repository/gateway/resident_gateway.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/common/common_models/common_model.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/tempmodelforcomplex.dart';
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

  Future<RegistryModelRepositoryReturnData> getAllRegistryModels(
      String entitytype, String entityid, int originType) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    ComplexModel _complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    List<String> roles;
    if (_complexModel.roles.contains(EntityRoles.Manager)) {
      roles = ["manager"];
    } else if (_complexModel.roles.contains(EntityRoles.Owner)) {
      roles = ["owner"];
    } else if (_complexModel.roles.contains(EntityRoles.Resident)) {
      roles = ["resident"];
    }

    myreturn.listviewData.roles = roles;
    myreturn.listviewData.buildingType = _complexModel.buildingType;

    List<RegistryModel> newRegistryList = [];

    List<RegistryModel> registryList =
        await _complexRepository.registry.getRegistryList(
      entitytype: entitytype,
      entityid: entityid,
    );
    registryList.forEach((registry) {
      if (originType == 1) {
        newRegistryList.add(registry);
      } else if (originType == 2) {
        if (registry?.ownerUserId == _user.userID) {
          newRegistryList.add(registry);
        }
      } else if (originType == 3) {
        newRegistryList.add(registry);
      } else if (originType == 4) {
        if (registry?.ownerUserId == _user.userID) {
          newRegistryList.add(registry);
        }
      }
      // if (roles?.contains("owner") ?? false) {
      //   if (registry?.ownerUserId == _user.userID) {
      //     newRegistryList.add(registry);
      //   }
      // } else {
      //   newRegistryList.add(registry);
      // }
    });

    myreturn.itemlist = newRegistryList;

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData>
      getAllRegistryModelsByBuildingAndFloor(String entitytype, String entityid,
          int originType, String buildingName, int floorNum) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    List<RegistryModel> newRegistryList = [];
    bool isOwner = _user.userID.endsWith("o");

    List<RegistryModel> registryList =
        await _complexRepository.registry.getRegistryListForBuildingAndFloor(
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
          await _complexRepository.registry.getRegistryListDataByListOfUnits(
        entitytype: entitytype,
        entityid: entityid,
        unitlist: unitList,
      );
    } else {
      registryList = [];
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
        await _complexRepository.registry.getRegistryListDataByUnitId(
      entitytype: entitytype,
      entityid: entityid,
      unitid: unitid,
    );
    registryList.add(myreg);
    myreturn.itemlist = registryList;

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> createRegistryModel(
      RegistryModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    bool isOwner = _complexRepository
        .getComplexList()[entityid]
        .roles
        .contains(EntityRoles.Owner);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> createRegistryModelViaResidentModel(
      ResidentModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    await _complexRepository.addResidentRequest(
      residentRequest: item,
      userModel: _user,
      entitytype: entitytype,
      entityid: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> updateResident(
      ResidentModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    ComplexModel complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    bool isOwner = complexModel.roles.contains(EntityRoles.Owner);

    await _complexRepository.removeResident(
      entitytype: entitytype,
      unitadress: item.unitAddress,
      entityid: entityid,
      isOwner: isOwner,
      userModel: _user,
    );
    
    await _complexRepository.addResidentRequest(
      residentRequest: item,
      userModel: _user,
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
      String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    ComplexModel complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    bool isOwner = complexModel.roles.contains(EntityRoles.Owner);

    await _complexRepository.registry.updateRegistry(
      entityid: entityid,
      entitytype: entitytype,
      oldRegistry: olditem,
      newRegistry: newitem,
      isOwner: isOwner,
      userModel: _user,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<RegistryModelRepositoryReturnData> deleteRegistryModelWithData(
      RegistryModel item, String entitytype, String entityid) async {
    RegistryModelRepositoryReturnData myreturn =
        RegistryModelRepositoryReturnData();

    ComplexModel complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    bool isOwner = complexModel.roles.contains(EntityRoles.Owner);

    await _complexRepository.removeResident(
      entitytype: entitytype,
      unitadress: item.unitAddress,
      isOwner: isOwner,
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

    ComplexModel _complexModel = await _complexRepository.getComplexAsync(
      complex: _user.defaultComplexEntity,
    );

    if (registry != null) {
      try {
        List<ResidentModel> residents =
            await _complexRepository.getResidentList(
          entitytype: entitytype,
          entityid: entityid,
        );
        ResidentModel resident;
        residents?.forEach((residentItem) {
          if (registry.residentUserId == residentItem.residentID) {
            resident = residentItem;
          }
        });
        myreturn.resident = resident;
      } catch (e) {
        print(e);
      }
    }

    List<UnitModel> unitList = await _complexRepository.units.getUnitList(
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
