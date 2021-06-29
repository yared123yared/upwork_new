
class UserRegPaymentModel {
  num dueAmount;
  num nextDueAmount;
  String nextPeriodDueDate;
  String nextPeriodEndDate;
  String nextPeriodName;
  String nextPeriodStartDate;
  num paidAmount;
  String periodDueDate;
  String periodEndDate;
  String periodName;
  bool periodSatisfied;
  String periodStartDate;
  num qrCode;
  num version;
  String virtualRoom;
  String studentID;

  UserRegPaymentModel({
    this.dueAmount,
    this.virtualRoom,
    this.version,
    this.qrCode,
//    this.serverSideTimeStamp,
    this.nextDueAmount,
    this.nextPeriodDueDate,
    this.nextPeriodEndDate,
    this.nextPeriodName,
    this.nextPeriodStartDate,
    this.paidAmount,
    this.periodDueDate,
    this.periodEndDate,
    this.studentID,
    this.periodName,
    this.periodSatisfied,
    this.periodStartDate,
  });

  UserRegPaymentModel copyWith({
    num dueAmount,
    num nextDueAmount,
    String nextPeriodDueDate,
    String nextPeriodEndDate,
    String nextPeriodName,
    String nextPeriodStartDate,
    num paidAmount,
    String periodDueDate,
    String periodEndDate,
    String periodName,
    bool periodSatisfied,
    String periodStartDate,
    num qrCode,
    String serverSideTimeStamp,
    num version,
    String virtualRoom,
  }) {
    return UserRegPaymentModel(
        dueAmount: dueAmount ?? this.dueAmount,
        nextDueAmount: nextDueAmount ?? this.nextDueAmount,
        nextPeriodDueDate: nextPeriodDueDate ?? this.nextPeriodDueDate,
        nextPeriodEndDate: nextPeriodEndDate ?? this.nextPeriodEndDate,
        nextPeriodName: nextPeriodName ?? this.nextPeriodName,
        nextPeriodStartDate: nextPeriodStartDate ?? this.nextPeriodStartDate,
        periodSatisfied: periodSatisfied ?? this.periodSatisfied,
        periodStartDate: periodStartDate ?? this.periodStartDate,
        periodEndDate: periodEndDate ?? this.periodEndDate,
        periodName: periodName ?? this.periodName,
        paidAmount: paidAmount ?? this.paidAmount,
        periodDueDate: periodDueDate ?? this.periodDueDate,
        qrCode: qrCode ?? this.qrCode,
//        serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
        version: version ?? this.version,
        virtualRoom: virtualRoom ?? this.virtualRoom);
  }

  UserRegPaymentModel.fromJson(Map<String, dynamic> json, String id) {
    dueAmount = json['dueamount'];
    studentID = id;
    nextDueAmount = json['nextdueamount'];
    nextPeriodDueDate = json['nextperiodduedate'];
    nextPeriodEndDate = json['nextperiodenddate'];
    nextPeriodName = json['nextperiodname'];
    nextPeriodStartDate = json['nextperiodstartdate'];
    paidAmount = json['paidamount'];
    periodDueDate = json['periodduedate'];
    periodEndDate = json['periodenddate'];
    periodName = json['periodname'];
    periodSatisfied = json['periodsatisfied'];
    periodStartDate = json['periodstartdate'];

    qrCode = json['qrcode'];
//    serverSideTimeStamp = json['serversidetimestamp'];
    version = json['version'];
    virtualRoom = json['virtualroom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['dueamount'] = this.dueAmount;

    data['nextdueamount'] = this.nextDueAmount;
    data['nextperiodduedate'] = this.nextPeriodDueDate;
    data['nextperiodenddate'] = this.nextPeriodEndDate;
    data['nextperiodname'] = this.nextPeriodName;
    data['nextperiodstartdate'] = this.nextPeriodStartDate;
    data['paidamount'] = this.paidAmount;
    data['periodduedate'] = this.periodDueDate;
    data['periodenddate'] = this.periodEndDate;
    data['periodname'] = this.periodName;
    data['periodsatisfied'] = this.periodSatisfied;
    data['periodstartdate'] = this.periodStartDate;
    data['qrcode'] = this.qrCode;
//    data['serversidetimestamp'] = this.serverSideTimeStamp;
    data['version'] = this.version;
    data['virtualroom'] = this.virtualRoom;
    return data;
  }

  static List<UserRegPaymentModel> listFromJson(
      List<dynamic> json, List<String> id) {
    List<UserRegPaymentModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(UserRegPaymentModel.fromJson(j(), id[index]));
      });
    }
    return _list;
  }
}
