

import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/family_member.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';

// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/newentityfeatures/gateway/complex_gateway.dart';
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

  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<FamilyMemberRepositoryReturnData> getAllFamilyMembers(
      String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    myreturn.itemlist = await ComplexGateway.getFamilyMembersList(
      entitytype: entitytype,
      entityid: entityid,
      userId: _user.userID,
      units :_user.defaultComplexEntity.getUnitList()
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



      gr.grades = _user.defaultComplexEntity.getUnitList();
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
    FamilyEntryData grerror = FamilyEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {

      FamilyEntryData gr = FamilyEntryData();

      gr.models = _user.defaultComplexEntity.getUnitList();
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
      gr.itemlist = await ComplexGateway.getFamilyMembersList(
          entitytype: entitytype,
          entityid: entityid,
          userId: _user.userID,
          units :_user.defaultComplexEntity.getUnitList()
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
    await ComplexGateway.addFamilyMember(member:item,entitytype: entitytype,entityid: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }


  Future<FamilyMemberRepositoryReturnData> deleteFamilyMemberWithData(
      FamilyMember item, String entitytype, String entityid) async {
    FamilyMemberRepositoryReturnData myreturn =
        FamilyMemberRepositoryReturnData();
    await ComplexGateway.removeFamilyMember(member:item,entitytype: entitytype,entityid: entityid);
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
