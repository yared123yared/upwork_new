

import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';

import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';
//import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/gateway/leaverequest_gateway.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get.dart';

class LeaveRequestRepositoryReturnData {
  List<LeaveRequestModel> itemlist;
  LeaveRequestModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  LeaveRequestRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class LeaveRequestRepository {

  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<LeaveRequestRepositoryReturnData> getLeaveRequestActiveAllStaff(
      String entitytype, String entityid, int originType) async {
    LeaveRequestRepositoryReturnData grerror =
        new LeaveRequestRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";
    try {
      LeaveRequestRepositoryReturnData myreturn =
          LeaveRequestRepositoryReturnData();

      List<LeaveRequestModel> leaveRequests =
          await LeaveRequestGateway.getLeaveRequestActiveAllStaff(
            entitytype: entitytype,
            entityid: entityid,
        //user: _user,
      );

      myreturn.itemlist = leaveRequests;
      myreturn.errortype = -1;
      return myreturn;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<LeaveRequestRepositoryReturnData> getLeaveRequestWaitingForApprovalNext180Days(
      String entitytype, String entityid, int originType) async {
    LeaveRequestRepositoryReturnData grerror =
    new LeaveRequestRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";
    try {
      LeaveRequestRepositoryReturnData myreturn =
      LeaveRequestRepositoryReturnData();

      List<LeaveRequestModel> leaveRequests =
      await LeaveRequestGateway.getLeaveRequestWaitingForApprovalNext180Days(
        entitytype: entitytype,
        entityid: entityid,
        //user: _user,
      );

      myreturn.itemlist = leaveRequests;
      myreturn.errortype = -1;
      return myreturn;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }
  Future<LeaveRequestRepositoryReturnData> getLeaveRequestParticularStaff(
      String entitytype, String entityid, int originType) async {
    LeaveRequestRepositoryReturnData grerror =
    new LeaveRequestRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";
    try {
      LeaveRequestRepositoryReturnData myreturn =
      LeaveRequestRepositoryReturnData();

      List<LeaveRequestModel> leaveRequests =
      await LeaveRequestGateway.getLeaveRequestParticularStaff(
        entitytype: entitytype,
        entityid: entityid,
        //user: _user,
      );

      myreturn.itemlist = leaveRequests;
      myreturn.errortype = -1;
      return myreturn;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
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

  Future<LeaveRequestEntryData> getItemFormNewEntryData(
      String entitytype, String entityid, int originType) async {
    LeaveRequestEntryData grerror = LeaveRequestEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {


      List<String> roles = _user.getrolesFromDefaultEntity();


      bool isManager = roles.contains("manager");
      // bool isManager = _complexRepository
      //     .getComplexList()[entityid]
      //     .roles
      //     .contains(EntityRoles.Manager);

      LeaveRequestEntryData gr = LeaveRequestEntryData();
      gr.isManager = isManager;
      gr.user = _user;
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      print(ex);
    }
    return grerror;
  }

  Future<LeaveRequestRepositoryReturnData> createLeaveRequest(
      LeaveRequestModel item, String entitytype, String entityid) async {
    LeaveRequestRepositoryReturnData myreturn =
        LeaveRequestRepositoryReturnData();

    // var _complexModel = await _complexRepository.getComplexAsync(
    //   complex: _user.defaultComplexEntity,
    // );

    await LeaveRequestGateway.makeLeaveRequest(
      leaveRequest: item,
      entityType: entitytype,
      entityId: entityid,
      byUserId: _user.userID,
    );

    // await _complexRepository.leaveRequest
    //     .setLeaveRequestList(complex: _complexModel, user: _user);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<LeaveRequestRepositoryReturnData> updateLeaveRequest(
      LeaveRequestModel item, String entitytype, String entityid) async {
    LeaveRequestRepositoryReturnData myreturn =
        LeaveRequestRepositoryReturnData();

    // var _complexModel = await _complexRepository.getComplexAsync(
    //   complex: _user.defaultComplexEntity,
    // );

    await LeaveRequestGateway.updateStatus(
      leaveRequest: item,
      entityID: entityid,entityType:entitytype
    );

    // await _complexRepository.leaveRequest
    //     .setLeaveRequestList(complex: _complexModel, user: _user);

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<LeaveRequestRepositoryReturnData> updateLeaveRequestWithDiff(
      LeaveRequestModel newitem,
      LeaveRequestModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<LeaveRequestRepositoryReturnData> deleteLeaveRequestWithData(
      LeaveRequestModel item, String entitytype, String entityid) async {
    LeaveRequestRepositoryReturnData myreturn =
        LeaveRequestRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<LeaveRequestRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    LeaveRequestRepositoryReturnData myreturn =
        LeaveRequestRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}

class LeaveRequestEntryData {
  bool isManager;
  UserModel user;
  List /* <BuildingModel> */ buildingList;
  var btnState;

  String error;
  int errortype;
}
