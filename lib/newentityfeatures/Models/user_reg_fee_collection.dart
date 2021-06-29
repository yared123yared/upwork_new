import 'package:complex/common/helputil.dart';

class UserRegFeeCollectionModel {
  num totalpaymentmade;
  num feeAmount;
  num otherAmount;
  num lateFeeAmount;
  num lateFeeAmountAgreed;
  num rollNum;
  num transportFee;
  num totalFeeAmount;
  num version;
  String feePlaneName;
  String feePlanType;
  String idCardNum;
  String paymentPeriodName;
  String paymentPeriodType;
  String userName;
  String virtualRoomId;
  String sessionTerm;
  String docID;
  DateTime periodEndDay;
  DateTime periodStartDay;
  bool paymentValidationPending;

  ///if the
  bool closed;

  UserRegFeeCollectionModel({
    this.feePlanType,
    this.idCardNum,
    this.paymentPeriodName,
    this.totalpaymentmade,
    this.feeAmount,
    this.feePlaneName,
    this.lateFeeAmount,
    this.lateFeeAmountAgreed,
    this.paymentPeriodType,
    this.paymentValidationPending,
    this.periodEndDay,
    this.periodStartDay,
    this.rollNum,
    this.transportFee,
    this.userName,
    this.virtualRoomId,
    this.otherAmount,
    this.sessionTerm,
    this.totalFeeAmount,
    this.docID,
    this.closed,
  }) : this.version = 1;

  UserRegFeeCollectionModel copyWith({
    num totalPaymentMade,
    num feeAmount,
    num otherAmount,
    num lateFeeAmount,
    num lateFeeAmountAgreed,
    num rollNum,
    num transportFee,
    num totalfeeamount,
    num version,
    String feePlaneName,
    String feePlanType,
    String idCardNum,
    String paymentPeriodName,
    String paymentPeriodType,
    String userName,
    String virtualRoomId,
    String sessionTerm,
    String docID,
    DateTime periodEndDay,
    DateTime periodStartDay,
    bool paymentValidationPending,
    bool closed,
  }) {
    return UserRegFeeCollectionModel(
        totalpaymentmade: totalPaymentMade ?? this.totalpaymentmade,
        feeAmount: feeAmount ?? this.feeAmount,
        feePlaneName: feePlaneName ?? this.feePlaneName,
        feePlanType: feePlanType ?? this.feePlanType,
        idCardNum: idCardNum ?? this.idCardNum,
        lateFeeAmount: lateFeeAmount ?? this.lateFeeAmount,
        lateFeeAmountAgreed: lateFeeAmountAgreed ?? this.lateFeeAmountAgreed,
        paymentPeriodName: paymentPeriodName ?? this.paymentPeriodName,
        paymentPeriodType: paymentPeriodType ?? this.paymentPeriodType,
        paymentValidationPending:
            paymentValidationPending ?? this.paymentValidationPending,
        periodEndDay: periodEndDay ?? this.periodEndDay,
        periodStartDay: periodStartDay ?? this.periodStartDay,
        rollNum: rollNum ?? this.rollNum,
        transportFee: transportFee ?? this.transportFee,
        userName: userName ?? this.userName,
        virtualRoomId: virtualRoomId ?? this.virtualRoomId,
        // version: version ?? this.version,
        otherAmount: otherAmount ?? this.otherAmount,
        sessionTerm: sessionTerm ?? this.sessionTerm,
        totalFeeAmount: totalfeeamount ?? this.totalFeeAmount,
        closed: closed ?? this.closed);
  }

