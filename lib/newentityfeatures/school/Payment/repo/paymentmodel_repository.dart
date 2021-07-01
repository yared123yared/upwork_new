import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/commonrepo/helperrepository.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class PaymentModelRepositoryReturnData {
  List<PaymentPeriodInfo> itemlist;
  PaymentPeriodInfo item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  PaymentModelRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class PaymentModelRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<PaymentModelRepositoryReturnData> getAllPaymentModels(
      String entitytype, String entityid) async {
    PaymentModelRepositoryReturnData myreturn =
        PaymentModelRepositoryReturnData();
    //Please put your code here

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

  Future<PaymentDataEntry> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    PaymentDataEntry grerror = PaymentDataEntry();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      PaymentPeriodInfo paymentPeriodInfo;
      List<String> sessions = await _schoolRepo.lookup.getSessionStringList(
        serviceID: entityid,
      );
      bool editable = true;

      PaymentDataEntry gr = PaymentDataEntry(
        paymentPeriodInfo: paymentPeriodInfo,
        sessions: sessions,
        editable: editable,
        errortype: -1,
      );
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<PaymentModelRepositoryReturnData> getPaymentModelWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    PaymentModelRepositoryReturnData grerror =
        new PaymentModelRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<PaymentPeriodInfo> list = await _schoolRepo.lookup
          .getPaymentPeriodInfoList(serviceID: entityid);

      // await VrAssignmentGateway.getVrAssignmentListForOfferingGroup(
      //     serviceID: entityid,
      //     sessionTerm: sessionterm,
      //     offering: offeringgroup);

      PaymentModelRepositoryReturnData gr =
          new PaymentModelRepositoryReturnData();
      gr.errortype = -1;
      gr.itemlist = list;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<PaymentModelRepositoryReturnData> createPaymentModel(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    PaymentModelRepositoryReturnData myreturn =
        PaymentModelRepositoryReturnData();
    await _schoolRepo.lookup.addPaymentPeriodInfo(
      serviceID: entityid,
      paymentPeriodInfo: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PaymentModelRepositoryReturnData> updatePaymentModel(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<PaymentModelRepositoryReturnData> updatePaymentModelWithDiff(
      PaymentPeriodInfo newitem,
      PaymentPeriodInfo olditem,
      String entitytype,
      String entityid) async {
    PaymentModelRepositoryReturnData myreturn =
        PaymentModelRepositoryReturnData();
    await _schoolRepo.lookup.updatePaymentPeriodInfo(
      serviceID: entityid,
      oldPaymentPeriodInfo: olditem,
      paymentPeriodInfo: newitem,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PaymentModelRepositoryReturnData> deletePaymentModelWithData(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    PaymentModelRepositoryReturnData myreturn =
        PaymentModelRepositoryReturnData();
    await _schoolRepo.lookup.deletePaymentPeriodInfo(
      serviceID: entityid,
      paymentPeriodInfo: item,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<PaymentModelRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    List<PaymentPeriodInfo> list =
        await _schoolRepo.lookup.getPaymentPeriodInfoList(serviceID: entityid);

    PaymentModelRepositoryReturnData myreturn =
        PaymentModelRepositoryReturnData();
    myreturn.errortype = -1;
    myreturn.itemlist = list;
    return myreturn;
  }
}

class PaymentDataEntry {
  PaymentPeriodInfo paymentPeriodInfo;
  List<String> sessions;
  bool editable;
  int errortype;
  String error;

  PaymentDataEntry({
    this.paymentPeriodInfo,
    this.sessions,
    this.editable,
    this.errortype,
    this.error,
  });
}
