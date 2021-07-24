import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/gateway/fee_item_groups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/fee_plans_gateway.dart';
//import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get.dart';

class FeePlanModelRepositoryReturnData {
  List<FeePlanModel> itemlist;
  FeePlanModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  FeePlanModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class FeePlanModelRepository {


  Future<FeePlanModelRepositoryReturnData> getAllFeePlanModels(
      String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();
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

  Future<FeePlanEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    FeePlanEntryData grerror = FeePlanEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> sessions = await SessionTermGateway.getSessionStringList(
        serviceID: entityid,
      );
      List<String> grades =
          await LookupGateway.getGradeList(serviceID: entityid);
      List<PaymentPeriodInfo> paymentPeriods =
          await LookupGateway.getPaymentPeriodInfo(
        serviceID: entityid,
      );
      List<FeeItemGroupsModel> feeItemsGroups =
          await FeeItemGroupsGateway.getFeeItemGroupsList(serviceID: entityid);

      bool editable = true;

      FeePlanEntryData gr = FeePlanEntryData();

      gr.errortype = -1;
      gr.grades = grades;
      gr.editable = editable;
      gr.sessions = sessions;
      gr.paymentPeriods = paymentPeriods;
      gr.feeItemsGroups = feeItemsGroups;

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<FeePlanModelRepositoryReturnData> getFeePlanModelWithOfferingSearch(
      String entitytype, String entityid, String grade) async {
    FeePlanModelRepositoryReturnData grerror =
        new FeePlanModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<FeePlanModel> list =
          await FeePlanGateway.getFeePlanList(serviceID: entityid,entitytype: entitytype);
      FeePlanModelRepositoryReturnData gr =
          new FeePlanModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<FeePlanModelRepositoryReturnData> createFeePlanModel(
      FeePlanModel item, String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();
    await FeePlanGateway.addNewFeePlan(
      serviceID: entityid,
      feePlan: item,entitytype: entitytype
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePlanModelRepositoryReturnData> updateFeePlanModel(
      FeePlanModel item, String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();
    await FeePlanGateway.updateFeePlan(
      serviceID: entityid,entitytype: entitytype,
      feePlan: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePlanModelRepositoryReturnData> updateFeePlanModelWithDiff(
      FeePlanModel newitem,
      FeePlanModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<FeePlanModelRepositoryReturnData> deleteFeePlanModelWithData(
      FeePlanModel item, String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();

    return myreturn;
  }

  Future<FeePlanModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();

    List<FeePlanModel> list =
        await FeePlanGateway.getFeePlanList(serviceID: entityid,entitytype: entitytype);

    myreturn.errortype = -1;
    myreturn.itemlist = list;
    return myreturn;
  }
}

class FeePlanEntryData {
  List<String> sessions;
  List<String> grades;
  List<PaymentPeriodInfo> paymentPeriods;
  List<FeeItemGroupsModel> feeItemsGroups;
  bool editable;

  int errortype;
  String error;
}
