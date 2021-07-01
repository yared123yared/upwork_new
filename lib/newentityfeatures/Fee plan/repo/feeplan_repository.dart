import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/gateway/fee_plans_gateway.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

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
  NewSchoolRepository _schoolRepo = Get.find();

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
          await _schoolRepo.lookup.getGradesList(serviceID: entityid);
      List<String> sessiontermlist =
          await _schoolRepo.lookup.getSessionStringList(
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
    FeePlanEntryData grerror = new FeePlanEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<String> sessions = await _schoolRepo.lookup.getSessionStringList(
        serviceID: entityid,
      );
      List<PaymentPeriodInfo> paymentPeriods =
          await _schoolRepo.lookup.getPaymentPeriodInfoList(
        serviceID: entityid,
      );
      List<FeeItemGroupsModel> feeItemsGroups =
          await _schoolRepo.getFeeItemGroupList(serviceID: entityid);

      bool editable = true;

      FeePlanEntryData gr = new FeePlanEntryData();

      gr.errortype = -1;

      gr.editable = editable;
      gr.sessions = sessions;
      gr.paymentPeriods = paymentPeriods;
      gr.feeItemsGroups = feeItemsGroups;

      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<FeePlanModelRepositoryReturnData> getFeePlanModelWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    FeePlanModelRepositoryReturnData grerror =
        new FeePlanModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<FeePlanModel> list =
          await FeePlanGateway.getFeePlanList(serviceID: entityid);
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
    await _schoolRepo.feePlans.addFeePlan(
      serviceID: entityid,
      feePlan: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePlanModelRepositoryReturnData> updateFeePlanModel(
      FeePlanModel item, String entitytype, String entityid) async {
    FeePlanModelRepositoryReturnData myreturn =
        FeePlanModelRepositoryReturnData();
    await _schoolRepo.feePlans.updateFeePlan(
      serviceID: entityid,
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
        await FeePlanGateway.getFeePlanList(serviceID: entityid);

    myreturn.errortype = -1;
    myreturn.itemlist = list;
    return myreturn;
  }
}

class FeePlanEntryData {
  List<String> sessions;
  List<PaymentPeriodInfo> paymentPeriods;
  List<FeeItemGroupsModel> feeItemsGroups;
  bool editable;

  int errortype;
  String error;
}
