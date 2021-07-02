import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/unit_model.dart';

import 'package:complex/newentityfeatures/gateway/unit_gateway.dart';

class UnitsRepository {
  UnitsRepository();

  //unit
  ///update the cashed units

  Future<List<UnitModel>> getUnitList(
      {@required String entitytype, @required String entityid}) async {
    try {
      return await UnitGateway.getUnitList(
          entitytype: entitytype, entityid: entityid);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UnitModel>> getUnitListForBuildingFloor(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    try {
      return await UnitGateway.getUnitListForBuildingFloor(
          entitytype: entitytype,
          entityid: entityid,
          buildingid: buildingid,
          floor: floor);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UnitModel>> getUnitListForBuildingFloorOwnerAvailable(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    try {
      return await UnitGateway.getUnitListForBuildingFloorOwnerAvailable(
          entitytype: entitytype,
          entityid: entityid,
          buildingid: buildingid,
          floor: floor);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UnitModel>> getUnitListForBuildingFloorResidentAvailable(
      {@required String entitytype,
      @required String entityid,
      @required String buildingid,
      @required int floor}) async {
    try {
      return await UnitGateway.getUnitListForBuildingFloorResidentAvailable(
          entitytype: entitytype,
          entityid: entityid,
          buildingid: buildingid,
          floor: floor);
    } catch (e) {
      print(e);
    }
  }

  Future<List<UnitModel>> getUnitListForResidentAvailableForOwner(
      {@required String entitytype,
      @required String entityid,
      @required List<String> unitlist}) async {
    try {
      return await UnitGateway.getUnitListForResidentAvailableForOwner(
          entitytype: entitytype, entityid: entityid, unitlist: unitlist);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addNewUnit({
    @required String entitytype,
    @required String entityid,
    @required UnitModel unitModel,
    @required UserModel user,
  }) async {
    try {
      await UnitGateway.newUnitRequest(
        entitytype: entitytype,
        entityid: entityid,
        unitModel: unitModel,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> removeUnit({
    @required String entitytype,
    @required String entityid,
    @required UnitModel unitModel,
    @required UserModel user,
  }) async {
    try {
      await UnitGateway.removeUnit(
          entitytype: entitytype, entityid: entityid, unitModel: unitModel);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateUnit({
    @required String entitytype,
    @required String entityid,
    UnitModel unitModel,
    UserModel user,
  }) async {
    try {
      await UnitGateway.updateUnit(
          entitytype: entitytype, entityid: entityid, unitModel: unitModel);
    } catch (e) {
      print(e);
    }
  }
}
