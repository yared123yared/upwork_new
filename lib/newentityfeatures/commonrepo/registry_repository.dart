import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/registry_model.dart';
import 'package:complex/newentityfeatures/gateway/registry_gateway.dart';

class RegistryRepository {
  ///has error that the single unit can has only one resident or renter

  Future<List<RegistryModel>> getRegistryList(
      {@required String entitytype, @required String entityid}) async {
    try {
      return await RegistryGateway.getRegistryList(
          entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
    }
  }

  Future<List<RegistryModel>> getRegistryListForListOfUnits(
      {@required String entitytype,
      @required String entityid,
      @required List<String> unitlist}) async {
    try {
      return await RegistryGateway.getRegistryListForListOfUnits(
          entitytype: entitytype, entityid: entityid, unitlist: unitlist);
    } catch (e) {
      print(e);
    }
  }

  Future<List<RegistryModel>> getRegistryListForBuildingAndFloor(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      int floor}) async {
    try {
      return await RegistryGateway.getRegistryListForBuildingAndFloor(
          entitytype: entitytype,
          entityid: entityid,
          buildingid: buildingid,
          floor: floor);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateRegistry(
      {@required RegistryModel oldRegistry,
      @required RegistryModel newRegistry,
      @required String entitytype,
      @required String entityid,
      @required UserModel userModel,
      @required bool isOwner}) async {
    try {
      await RegistryGateway.updateRegistry(
          entitytype: entitytype,
          entityid: entityid,
          oldRegistry: oldRegistry,
          newRegistry: newRegistry,
          isOwner: isOwner,
          userModel: userModel);
    } catch (e) {
      print(e);
    }
  }
}
