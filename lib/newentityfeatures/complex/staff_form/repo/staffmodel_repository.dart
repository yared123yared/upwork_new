

import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/gateway/complex_staff_gateway.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/entity/staff_model.dart';

class StaffModelRepositoryReturnData {
  List<StaffModelx> itemlist;
  StaffModelx item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  StaffModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class StaffModelRepository {
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<StaffModelRepositoryReturnData> getAllStaffModels(
      String entitytype, String entityid) async {
    StaffModelRepositoryReturnData myreturn = StaffModelRepositoryReturnData();
    //Please put your code here

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



  Future<StaffModelRepositoryReturnData> getStaffModelWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    StaffModelRepositoryReturnData grerror =
        new StaffModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      StaffModelRepositoryReturnData gr = StaffModelRepositoryReturnData();
      // List<StaffModelx> vrlist =
      //     await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
      //         serviceID: entityid,
      //         sessionTerm: sessionterm,
      //         offering: offeringgroup);
      // gr.itemlist = vrlist;
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<StaffModelRepositoryReturnData> createStaffModel(
      {StaffModelx item, String entitytype, String entityid}) async {
    StaffModelRepositoryReturnData myreturn = StaffModelRepositoryReturnData();
    await ComplexStaffGateway.newStaffRequest(
        staffModel: item, entitytype: entitytype, entityid: entityid);
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StaffModelRepositoryReturnData> updateStaffModel(
      StaffModelx item, String entitytype, String entityid) async {
    return null;
  }

  Future<StaffModelRepositoryReturnData> updateStaffModelWithDiff(
      {StaffModelx newitem,
      StaffModelx olditem,
      String entitytype,
      String entityid}) async {
    StaffModelRepositoryReturnData myreturn = StaffModelRepositoryReturnData();
    await ComplexStaffGateway.updateStaffRequest(
      entitytype: entitytype,
      entityid: entityid,
      newStaff: newitem,
      oldStaff: olditem,
      userModel: _user,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StaffModelRepositoryReturnData> deleteStaffModelWithData(
      StaffModelx item, String entitytype, String entityid) async {
    StaffModelRepositoryReturnData myreturn = StaffModelRepositoryReturnData();
    await ComplexStaffGateway.deleteStaffRequest(
      entitytype: entitytype, entityid: entityid,
      staffModel: item,
      userModel: _user,
      // userModel: userModel,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<StaffModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    StaffModelRepositoryReturnData myreturn = StaffModelRepositoryReturnData();
    myreturn.itemlist = await _complexRepository.getAllStaffList(
        entityid: entityid, entitytype: entitytype);
    myreturn.errortype = -1;
    return myreturn;
  }
}

class StaffEntryData {
  int errortype;
  String error;
  ComplexModel complexModel;
}
