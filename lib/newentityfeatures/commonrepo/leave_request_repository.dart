import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/leaverequest_model.dart';
import 'package:complex/newentityfeatures/gateway/leaverequest_gateway.dart';

class LeaveRequestRepository {
  Map<String, Map<String, LeaveRequestModel>> _leaveReqList;

  void clear() {
    _leaveReqList = null;
  }

  Future addNewLeaveRequest(
      {@required LeaveRequestModel leaveRequest,
      @required UserModel user,
      @required String entitytype,
      @required String entityid}) async {
    try {
      await LeaveRequestGateway.makeLeaveRequest(
          leaveRequest: leaveRequest,
          byUserId: user.userID,
          entityType: entitytype,
          entityId: entityid);
    } catch (e) {
      print(e);
    }
  }



  Future<List<LeaveRequestModel>> getLeaveRequestForAll(
      {@required String entitytype,
      @required String entityid,
      @required UserModel user}) async {
    try {
      return await LeaveRequestGateway.getLeaveRequestHistoryAllStaff(
          entityType: entitytype, entityID: entityid);
    } catch (e) {
      print(e);
      return e;
    }
  }

  getLeaveRequestById(
      {@required String complexID, @required String requestID}) {
    try {
      return _leaveReqList[complexID][requestID];
    } catch (e) {
      print(e);
    }
  }

  Future updateStatus(
      {@required String complexID,
      @required LeaveRequestModel leaveRequest}) async {
    try {
      return await LeaveRequestGateway.updateStatus(
          entityID: complexID,
          entityType: 'COMPLEXES',
          leaveRequest: leaveRequest);
    } catch (e) {
      print(e);
    }
  }
}
