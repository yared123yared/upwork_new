import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';

import 'package:complex/newentityfeatures/commonrepo/lookup_repository.dart';
import 'package:complex/newentityfeatures/commonrepo/virtual_rooms_repository.dart';

import 'package:complex/newentityfeatures/gateway/assignment_gateway.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';
import 'package:complex/newentityfeatures/gateway/vr_assignment_score_gateway.dart';

import 'package:flutter/cupertino.dart';

class AssignmentRepository {
  final LookupRepository lookup;
  final VirtualRoomsRepository virtualRoom;
  AssignmentRepository({@required this.lookup, @required this.virtualRoom});

  Map<String, Map<String, AssignmentModel>> _assignmentList = {};
  Map<String, Map<String, Map<String, VrAssignmentModel>>>
      _attachedAssignmentList = {};
  Map<String, List<VrAssignmentScoreModel>> _assignmentScoreList = {};

  Future<void> setAssignment({@required String serviceID}) async {
    try {
      List<AssignmentModel> _assignments =
          await AssignmentGateway.getAssignmentList(serviceID: serviceID);
      _assignmentList[serviceID] = _assignmentList[serviceID] ?? {};
      _assignments.forEach((element) {
        _assignmentList[serviceID][element.assignmentID] = element;
      });
    } catch (e) {
      print(e);
    }
  }

