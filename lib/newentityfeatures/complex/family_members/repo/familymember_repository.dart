import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/family_member.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';

// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class FamilyMemberRepositoryReturnData {
  List<FamilyMember> itemlist;
  FamilyMember item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  FamilyMemberRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class FamilyMemberRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = Get.find();
  UserModel get _user => _userRepository.getUser();

  Future<FamilyMemberRepositoryReturnData> getAllFamilyMembers(
      String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();

    List<String> units = (await _complexRepository.units.getUnitList(
      entitytype: entitytype,
      entityid: entityid,
    ))
        ?.map((unit) => unit.unitID)
        ?.toList();

    myreturn.itemlist = await _complexRepository.familyMembers(
      entitytype: entitytype,
      entityid: entityid,
      userId: _user.userID,
      // units: units,
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

      List<String> units = (await _complexRepository.units.getUnitList(
        entitytype: entitytype,
        entityid: entityid,
      ))
          ?.map((unit) => unit.unitID)
          ?.toList();

      gr.grades = units;
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<FamilyEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    FamilyEntryData grerror = new FamilyEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> models = (await _complexRepository.units.getUnitList(
        entitytype: entitytype,
        entityid: entityid,
      ))
          ?.map((unit) => unit.unitID)
          ?.toList();

      FamilyEntryData gr = new FamilyEntryData();

      gr.models = models;
      gr.errortype = -1;

      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<FamilyMemberRepositoryReturnData> getFamilyMemberWithOfferingSearch(
    String entitytype,
    String entityid,
    List<String> units,
  ) async {
    FamilyMemberRepositoryReturnData grerror =
        new FamilyMemberRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      FamilyMemberRepositoryReturnData gr =
          new FamilyMemberRepositoryReturnData();
      gr.itemlist = await _complexRepository.familyMembers(
        entitytype: entitytype,
        entityid: entityid,
        userId: _user.userID,
        units: units,
      );

      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<FamilyMemberRepositoryReturnData> createFamilyMember(
      FamilyMember item, String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    await _complexRepository.addFamilyMember(item, entitytype, entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FamilyMemberRepositoryReturnData> updateFamilyMember(
      FamilyMember item, String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FamilyMemberRepositoryReturnData> updateFamilyMemberWithDiff(
      FamilyMember newitem,
      FamilyMember olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<FamilyMemberRepositoryReturnData> deleteFamilyMemberWithData(
      FamilyMember item, String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    await _complexRepository.removeFamilyMember(item, entitytype, entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FamilyMemberRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}

class FamilyEntryData {
  String error;
  int errortype;

  List<String> models;
}
