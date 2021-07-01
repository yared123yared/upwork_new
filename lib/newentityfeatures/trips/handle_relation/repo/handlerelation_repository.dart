import 'package:complex/newentityfeatures/gateway/vr_assignment_gateway.dart';
import 'package:complex/newentityfeatures/Models/vrassignment_model.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';

class HandleRelationsRepositoryReturnData {
  List<VrAssignmentModel> itemlist;
  VrAssignmentModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  HandleRelationsRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class HandleRelationsRepository {
  Future<HandleRelationsRepositoryReturnData> getAllHandleRelations(
      String entitytype, String entityid) async {
    HandleRelationsRepositoryReturnData myreturn =
        HandleRelationsRepositoryReturnData();

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

  Future<GenericLookUpDataUsedForRegistration> getItemFormNewEntryData(
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
    } catch (ex) {}
    return grerror;
  }

  Future<HandleRelationsRepositoryReturnData>
      getHandleRelationWithOfferingSearch(String entitytype, String entityid,
          String sessionterm, String offeringgroup) async {
    HandleRelationsRepositoryReturnData grerror =
        new HandleRelationsRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<VrAssignmentModel> vrlist =
          await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
              serviceID: entityid,
              sessionTerm: sessionterm,
              offering: offeringgroup);
      //Please put your code here
      HandleRelationsRepositoryReturnData gr =
          new HandleRelationsRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = vrlist;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<HandleRelationsRepositoryReturnData> createHandleRelation(
      VrAssignmentModel item, String entitytype, String entityid) async {
    HandleRelationsRepositoryReturnData myreturn =
        HandleRelationsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<HandleRelationsRepositoryReturnData> updateHandleRelation(
      VrAssignmentModel item, String entitytype, String entityid) async {
    HandleRelationsRepositoryReturnData myreturn =
        HandleRelationsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<HandleRelationsRepositoryReturnData> updateHandleRelationWithDiff(
      VrAssignmentModel newitem,
      VrAssignmentModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<HandleRelationsRepositoryReturnData> deleteHandleRelationWithData(
      VrAssignmentModel item, String entitytype, String entityid) async {
    HandleRelationsRepositoryReturnData myreturn =
        HandleRelationsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<HandleRelationsRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    HandleRelationsRepositoryReturnData myreturn =
        HandleRelationsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  // void setFields(
  //     {DateTime startDate, RegisteredUser staff, Relation relation}) {
  //   if (startDate != null) {
  //     this.startDate = startDate;
  //   }
  //   if (staff != null) {
  //     this.staff = staff;
  //   }
  //   if (relation != null) {
  //     this.relation = relation;
  //   }
  // }

}
