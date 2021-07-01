import 'package:complex/newentityfeatures/Models/progress_model.dart';

import 'package:complex/newentityfeatures/gateway/progress_gateway.dart';
import 'package:flutter/cupertino.dart';

class ProgressRepository {
  //serviceID -> sessionTerm -> virtualRoom -> date+kind -> attendance;
  Map<String, Map<String, Map<String, Map<String, ProgressModel>>>>
      _progressList = {};

  Future<void> setProgressVR({
    @required String serviceID,
    @required String virtualRoom,
    @required String sessionTerm,
    @required String kind,
  }) async {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

    _progressList[serviceID][sessionTerm][virtualRoom][kind] =
        await ProgressGateway.getProgressVR(
            virtualroomname: virtualRoom,
            sessionTerm: sessionTerm,
            serviceID: serviceID,
            dateTime: date,
            kind: kind);
  }

  Future<void> setProgressOFR({
    @required String serviceID,
    @required String offeringname,
    @required String sessionTerm,
    @required String kind,
  }) async {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    _progressList[serviceID][sessionTerm][offeringname][kind] =
        await ProgressGateway.getProgressOFR(
            offeringname: offeringname,
            sessionTerm: sessionTerm,
            serviceID: serviceID,
            dateTime: date,
            kind: kind);
  }

  Future<ProgressModel> getProgressVR({
    @required String serviceID,
    @required String virtualRoomName,
    @required String sessionTerm,
    @required String kind,
  }) async {
    _progressList[serviceID] = {};
    _progressList[serviceID][sessionTerm] = {};
    _progressList[serviceID][sessionTerm][virtualRoomName] = {};
    if (_progressList[serviceID][sessionTerm][virtualRoomName][kind] == null) {
      await setProgressVR(
        serviceID: serviceID,
        virtualRoom: virtualRoomName,
        sessionTerm: sessionTerm,
        kind: kind,
      );
    }
    return _progressList[serviceID][sessionTerm][virtualRoomName][kind];
  }

  Future<ProgressModel> getProgressIndependentOfr({
    @required String serviceID,
    @required String offeringname,
    @required String sessionTerm,
    @required String kind,
  }) async {
    _progressList[serviceID] = {};
    _progressList[serviceID][sessionTerm] = {};
    _progressList[serviceID][sessionTerm][offeringname] = {};

    if (_progressList[serviceID][sessionTerm][offeringname][kind] == null) {
      await setProgressOFR(
        serviceID: serviceID,
        offeringname: offeringname,
        sessionTerm: sessionTerm,
        kind: kind,
      );
    }
    return _progressList[serviceID][sessionTerm][offeringname][kind];
  }

  Future<void> submitProgressVirtualRoom(
      {@required ProgressModel progressModel,
      @required String virtualroomname,
      @required String sessionTermName,
      @required String serviceID}) async {
    await ProgressGateway.submitProgressVirtualRoom(
        progressModel: progressModel,
        virtualroomname: virtualroomname,
        sessionTermName: sessionTermName,
        serviceID: serviceID);
    await setProgressVR(
        serviceID: serviceID,
        virtualRoom: virtualroomname,
        sessionTerm: sessionTermName,
        kind: progressModel.kind);
  }

  Future<void> submitProgressIndependentOffering(
      {@required ProgressModel progressModel,
      @required String offeringname,
      @required String sessionTermName,
      @required String serviceID}) async {
    await ProgressGateway.submitProgressOfr(
        progressModel: progressModel,
        offeringname: offeringname,
        sessionTermName: sessionTermName,
        serviceID: serviceID);
    await setProgressOFR(
        serviceID: serviceID,
        offeringname: offeringname,
        sessionTerm: sessionTermName,
        kind: progressModel.kind);
  }
}
