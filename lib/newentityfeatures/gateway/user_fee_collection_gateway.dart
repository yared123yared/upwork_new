import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/user_reg_fee_collection.dart';

class UserFeeCollectionGateWay {
  static Future<UserRegFeeCollectionModel>
      getPaymentDataForIDCardParticularPeriod(
    String serviceID,
    String idcardnum,
    String periodname,
  ) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERFEEPAYMENT")
          .where('idcardnum', isEqualTo: idcardnum)
          .where('paymentperiodname', isEqualTo: periodname)
          .get()
          .then((x) {
        UserRegFeeCollectionModel mdata;
        for (var x1 in x.docs) {
          if (x1.exists) {
            mdata = UserRegFeeCollectionModel.fromJson(x1.data(), x1.id);
            break;
          }
        }
        return mdata;
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<UserRegFeeCollectionModel>> getUserFeeCollectionList({
    @required String serviceID,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/USERFEEPAYMENT")
          .get()
          .then((x) {
        return UserRegFeeCollectionModel.listFromJson(
            x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future<List<PaymentDetails>> getPaymentDetailsList({
    @required String serviceID,
    @required UserRegFeeCollectionModel userRegFeeCollectionModel,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/$serviceID/USERFEEPAYMENT/${userRegFeeCollectionModel.docID}/PINFO")
          .get()
          .then((x) {
        return PaymentDetails.listFromJson(x.docs.map((d) => d.data).toList(),
            x.docs.map((d) => d.id).toList());
      });
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future userRegFeePayProcessingAddMaster({
    @required UserRegFeeCollectionModel userRegFeeCollectionModel,
    @required String serviceID,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "pr_add",
        "prid": null,
        "prnewdata": userRegFeeCollectionModel.toJson(),
        "prolddata": null,
        "chid": null,
        "chnewdata": null,
        "cholddata": null,
        "idcardnum": userRegFeeCollectionModel.idCardNum,
        "sessionterm": userRegFeeCollectionModel.sessionTerm,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future userRegFeePayProcessingMasterUpdate({
    @required UserRegFeeCollectionModel newData,
    @required UserRegFeeCollectionModel oldData,
    @required String serviceID,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "pr_update",
        "prid": oldData.docID,
        "prnewdata": payrecordtoUpdateData(newData, oldData),
        "prolddata": oldData.toJson(),
        "chid": null,
        "chnewdata": null,
        "cholddata": null,
        "idcardnum": oldData.idCardNum,
        "sessionterm": oldData.sessionTerm,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future userRegFeePayProcessingMasterDelete({
    @required String prid,
    @required String serviceID,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "pr_delete",
        "prid": prid,
        "prnewdata": null,
        "prolddata": null,
        "chid": null,
        "chnewdata": null,
        "cholddata": null,
        "idcardnum": null,
        "sessionterm": null,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future userRegFeePayProcessingChildAdd({
    @required String prid,
    @required PaymentDetails chdata,
    @required String serviceID,
    @required String idCardNum,
    @required String sessionTerm,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "ch_add",
        "prid": prid,
        "prnewdata": null,
        "prolddata": null,
        "chid": null,
        "chnewdata": chdata.toData(),
        "cholddata": null,
        "idcardnum": idCardNum,
        "sessionterm": sessionTerm,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Future userRegFeePayProcessingChildUpdate({
    @required String prid,
    @required String chid,
    @required PaymentDetails oldchData,
    @required PaymentDetails newchData,
    @required String serviceID,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "ch_update",
        "prid": prid,
        "prnewdata": null,
        "prolddata": null,
        "chid": chid,
        "chnewdata": paychildrecordtoUpdateData(newchData, oldchData),
        "cholddata": oldchData.toData(),
        "idcardnum": null,
        "sessionterm": null,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  //not implemented , need to think more , even if we should have it
  static Future userRegFeePayProcessingChildDelete({
    @required String prid,
    @required String chid,
    @required String serviceID,
  }) async {
    try {
      final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
        'UserRegistrationFeePaymentProcessingActionRequest',
      );
      print("CloudFunction " + "end");
      dynamic resp = await callable.call(<String, dynamic>{
        "actiontype": "ch_add",
        "prid": prid,
        "prnewdata": null,
        "prolddata": null,
        "chid": chid,
        "chnewdata": null,
        "cholddata": null,
        "idcardnum": null,
        "sessionterm": null,
        "entitytype": "SERVICEPROVIDERINFO",
        "entityid": serviceID
      });
      print("CloudFunction " + callable.toString());
      print("CloudFunction " + resp.data.toString());
    } catch (e) {
      print(e);
      throw e;
    }
  }

  static Map<String, dynamic> payrecordtoUpdateData(
      UserRegFeeCollectionModel newData, UserRegFeeCollectionModel oldData) {
    return {
      if (oldData.otherAmount != newData.otherAmount)
        'totalfeeamount': newData.otherAmount,
      if (oldData.transportFee != newData.transportFee)
        'transportfee': newData.transportFee,
      if (oldData.lateFeeAmount != newData.lateFeeAmount)
        'latefeeamount': newData.lateFeeAmount,
      if (oldData.lateFeeAmountAgreed != newData.lateFeeAmountAgreed)
        'latefeeamountagreed': newData.lateFeeAmountAgreed,
      if (oldData.paymentValidationPending != newData.paymentValidationPending)
        'paymentvalidationpending': newData.paymentValidationPending,
    };
  }

  static Map<String, dynamic> paychildrecordtoUpdateData(
      PaymentDetails newData, PaymentDetails oldData) {
    return {
      if (oldData.amountReceivedDate != newData.amountReceivedDate)
        'amountreceiveddate': newData.amountReceivedDate,
      if (oldData.amountValidateDate != newData.amountValidateDate)
        'amountvalidatedate': newData.amountValidateDate,
      if (oldData.checkDetails != newData.checkDetails)
        'checkdetails': newData.checkDetails,
      if (oldData.creditCardTransactionNum != newData.creditCardTransactionNum)
        'creditcardtransactionnum': newData.creditCardTransactionNum,
      if (oldData.image != newData.image) 'image': newData.image,
      if (oldData.lateFeeIncluded != newData.lateFeeIncluded)
        'latefeeincluded': newData.lateFeeIncluded,
      if (oldData.paymentAmount != newData.paymentAmount)
        'paymentamount': newData.paymentAmount,
      if (oldData.paymentDate != newData.paymentDate)
        'paymentdate': newData.paymentDate,
      if (oldData.paymentMechanism != newData.paymentMechanism)
        'paymentmechanism': newData.paymentMechanism,
      if (oldData.receivedByMemberId != newData.receivedByMemberId)
        'receivedbymemberid': newData.receivedByMemberId,
      if (oldData.receivedByMemberName != newData.receivedByMemberName)
        'receivedbymembername': newData.receivedByMemberName,
    };
  }
}
