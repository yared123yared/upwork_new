import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/entity/complex_model.dart';
import 'package:complex/newentityfeatures/Models/entity/entity_roles.dart';
import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';
// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

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
  NewComplexRepository _complexRepository = Get.find();
  UserRepository _userRepository = Get.find();
  UserModel get _user => _userRepository.getUser();

  Future<LeaveRequestRepositoryReturnData> getAllLeaveRequests(
      String entitytype, String entityid, int originType) async {
    LeaveRequestRepositoryReturnData myreturn =
        LeaveRequestRepositoryReturnData();

    List<LeaveRequestModel> leaveRequests =
        await _complexRepository.leaveRequest.getLeaveRequestForAll(
      entitytype: entitytype,
      entityid: entityid,
      user: _user,
    );
    List<LeaveRequestModel> filteredLeaveRequests = [];

    leaveRequests.forEach((leaveRequest) {
      DateTime now = DateTime.now();
      if ((leaveRequest.startDate.difference(now).inDays < 90) &&
          (leaveRequest.endDate.difference(now).inDays < 90)) {
        if (originType == 1) {
          if (leaveRequest.staffID == _user.userID) {
            filteredLeaveRequests.add(leaveRequest);
          }
        } else if (originType == 2) {
          filteredLeaveRequests.add(leaveRequest);
        }
      }
    });

    myreturn.itemlist = filteredLeaveRequests;

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

  Future<LeaveRequestEntryData> getItemFormNewEntryData(
      String entitytype, String entityid, int originType) async {
    LeaveRequestEntryData grerror = new LeaveRequestEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      ComplexModel _complexModel = await _complexRepository.getComplexAsync(
        complex: _user.defaultComplexEntity,
      );

      List<String> roles = [];
      if (_complexModel.roles.contains(EntityRoles.Manager)) {
        roles = ["manager"];
      } else if (_complexModel.roles.contains(EntityRoles.Owner)) {
        roles = ["owner"];
      } else if (_complexModel.roles.contains(EntityRoles.Resident)) {
        roles = ["resident"];
      }

      bool isManager = roles.contains("manager");
      // bool isManager = _complexRepository
      //     .getComplexList()[entityid]
      //     .roles
      //     .contains(EntityRoles.Manager);

      LeaveRequestEntryData gr = new LeaveRequestEntryData();
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

    await _complexRepository.leaveRequest.addNewLeaveRequest(
      leaveRequest: item,
      entitytype: entitytype,
      entityid: entityid,
      user: _user,
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

    await _complexRepository.leaveRequest.updateStatus(
      leaveRequest: item,
      complexID: entityid,
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
