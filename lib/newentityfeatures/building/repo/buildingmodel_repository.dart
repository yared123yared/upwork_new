import 'package:complex/newentityfeatures/building/model/building_model.dart';

class BuildingModelRepositoryReturnData {
  int errorType;
  String id;
  String error;
  List<String> searchparavalues;
  List<BuildingModel> itemlist;
  BuildingModel item;
  BuildingModelRepositoryReturnData() {
    errorType = 2;
    error = "Not Implemented";
  }
}

class BuildingModelRepository {
  Future<BuildingModelRepositoryReturnData> getAllBuildingModels(
      String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();

    // Please put your code here
    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> createBuildingModel(
      BuildingModel item, String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();

    //Please put your code here
    return myreturn;
  }

  Future<BuildingModelRepositoryReturnData> updateBuildingModel(
      BuildingModel item, String entitytype, String entityid) async {
    return null;
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
    return null;
  }

  Future<BuildingModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    BuildingModelRepositoryReturnData myreturn =
        BuildingModelRepositoryReturnData();
    myreturn.errorType = -1;

    //Please put your code here
    return myreturn;
  }
}
