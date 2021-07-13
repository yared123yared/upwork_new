

import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_score_model.dart';

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



  Future addAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.addNewAssignment(
        assignment: assignment,
        serviceID: serviceID,
      );
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



  Future<VrAssignmentScoreModel> getAssignmentScore({
    @required String serviceID,
    @required String sessionTerm,
    @required String vrAssignmentID,
  }) async {
    try {
      return VRAssignmentScoreGateway.getScoreModel(
        serviceID: serviceID,
        sessionTerm: sessionTerm,
        vrAssignmentID: vrAssignmentID,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<List<AnsweredPaper>> getVrAssignmentScoreForSingleStudent({
    @required String sessionterm,
    @required String vrid,
    @required String idcardnum,
    @required String entityid,
  }) async {
    try {
      // DODODO
      return VrAssignmentGateway.getVrAssignmentScoreForSingleStudent(
        entityid: entityid,
        idcardnum: idcardnum,
        sessionterm: sessionterm,
        vrid: vrid,
      );
    } catch (e) {
      print(e);
    }
  }



  // New Repository
  Future addNewAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.addNewAssignmentToLocal(
        assignment: assignment,
        serviceID: serviceID,
      );

    } catch (e) {
      print(e);
    }
  }

  Future updateAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.updateAssignmentToLocal(
        assignment: assignment,
        serviceID: serviceID,
      );

    } catch (e) {
      print(e);
    }
  }

  Future removeAssignmentToLocal(
      {AssignmentModel assignment, String docId}) async {
    try {
      await AssignmentGateway.removeAssignmentToLocal(assignment, docId);

    } catch (e) {
      print(e);
    }
  }


  Future publishAssigment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {
    try {
      await AssignmentGateway.publishAssignment(
        assignment: assignment,
        serviceID: serviceID,
      );

    } catch (e) {
      print(e);
    }
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
  // } catch (e) {

  Future<List<StudyMaterial>> getStudyMaterialList(String serviceID) async {
    try {
      return await AssignmentGateway.getStudyMaterialList(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<AssignmentModel> getAssignmentDataFromLocal(
      String asgid, String serviceID) async {
    try {
      return await AssignmentGateway.getAssignmentDataFromLocal(
        asgid,
        serviceID,
      );
    } catch (e) {
      print(e);
    }
  }
}
