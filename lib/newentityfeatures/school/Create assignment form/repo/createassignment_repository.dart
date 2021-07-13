import 'package:complex/common/model/button_state.dart';

import 'package:complex/newentityfeatures/gateway/assignment_gateway.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import '../presentation/create_assignment_form.dart';

class CreateAssignmentRepositoryReturnData {
  List<AssignmentModel> itemlist;
  AssignmentModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  CreateAssignmentRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class CreateAssignmentRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<CreateAssignmentRepositoryReturnData> getAllCreateAssignments(
      String entitytype, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    //Please put your code here

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
      List<String> gradelist =
          await LookupGateway.getGradeList(serviceID: entityid);
      List<String> sessiontermlist =
          await SessionTermGateway.getSessionStringList(
        serviceID: entityid,
      );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = gradelist;
      gr.sessionterm = sessiontermlist;
      gr.offeringModelGroupfunc = HelperRepository.offeringModelGroupfunc;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }



  Future<CreateAssignmentRepositoryReturnData>
      getCreateAssignmentWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    CreateAssignmentRepositoryReturnData grerror =
        new CreateAssignmentRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<AssignmentModel> list =
          await AssignmentGateway.getPublishedAssignmentsByOfferingGroup(
            offeringgroup: offeringgroup,
        serviceID: entityid,
      );

      CreateAssignmentRepositoryReturnData gr =
          new CreateAssignmentRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<CreateAssignmentRepositoryReturnData> createCreateAssignment(
      AssignmentModel item, String entitytype, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    await AssignmentGateway.addNewAssignment(
      assignment: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<CreateAssignmentRepositoryReturnData> updateCreateAssignment(
      AssignmentModel item, String entitytype, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    await AssignmentGateway.updateAssignment(
      assignment: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }



  Future<CreateAssignmentRepositoryReturnData> publishAssignment(
      AssignmentModel item, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    await AssignmentGateway.publishAssignment(
      assignment: item,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<CreateAssignmentRepositoryReturnData> updateCreateAssignmentWithDiff(
      AssignmentModel newitem,
      AssignmentModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<CreateAssignmentRepositoryReturnData> deleteCreateAssignmentWithData(
      AssignmentModel item, String entitytype, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    // await AssignmentGateway.removeAssignment(
    //   item,
    //   null,
    // );
    await AssignmentGateway.removeAssignmentToLocal(
       item,
      item.assignmentID,entityid
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<CreateAssignmentRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    CreateAssignmentRepositoryReturnData myreturn =
        CreateAssignmentRepositoryReturnData();
    List<AssignmentModel> list =
        await AssignmentGateway.getAssignmentList(serviceID: entityid);

    myreturn.itemlist = list;
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<CreateAssignmentRepositoryReturnData> addStudyMaterial(
    AssignmentModel item,
    file,
    StudyMaterial studyMaterial,
    String entitytype,
    String entityid,
  ) async {
    CreateAssignmentRepositoryReturnData grerror =
        new CreateAssignmentRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      CreateAssignmentRepositoryReturnData myreturn =
          CreateAssignmentRepositoryReturnData();
      List<AssignmentModel> list = await AssignmentGateway.submitStudyMaterial(
          serviceID: entityid, assignmentModel: item);

      var task = await FirebaseStorage.instance
          .ref(
            "studyMaterials/${item.assignmentID}/${file.path.split("/").last}",
          )
          .putFile(file);

      studyMaterial.studyUrl = await task.ref.getDownloadURL();

      myreturn.itemlist = list;
      myreturn.errortype = -1;
      return myreturn;
    } catch (ex) {}
    return grerror;
  }
}

class CreateAssignmentEntryData {
  // final AssignmentModel assignmentModel;
  // final Question questionModel;
  // final StudyMaterial studyMaterialModel;
  // final QuestionStudyMaterialData questionStudyMateriaModel;
  Future<List<TeacherOfferingsAssignment>> Function(String grade) offerings;
  List<String> grades;
  ButtonState buttonState;

  Question question;
  int index;
  String assignmentID;

  StudyMaterial studyMaterial;

  dynamic dynamicListState;
  List<dynamic> listItems;
  // VoidCallback addItemAction;
  //  String appBarTitle;
  //  String inAppTitle;
  bool emptyList;

  int errortype;
  String error;

  CreateAssignmentEntryData({
    //  this.assignmentModel,
    this.offerings,
    this.grades,
    this.buttonState,
    this.question,
    this.index,
    this.assignmentID,
    this.studyMaterial,
    this.dynamicListState,
    this.listItems,
    // this.addItemAction,
    //  this.appBarTitle,
    //  this.inAppTitle,
    this.emptyList,

    //  this.questionModel,
    //  this.studyMaterialModel,
    //  this.questionStudyMateriaModel,
    this.errortype,
    this.error,
  });
}
