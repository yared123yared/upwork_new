import 'package:complex/domain/entity/school/lookup/lookup.dart';

class PaymentPeriodInfoRepositoryReturnData {
  List<PaymentPeriodInfo> itemlist;
  PaymentPeriodInfo item;
  String id;
  int errortype;
  String error;
  List<String> sessionterms;
  PaymentPeriodInfoRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class PaymentPeriodInfoRepository {
  Future<PaymentPeriodInfoRepositoryReturnData> getAllPaymentPeriodInfos(
      String entitytype, String entityid) async {
    PaymentPeriodInfoRepositoryReturnData myreturn =
        PaymentPeriodInfoRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<PaymentPeriodInfoRepositoryReturnData> createPaymentPeriodInfo(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    PaymentPeriodInfoRepositoryReturnData myreturn =
        PaymentPeriodInfoRepositoryReturnData();
    //Please put your code here

    return myreturn;
  }

  Future<PaymentPeriodInfoRepositoryReturnData> updatePaymentPeriodInfo(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<PaymentPeriodInfoRepositoryReturnData> updatePaymentPeriodInfoWithDiff(
      PaymentPeriodInfo newitem,
      PaymentPeriodInfo olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<PaymentPeriodInfoRepositoryReturnData> deletePaymentPeriodInfoWithData(
      PaymentPeriodInfo item, String entitytype, String entityid) async {
    return null;
  }

  Future<PaymentPeriodInfoRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    PaymentPeriodInfoRepositoryReturnData myreturn =
        PaymentPeriodInfoRepositoryReturnData();
    myreturn.errortype = -1;
    //Please put your code here
    return myreturn;
  }
}
