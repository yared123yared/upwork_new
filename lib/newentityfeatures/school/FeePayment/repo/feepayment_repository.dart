import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:complex/newentityfeatures/commonrepo/school_repository.dart';
import 'package:complex/newentityfeatures/gateway/user_fee_collection_gateway.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

class FeePaymentRepositoryReturnData {
  List<UserRegFeeCollectionModel> itemlist;
  List<PaymentDetails> paymentDetailsList;
  UserRegFeeCollectionModel item;
  FeePlanModel feePlan;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  FeePaymentRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class FeePaymentRepository {
  NewSchoolRepository _schoolRepo = Get.find();

  Future<FeePaymentRepositoryReturnData> getAllFeePayments(
    String cardNum,
    String sessionTerm,
    String entitytype,
    String entityid,
  ) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    List<UserRegFeeCollectionModel> usersRegFee =
        await UserFeeCollectionGateWay.getUserFeeCollectionList(
      serviceID: entityid,
    );

    List<UserRegFeeCollectionModel> filteredUsersRegFee = [];
    usersRegFee.forEach((element) {
      if (element.idCardNum == cardNum && element.sessionTerm == sessionTerm)
        filteredUsersRegFee.add(element);
    });

    myreturn.itemlist = filteredUsersRegFee;
    myreturn.errortype = -1;

    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> getAllPaymentDetailsForUserReg(
    UserRegFeeCollectionModel userRegFeeCollectionModel,
    String entitytype,
    String entityid,
  ) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    List<PaymentDetails> paymentDetails =
        await UserFeeCollectionGateWay.getPaymentDetailsList(
      serviceID: entityid,
      userRegFeeCollectionModel: userRegFeeCollectionModel,
    );

    List<FeePlanModel> feePlanModels =
        await _schoolRepo.feePlans.getFeePlanList(
      serviceID: entityid,
    );

    FeePlanModel feePlan;
    feePlanModels.forEach((feePlanModel) {
      if (feePlanModel.feePlanName == userRegFeeCollectionModel.feePlaneName) {
        feePlan = feePlanModel;
      }
    });

    myreturn.paymentDetailsList = paymentDetails;
    myreturn.feePlan = feePlan;
    myreturn.errortype = -1;

    return myreturn;
  }

/* 
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
          await _schoolRepo.lookup.getSessionStringList(
        serviceID: entityid,
      );

      //Please put your code here
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      gr.grades = gradelist;
      gr.sessionterm = sessiontermlist;
      gr.offeringModelGroupfunc = helperrepository.offeringModelGroupfunc;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }
 */
  Future<FeePaymentEntryData> getItemFormNewEntryData(
    UserRegFeeCollectionModel userRegFeeCollectionModel,
    String entitytype,
    String entityid,
  ) async {
    FeePaymentEntryData grerror = FeePaymentEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      List<UserSessionRegModel> users =
          await _schoolRepo.userSessionReg.getUserSessionReg(
        serviceID: entityid,
      );

      List<FeePlanModel> feePlanList =
          await _schoolRepo.feePlans.getFeePlanList(
        serviceID: entityid,
      );

      List<SchoolOwner> membersList = await _schoolRepo.getSchoolOwner(
        entitytype: entitytype,
        entityid: entityid,
        staffcategory: 'instructor',
      );

      FeePaymentEntryData gr = FeePaymentEntryData();

      gr.feePlanList = feePlanList;
      gr.userSessionList = users;
      gr.membersList = membersList;
      gr.errortype = -1;

      return gr;
    } catch (ex) {}
    return grerror;
  }

/* 
  Future<FeePaymentRepositoryReturnData> getFeePaymentWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    FeePaymentRepositoryReturnData grerror =
        new FeePaymentRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      FeePaymentRepositoryReturnData gr = FeePaymentRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }
 */
  Future<FeePaymentRepositoryReturnData> addPaymentDetailsItem(
      UserRegFeeCollectionModel item,
      PaymentDetails paymentDetails,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();
    myreturn.errortype = -2;
    myreturn.error = "UNknown exception has occured";
    try {
      await UserFeeCollectionGateWay.userRegFeePayProcessingChildAdd(
        prid: item.docID,
        chdata: paymentDetails,
        serviceID: entityid,
        idCardNum: item.idCardNum,
        sessionTerm: item.sessionTerm,
      );
      myreturn.errortype = -1;
    } catch (e) {
      print(e);
      return myreturn;
    }

    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> updatePaymentDetailsItemWithDiff(
      UserRegFeeCollectionModel item,
      PaymentDetails newPaymentDetails,
      PaymentDetails oldPaymentDetails,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();
    await UserFeeCollectionGateWay.userRegFeePayProcessingChildUpdate(
      prid: item.docID,
      chid: newPaymentDetails.docID,
      oldchData: newPaymentDetails,
      newchData: oldPaymentDetails,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> deletePaymentDetailsWithData(
      UserRegFeeCollectionModel item,
      PaymentDetails paymentDetails,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    await UserFeeCollectionGateWay.userRegFeePayProcessingChildDelete(
      prid: item.docID,
      chid: paymentDetails.docID,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> createFeePayment(
      UserRegFeeCollectionModel item,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    await UserFeeCollectionGateWay.userRegFeePayProcessingAddMaster(
      userRegFeeCollectionModel: item,
      serviceID: entityid,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> updateFeePayment(
      UserRegFeeCollectionModel item,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<FeePaymentRepositoryReturnData> updateFeePaymentWithDiff(
      UserRegFeeCollectionModel newitem,
      UserRegFeeCollectionModel olditem,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    await _schoolRepo.updateUserRegFeePayProcessingMaster(
      newData: newitem,
      oldData: olditem,
      serviceID: entityid,
    );

    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> deleteFeePaymentWithData(
      UserRegFeeCollectionModel item,
      String entitytype,
      String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();

    await UserFeeCollectionGateWay.userRegFeePayProcessingMasterDelete(
      prid: item.docID,
      serviceID: entityid,
    );
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<FeePaymentRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    FeePaymentRepositoryReturnData myreturn = FeePaymentRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}

class FeePaymentEntryData {
  List<FeePlanModel> feePlanList;
  List<UserSessionRegModel> userSessionList;
  List<PaymentDetails> paymentDetails;
  List<SchoolOwner> membersList;

  int errortype;
  String error;
}
