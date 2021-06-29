import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class FeeItemGroupsModel extends Equatable {
  String scheduleName;
  String usedByFeePlan;
  num version;
  String grade;
  List<FeeItem> feeItem;

  FeeItemGroupsModel(
      {this.scheduleName,
      this.feeItem,
      this.usedByFeePlan,
      this.version,
      this.grade}) {
    this.feeItem ??= [];
  }

  @override
  List<Object> get props =>
      [scheduleName, grade, feeItem, usedByFeePlan, version];

  FeeItemGroupsModel copyWith({
    String scheduleName,
    String usedByFeePlan,
    num version,
    String grade,
    List<String> data,
  }) {
    return FeeItemGroupsModel(
        scheduleName: scheduleName ?? this.scheduleName,
        feeItem: data ?? this.feeItem ?? [],
        usedByFeePlan: usedByFeePlan ?? this.usedByFeePlan,
        version: version ?? this.version,
        grade: grade ?? this.grade);
  }

  FeeItemGroupsModel.fromJson(Map<String, dynamic> json) {
    scheduleName = json['schedulename'];

    feeItem =
        (json['data'] as List)?.map((e) => FeeItem.fromData(e))?.toList() ?? [];

    usedByFeePlan = json['usedbyfeeplan'];
    version = json['version'];
    grade = json['grade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();

    json['schedulename'] = this.scheduleName;
    json['usedbyfeeplan'] = this.usedByFeePlan;
    json['data'] = this.feeItem.map((e) => e.toData()).toList();
    json['version'] = this.version;
    json['grade'] = this.grade;

    return json;
  }

  static List<FeeItemGroupsModel> listFromJson(List<dynamic> json) {
    List<FeeItemGroupsModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(FeeItemGroupsModel.fromJson(j()));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class FeeItem extends Equatable {
  num amount;
  String feeItemName;
  bool isDiscountApplicable;
  bool isProrated;
  num tax;

  FeeItem(
      {this.amount,
      this.feeItemName,
      this.isDiscountApplicable,
      this.tax,
      this.isProrated});

  FeeItem copyWith({
    num amount,
    String feeItemName,
    bool isDiscountApplicable,
    bool isProrated,
    num tax,
  }) {
    return FeeItem(
        amount: amount ?? this.amount,
        feeItemName: feeItemName ?? this.feeItemName,
        isDiscountApplicable: isDiscountApplicable ?? this.isDiscountApplicable,
        tax: tax ?? this.tax,
        isProrated: isProrated ?? this.isProrated);
  }

  @override
  List<Object> get props =>
      [amount, feeItemName, isDiscountApplicable, tax, isProrated];
  FeeItem.fromData(Map<String, dynamic> data) {
    amount = data["amount"];
    feeItemName = data["feeitemname"];
    isDiscountApplicable = data["isdiscountapplicable"];
    tax = data["tax"];
    isProrated = data["isprorated"];
  }
  Map<String, dynamic> toData() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['amount'] = this.amount;
    json["feeitemname"] = this.feeItemName;
    json["isdiscountapplicable"] = this.isDiscountApplicable;
    json["tax"] = this.tax;
    json["isprorated"] = this.isProrated;
    return json;
  }
}