  UserRegFeeCollectionModel.fromJson(Map<String, dynamic> json, String id) {
    docID = id;
    closed = json['closed'];
    totalFeeAmount = json['totalfeeamount'];
    totalpaymentmade = json['totalpaymentmade'];
    feeAmount = json['feeamount'];
    feePlaneName = json['feeplanname'];
    feePlanType = json['feeplantype'];
    idCardNum = json['idcardnum'];
    lateFeeAmount = json['latefeeamount'];
    lateFeeAmountAgreed = json['latefeeamountagreed'];
    paymentPeriodName = json['paymentperiodname'];
    paymentPeriodType = json['paymentperiodtype'];
    paymentValidationPending = json['paymentvalidationpending'];
    periodEndDay = json['periodenddate'] is int
        ? HelpUtil.toDate(timestamp: json['periodenddate'])
        : DateTime.now();
    periodStartDay = json['periodstartdate'] is int
        ? HelpUtil.toDate(timestamp: json['periodstartdate'])
        : DateTime.now();
    rollNum = json['rollnum'];
    transportFee = json['transportfee'];
    userName = json['username'];
    version = json['version'];
    virtualRoomId = json['virtualroomid'];
    otherAmount = json['otheramount'];
    sessionTerm = json['sessionterm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['closed'] = this.closed;
    data['totalfeeamount'] = this.totalFeeAmount;
    data['sessionterm'] = this.sessionTerm;
    data['otheramount'] = this.otherAmount;
    data['totalpaymentmade'] = this.totalpaymentmade;
    data['feeamount'] = this.feeAmount;
    data['feeplanname'] = this.feePlaneName;
    data['feeplantype'] = this.feePlanType;
    data['idcardnum'] = this.idCardNum;
    data['latefeeamount'] = this.lateFeeAmount;
    data['latefeeamountagreed'] = this.lateFeeAmountAgreed;
    data['paymentperiodname'] = this.paymentPeriodName;
    data['paymentperiodtype'] = this.paymentPeriodType;
    data['paymentvalidationpending'] = this.paymentValidationPending;
    data['periodenddate'] =
        1301; //CommonUIHandler.toTimeStamp(dateTime: this.periodEndDay) ??
    data['periodstartdate'] =
        1901; // CommonUIHandler.toTimeStamp(dateTime: this.periodStartDay) ??
    data['rollnum'] = this.rollNum;
    data['transportfee'] = this.transportFee;
    data['username'] = this.userName;
    data['version'] = this.version;
    data['virtualroomid'] = this.virtualRoomId;
    return data;
  }

  static List<UserRegFeeCollectionModel> listFromJson(
      List<dynamic> json, List<String> docIDList) {
    List<UserRegFeeCollectionModel> _list = [];
    if (json != null) {
      json.asMap().forEach((i, j) {
        _list.add(UserRegFeeCollectionModel.fromJson(j(), docIDList[i]));
      });
    }
    return _list;
  }
}

class PaymentDetails {
  String amountReceivedDate;
  String amountValidateDate;
  String checkDetails;
  num creditCardTransactionNum;
  String image;
  bool lateFeeIncluded;
  num paymentAmount;
  String paymentDate;
  String paymentMechanism;
  String receivedByMemberId;
  String receivedByMemberName;
  String docID;

  PaymentDetails({
    this.amountReceivedDate,
    this.amountValidateDate,
    this.checkDetails,
    this.creditCardTransactionNum,
    this.image,
    this.lateFeeIncluded,
    this.paymentAmount,
    this.paymentDate,
    this.paymentMechanism,
    this.receivedByMemberId,
    this.receivedByMemberName,
  });

  PaymentDetails copyWith({
    String amountReceivedDate,
    String amountValidateDate,
    String checkDetails,
    num creditCardTransactionNum,
    String image,
    bool lateFeeIncluded,
    num paymentAmount,
    String paymentDate,
    String paymentMechanism,
    String receivedByMemberId,
    String receivedByMemberName,
  }) {
    return PaymentDetails(
        amountReceivedDate: amountReceivedDate ?? this.amountReceivedDate,
        amountValidateDate: amountValidateDate ?? this.amountValidateDate,
        checkDetails: checkDetails ?? this.checkDetails,
        creditCardTransactionNum:
            creditCardTransactionNum ?? this.creditCardTransactionNum,
        image: image ?? this.image,
        lateFeeIncluded: lateFeeIncluded ?? this.lateFeeIncluded,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        paymentDate: paymentDate ?? this.paymentDate,
        paymentMechanism: paymentMechanism ?? this.paymentMechanism,
        receivedByMemberId: receivedByMemberId ?? this.receivedByMemberId,
        receivedByMemberName:
            receivedByMemberName ?? this.receivedByMemberName);
  }

  PaymentDetails.fromData(Map<String, dynamic> data, String id) {
    docID = id;
    amountReceivedDate = data['amountrecvddate'];
    amountValidateDate = data['amountvalidatedate'];
    checkDetails = data['checkdetails'];
    creditCardTransactionNum = data['creditcardtransactionnum'];
    image = data['image'];
    lateFeeIncluded = data['latefeeincluded'];
    paymentAmount = data['paymentamount'];
    paymentDate = data['paymentdate'];
    paymentMechanism = data['paymentmechanism'];
    receivedByMemberId = data['recvdbymemberid'];
    receivedByMemberName = data['recvdbymembername'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['amountrecvddate'] = this.amountReceivedDate;
    data['amountvalidatedate'] = this.amountValidateDate;
    data['checkdetails'] = this.checkDetails;
    data['creditcardtransactionnum'] = this.creditCardTransactionNum;
    data['image'] = this.image;
    data['latefeeincluded'] = this.lateFeeIncluded;
    data['paymentamount'] = this.paymentAmount;
    data['paymentdate'] = this.paymentDate;
    data['paymentmechanism'] = this.paymentMechanism;
    data['recvdbymemberid'] = this.receivedByMemberId;
    data['recvdbymembername'] = this.receivedByMemberName;

    return data;
  }

  static List<PaymentDetails> listFromJson(
      List<dynamic> json, List<String> docIDList) {
    List<PaymentDetails> _list = [];
    if (json != null) {
      json.asMap().forEach((i, j) {
        _list.add(PaymentDetails.fromData(j(), docIDList[i]));
      });
    }
    return _list;
  }
}