  Future addAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.addNewAssignment(
        assignment: assignment,
        serviceID: serviceID,
      );
      await setAssignment(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future updateAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.updateAssignment(
        assignment: assignment,
        serviceID: serviceID,
      );
      await setAssignment(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<AssignmentModel>> getPublishedAssignmentsByOfferingGroup({
    @required String offeringgroupname,
    @required String serviceID,
  }) {
    try {
      return AssignmentGateway.getPublishedAssignmentsByOfferingGroup(
        offeringgroup: offeringgroupname,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<AssignmentModel> getPublishedAssignmentById({
    @required String serviceID,
    @required String assignmentID,
  }) {
    try {
      return AssignmentGateway.getPublishedAssignmentById(
        assignmentID: assignmentID,
        serviceID: serviceID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, AssignmentModel>> getAssignmentList(
      {@required String serviceID}) async {
    try {
      if (_assignmentList[serviceID] == null ||
          _assignmentList[serviceID].length == 0) {
        await setAssignment(serviceID: serviceID);
      }
      return _assignmentList[serviceID];
    } catch (e) {
      print(e);
    }
  }

  void updateQuestion({
    @required Question newQuestion,
    @required String serviceID,
    @required String assignmentID,
    @required int questIndex,
  }) {
    try {
      _assignmentList[serviceID][assignmentID].questions[questIndex] =
          newQuestion;
    } catch (e) {
      print(e);
    }
  }

  AssignmentModel getAssignmentByID({
    @required String serviceID,
    @required String assignmentID,
  }) =>
      _assignmentList[serviceID][assignmentID];

  Future<void> setAttachedAssignment({@required String serviceID}) async {
    try {
      _attachedAssignmentList[serviceID] = {};
      List<VrAssignmentModel> _tempAllAssignment = List<VrAssignmentModel>();
      List<SessionTermModel> _sessions =
          await lookup.getSessionTermsList(serviceID: serviceID);

      for (SessionTermModel session in _sessions) {
        List<VrAssignmentModel> _tempList =
            await VrAssignmentGateway.getVrAssignmentListOffering(
          serviceID: serviceID,
          sessionTerm: session.termName,
          offering: null,
        );

        _tempAllAssignment.addAll(_tempList);
      }
      Map<String, List<VirtualRoomModel>> _tempVrooms =
          await virtualRoom.getVirtualRooms(serviceID: serviceID);
      _tempVrooms.forEach((session, vRoomList) {
        vRoomList.forEach((vRoom) {
          _attachedAssignmentList[serviceID]
              ["$session - ${vRoom.virtualRoomName}"] = {};
        });
      });

      _tempAllAssignment.forEach((attachedAssignment) {
        _attachedAssignmentList[serviceID][
                "${attachedAssignment.session} - ${attachedAssignment.virtualRoom}"] ??=
            Map();

        _attachedAssignmentList[serviceID][
                "${attachedAssignment.session} - ${attachedAssignment.virtualRoom}"]
            [attachedAssignment.assignmentId] = attachedAssignment;
      });
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, Map<String, VrAssignmentModel>>>
      getAttachedAssignmentList({
    @required String serviceID,
  }) async {
    try {
      if (_attachedAssignmentList[serviceID] == null ||
          _attachedAssignmentList[serviceID].length == 0) {
        await setAttachedAssignment(serviceID: serviceID);
      }

      return _attachedAssignmentList[serviceID];
    } catch (e) {
      print(e);
    }
  }

  Future attachAssignment({
    @required VrAssignmentModel vrAssignmentModel,
    @required String serviceID,
  }) async {
    try {
      print("assignment start network call");

      await VrAssignmentGateway.addNewVrAssignment(
        serviceID: serviceID,
        sessionTerm: vrAssignmentModel.session,
        vrAssignmentModel: vrAssignmentModel,
      );
      print("assignment calling set");

      await setAttachedAssignment(serviceID: serviceID);
      print("assignment ending network call");
    } catch (e) {
      print("Assign create $e");
    }
    // await AssignmentGateway.attachAssignment(
    //   vrAssignmentModel: vrAssignmentModel,
    //   serviceID: serviceID,
    // );
  }

  Future updateAttachedAssignment({
    @required VrAssignmentModel vrAssignmentModel,
    @required String serviceID,
  }) async {
    try {
      await VrAssignmentGateway.updateVrAssignment(
        serviceID: serviceID,
        vrAssignmentModel: vrAssignmentModel,
        sessionTerm: vrAssignmentModel.session,
      );
      await setAttachedAssignment(serviceID: serviceID);
      // await AssignmentGateway.attachAssignment(
      //   vrAssignmentModel: vrAssignmentModel,
      //   serviceID: serviceID,
      // );
    } catch (e) {
      print(e);
    }
  }

  Future<List<VrAssignmentModel>> getVrAssignmentsForIdCard({
    @required String virtualRoomName,
    @required String sessionterm,
    @required String entityid,
  }) {
    try {
      return VrAssignmentGateway.getVrAssignmentModelForIDCardNum(
        entityid: entityid,
        sessionterm: sessionterm,
        virtualroomname: virtualRoomName,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<AnsweredPaper>>
      getVrAssignmentScoreIndependentOfferingForAllStudent({
    @required String sessionterm,
    @required String vrid,
    @required String offeringname,
    @required String serviceID,
    @required String virtualRoom,
  }) async {
    try {
      return VrAssignmentGateway
          .getVrAssignmentScoreNotIndependentOfferingForAllStudent(
        entityid: serviceID,
        vrid: vrid,
        offeringname: offeringname,
        sessionterm: sessionterm,
        entitytype: "SERVICEPROVIDERINFO",
        virtualroomname: virtualRoom,
      );
    } catch (e) {
      print(e);
    }
  }

  VrAssignmentModel getAttachedAssignment({
    @required String serviceID,
    @required String sessionVroom,
    @required String assingmentID,
  }) =>
      _attachedAssignmentList[serviceID][sessionVroom][assingmentID];

  Future<void> setAssignmentScoreList({@required String serviceID}) async {
    _assignmentScoreList[serviceID] = [];
    List<VrAssignmentScoreModel> _tempAllAssignment =
        List<VrAssignmentScoreModel>();
    List<SessionTermModel> _sessions =
        await lookup.getSessionTermsList(serviceID: serviceID);

    for (SessionTermModel session in _sessions) {
      List<VrAssignmentScoreModel> _tempList =
          await VRAssignmentScoreGateway.getVrAssignmentScoreList(
        serviceID: serviceID,
        sessionTerm: session,
      );

      _tempAllAssignment.addAll(_tempList);
    }

    _tempAllAssignment.forEach((attachedAssignment) {
      _assignmentScoreList[serviceID].add(attachedAssignment);
    });
  }

  Future<VrAssignmentScoreModel> getAssignmentScore({
    @required String serviceID,
    @required String sessionTerm,
    @required String vrAssignmentID,
  }) async {
    return VRAssignmentScoreGateway.getScoreModel(
      serviceID: serviceID,
      sessionTerm: sessionTerm,
      vrAssignmentID: vrAssignmentID,
    );
  }

  Future<List<AnsweredPaper>> getVrAssignmentScoreForSingleStudent({
    @required String sessionterm,
    @required String vrid,
    @required String idcardnum,
    @required String entityid,
  }) {
    return VrAssignmentGateway.getVrAssignmentScoreForSingleStudent(
      entityid: entityid,
      idcardnum: idcardnum,
      sessionterm: sessionterm,
      vrid: vrid,
    );
  }

  Future<List<VrAssignmentScoreModel>> getAssignmentScoreList({
    @required String serviceID,
  }) async {
    if (_assignmentScoreList[serviceID] == null ||
        _assignmentScoreList[serviceID].length == 0) {
      await setAssignmentScoreList(serviceID: serviceID);
    }
    return _assignmentScoreList[serviceID];
  }

  Future submitQuestion(
      {@required String assignmentID, @required String serviceID}) async {
    await AssignmentGateway.submitQuestion(
        assignmentModel: _assignmentList[serviceID][assignmentID],
        serviceID: serviceID);
    await setAssignment(serviceID: serviceID);
  }

  Future submitStudyMaterial(
      {@required String assignmentID, @required String serviceID}) async {
    await AssignmentGateway.submitStudyMaterial(
        assignmentModel: _assignmentList[serviceID][assignmentID],
        serviceID: serviceID);
    await setAssignment(serviceID: serviceID);
  }

  // New Repository
  Future addNewAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    await AssignmentGateway.addNewAssignmentToLocal(
      assignment: assignment,
      serviceID: serviceID,
    );
    await setAssignment(serviceID: serviceID);
  }

  Future updateAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    await AssignmentGateway.updateAssignmentToLocal(
      assignment: assignment,
      serviceID: serviceID,
    );
    await setAssignment(serviceID: serviceID);
  }

  Future removeAssignmentToLocal(
      {AssignmentModel assignment, String docId}) async {
    await AssignmentGateway.removeAssignmentToLocal(assignment, docId);
    await setAssignment(serviceID: docId);
  }

  Future submitQuestionToLocal({
    @required String assignmentID,
    @required String serviceID,
  }) async {
    await AssignmentGateway.submitQuestionToLocal(
      assignmentModel: _assignmentList[serviceID][assignmentID],
      serviceID: serviceID,
    );
    await setAssignment(serviceID: serviceID);
  }

  Future submitStudyMaterialToLocal({
    @required String assignmentID,
    @required String serviceID,
  }) async {
    await AssignmentGateway.submitStudyMaterialToLocal(
      assignmentModel: _assignmentList[serviceID][assignmentID],
      serviceID: serviceID,
    );
    await setAssignment(serviceID: serviceID);
  }

  Future publishAssigment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    await AssignmentGateway.publishAssignment(
      assignment: assignment,
      serviceID: serviceID,
    );
    await setAssignment(serviceID: serviceID);
  }

  // Future<List<AssignmentModelDropdown>> getAssignmentModelDropDownFromLocal(
  //     {@required String grade,
  //     @required String subject,
  //     @required String entitytype,
  //     @required String entityid}) async {
  //   return await AssignmentGateway.getAssignmentModelDropDownFromLocal(
  //     grade: grade,
  //     subject: subject,
  //     entityid: entityid,
  //     entitytype: entitytype,
  //   );
  // }

  Future<List<StudyMaterial>> getStudyMaterialList(String serviceID) async {
    return await AssignmentGateway.getStudyMaterialList(serviceID);
  }

  Future<AssignmentModel> getAssignmentDataFromLocal(
      String asgid, String serviceID) async {
    return await AssignmentGateway.getAssignmentDataFromLocal(
      asgid,
      serviceID,
    );
  }
}
