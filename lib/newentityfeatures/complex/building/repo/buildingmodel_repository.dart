import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import '../model/building_model.dart';
import 'package:complex/newentityfeatures/Models/building_model.dart';
import 'package:complex/newentityfeatures/gateway/building_gateway.dart';

import 'package:get/get.dart';
import 'package:logger/logger.dart';

class BuildingModelRepositoryReturnData {
  List<BuildingModel> itemlist;
  BuildingModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  BuildingModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class BuildingModelRepository {
  NewComplexRepository _complexRepository = Get.find();

  Future<BuildingModelRepositoryReturnData> getAllBuildingModels(
      String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    // if (_complexRepository.getBuildingList(complexID: entityid) == null ||
    //     _complexRepository.getBuildingList(complexID: entityid).length == 0) {
    //   await _complexRepository.setBuildingList(complexID: entityid);
    // }

    myreturn.itemlist =
        await BuildingGateway.getBuildingList(complexID: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> createBuildingModel(
      BuildingModel item, String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    await BuildingGateway.addNewBuilding(
      complexID: entityid,
      building: item,
    );
    myreturn.errortype = -1;

    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> updateBuildingModel(
      BuildingModel item, String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    await BuildingGateway.updateBuilding(
      complexID: entityid,
      building: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> updateBuildingModelWithDiff(
      BuildingModel newitem,
      BuildingModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<BuildingModelRepositoryReturnData> deleteBuildingModelWithData(
      BuildingModel item, String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    await BuildingGateway.removeBuilding(
      building: item,
      complexID: entityid,
    );
    Logger().i(entityid);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}
