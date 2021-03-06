import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';

mixin AssignmentGateway {
  static Future<List<AssignmentModel>> getAssignmentList({
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .get()
          .then((x) {
        print(x.docs);
        return AssignmentModel.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((e) => e.id).toList(),
        );
      });

  }

  static Future<List<AssignmentModel>> getAssignmentListByStaffId({
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .get()
          .then((x) {
        print(x.docs);
        return AssignmentModel.listFromJson(
          x.docs.map((d) => d.data).toList(),
          x.docs.map((e) => e.id).toList(),
        );
      });

  }


  static Future<void> removeAssignment(
    AssignmentModel assignment,
    String docId,String serviceid
  ) async {

      await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/${serviceid}/ASSIGNMENT/$docId")
          .delete();

  }

  static Future<void> addNewAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {

      await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .add(assignment.toJson());

  }

  static Future<void> attachAssignment({
    @required VrAssignmentModel vrAssignmentModel,
    @required String serviceID,
  }) async {

      await FirebaseFirestore.instance
          .collection(
            "SERVICEPROVIDERINFO/${serviceID}/ASSIGNMENT",
          )
          .doc()
          .set(vrAssignmentModel.toJson());

  }

  static Future updateAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .doc(assignment.assignmentID)
          .set(assignment.toJson());

  }

  static Future<List<Question>> getQuestionsList(String serviceID) async {

      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .get()
          .then((x) {
        List<Question> _questions = [];
        if (x.data()['questions'] != null) {
          x.data()['questions'].forEach((item) {
            _questions.add(item);
          });
        }
        return _questions;
      });

  }

  static Future<List<StudyMaterial>> getStudyMaterialList(
      String serviceID) async {

      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .get()
          .then((x) {
        List<StudyMaterial> _studyMaterial = [];
        if (x.data()['questions'] != null) {
          x.data()['questions'].forEach((item) {
            _studyMaterial.add(item);
          });
        }
        return _studyMaterial;
      });

  }

  static Future submitAssignment( // needs update
      {
    @required AssignmentModel assignmentModel,
    @required Question question,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "q",
        "asgid": "MT8ZjZi7uBDZUzXwtR6X",
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": "Zs65AZliQzlH47u2xQ0l",
        "data": [
          {
            "qid": "None",
            "data": {
              "questiontext": question.questionText,
              "difficultytype": question.difficultyType,
              "questiontype": question.difficultyType,
              "score": question.score,
              "imageurl": [
                {"ord": 1, "url": "gk.ll"},

                /// dummy data here
                {"ord": 2, "url": "gk.ll"}

                /// dummy data here
              ],
              "answers": ["1", "3"],
              "answerdurl": "abc.ul",
              "choices": [
                {"ord": 1, "text": "choice is 1"}, //dummy data here
                {"ord": 2, "text": "choice is 2"}, //dummy data here
                {"ord": 3, "text": "choice is 3"}, //dummy data here
                {"ord": 4, "text": "choice is 4"} //dummy data here
              ]
            }
          },
        ]
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future submitQuestion({
    @required AssignmentModel assignmentModel,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      print("CloudFunction " + "end");
      List<Map> questiondata = <Map>[];
      if (assignmentModel.questions != null)
        assignmentModel.questions.forEach((element) {
          questiondata.add(element.toData());
        });

      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "q",
        "asgid": assignmentModel.assignmentID,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "data": questiondata
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future submitStudyMaterial({
    @required AssignmentModel assignmentModel,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      print("CloudFunction " + "end");
      List<Map> studymaterialdata = <Map>[];
      if (assignmentModel.studyMaterials != null)
        assignmentModel.studyMaterials.forEach((element) {
          studymaterialdata.add(element.toData());
        });
      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "s",
        "asgid": assignmentModel.assignmentID,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "data": studymaterialdata
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  // New Gateways

  static Future<void> addNewAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {

      await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .add(assignment.toJson());

  }

  static Future updateAssignmentToLocal({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT")
          .doc(assignment.assignmentID)
          .update(assignment.toJson());

  }

  static Future<void> removeAssignmentToLocal(
      AssignmentModel assignment, String docId,String serviceid) async {

      await FirebaseFirestore.instance
          .doc(
              "SERVICEPROVIDERINFO/${serviceid}/ASSIGNMENT/$docId")
          .update({
        "data": FieldValue.arrayRemove([assignment.toJson()])
      });

  }

  static Future submitQuestionToLocal({
    @required AssignmentModel assignmentModel,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      print("CloudFunction " + "end");
      List<Map> questiondata = <Map>[];
      if (assignmentModel.questions != null)
        assignmentModel.questions.forEach((element) {
          questiondata.add(element.toData());
        });

      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "q",
        "asgid": assignmentModel.assignmentID,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "data": questiondata
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future submitStudyMaterialToLocal({
    @required AssignmentModel assignmentModel,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      print("CloudFunction " + "end");
      List<Map> studymaterialdata = <Map>[];
      if (assignmentModel.studyMaterials != null)
        assignmentModel.studyMaterials.forEach((element) {
          studymaterialdata.add(element.toData());
        });
      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "s",
        "asgid": assignmentModel.assignmentID,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "data": studymaterialdata
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future publishAssignment({
    @required AssignmentModel assignment,
    @required String serviceID,
  }) async {

      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'AssignmentOperationRequest',
      );
      dynamic resp = await callable.call(<String, dynamic>{
        "optype": "p",
        "asgid": assignment.assignmentID,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID,
        "data": assignment.toJson()
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());

  }

  static Future<List<AssignmentModel>> getPublishedAssignmentsByOfferingGroup({
    @required String offeringgroup,
    @required String serviceID,
  }) async {

      var res = await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FINALASSIGNMENT")
          .where('offering', isEqualTo: offeringgroup)
          .get();

      return res.docs
          .map((e) => AssignmentModel.fromJson(e.data(), e.id))
          .toList();

  }

  static Future<AssignmentModel> getPublishedAssignmentById({
    @required String serviceID,
    @required String assignmentID,
  }) async {

      var res = await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/FINALASSIGNMENT/$assignmentID")
          .get();

      if (res.exists)
        return AssignmentModel.fromJson(res.data(), res.id);
      else
        return null;

  }

  static Future<AssignmentModel> getAssignmentDataFromLocal(
      String asgid, String serviceID) async {

      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/ASSIGNMENT/$asgid")
          .get()
          .then((x) {
        return AssignmentModel.fromJson(x.data(), x.id);
      });

  }
}
