import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:complex/common/helputil.dart';

// ignore: must_be_immutable
class FeePlanModel extends Equatable {
  String feePlanType;
  DateTime endDate;
  List<FeeData> feeData;
  DateTime startDate;
  String paymentPeriodType;
  List<DiscountType> discountType;
  String grade;
  int version;
  String feePlanName;
  String termName;
  String desc;

  FeePlanModel({
    @required this.feePlanType,
    @required this.endDate,
    @required this.feeData,
    @required this.startDate,
    @required this.paymentPeriodType,
    @required this.discountType,
    @required this.feePlanName,
    @required this.termName,
    @required this.grade,
    @required this.desc,
  }) : version = 2;

  @override
  List<Object> get props => [
        version,
        endDate,
        feeData,
        startDate,
        paymentPeriodType,
        discountType,
        version,
        feePlanName,
        termName,
        grade,
        desc
      ];

  FeePlanModel copyWith({
    String feePlanType,
    String endDate,
    List<FeeData> feeData,
    String startDate,
    String paymentPeriodType,
    List<DiscountType> discountType,
    int version,
    String grade,
    String feePlanName,
    String termName,
    String desc,
  }) {
    return FeePlanModel(
      feePlanType: feePlanType ?? this.feePlanType,
      endDate: endDate ?? this.endDate,
      feeData: feeData ?? this.feeData,
      startDate: startDate ?? this.startDate,
      paymentPeriodType: paymentPeriodType ?? this.paymentPeriodType,
      discountType: discountType ?? this.discountType,
      feePlanName: feePlanName ?? this.feePlanName,
      termName: termName ?? this.termName,
      grade: grade ?? this.grade,
      desc: desc ?? this.desc,
    );
  }

  FeePlanModel.fromJson(Map<String, dynamic> json)
      : this(
            feeData: (json['feeData'] as List)
                ?.map((e) => FeeData.fromData(e))
                ?.toList(),
            discountType: (json['discountType'] as List)
                ?.map((e) => DiscountType.fromData(e))
                ?.toList(),
            endDate: (json['endDate'] as Timestamp)?.toDate(),
            startDate: (json['startDate'] as Timestamp)?.toDate(),
            feePlanType: json['feePlanType'],
            paymentPeriodType: json['paymentPeriodType'],
            feePlanName: json['feePlanName'],
            termName: json['termName'],
            desc: json['desc'],
            grade: json['grade']);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "feeData": this.feeData.map((e) => e.toData()).toList(),
      "discountType": this.discountType.map((e) => e.toData()).toList(),
      "feePlanName": this.feePlanName,
      "feePlanType": this.feePlanType,
      "termName": this.termName,
      "grade": this.grade,
      "desc": this.desc,
      "endDate": this.endDate,
      "startDate": this.startDate,
      "paymentPeriodType": this.paymentPeriodType,
      "version": this.version,
    };
  }

  static List<FeePlanModel> listFromJson(List<dynamic> json) {
    List<FeePlanModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(FeePlanModel.fromJson(j()));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class FeeData extends Equatable {
  String paymentPeriodName;
  int totalAmount;
  int numDays;
  List<String> feeScheduleName;
  DateTime startDate;
  DateTime endDate;
  DateTime dueDate;

  FeeData({
    this.endDate,
    this.paymentPeriodName,
    this.totalAmount,
    this.dueDate,
    this.feeScheduleName,
    this.startDate,
    this.numDays,
  });

  FeeData copyWith(
      {String endDate,
      String paymentPeriodName,
      int totalAmount,
      String dueDate,
      List<String> feeScheduleName,
      String startDate,
      int numDays}) {
    return FeeData(
        endDate: endDate ?? this.endDate,
        paymentPeriodName: paymentPeriodName ?? this.paymentPeriodName,
        totalAmount: totalAmount ?? this.totalAmount,
        dueDate: dueDate ?? this.dueDate,
        feeScheduleName: feeScheduleName ?? this.feeScheduleName,
        startDate: startDate ?? this.startDate,
        numDays: numDays ?? this.numDays);
  }

  @override
  List<Object> get props => [
        endDate,
        paymentPeriodName,
        totalAmount,
        dueDate,
        feeScheduleName,
        startDate,
        numDays
      ];

  FeeData.fromData(Map<String, dynamic> json) {
    endDate = json['enddate'] is int
        ? HelpUtil.toDate(timestamp: json['enddate'])
        : DateTime.now();
    paymentPeriodName = json['paymentperiodname'];
    totalAmount = json['totalamount'];
    dueDate = json['duedate'] is int
        ? HelpUtil.toDate(timestamp: json['startdate'])
        : DateTime.now();
    if (json['feeschedulename'] != null) {
      feeScheduleName = new List<String>();
      json['feeschedulename'].forEach((v) {
        feeScheduleName.add((v));
      });
    } else {
      feeScheduleName = [];
    }
    startDate = json['startdate'] is int
        ? HelpUtil.toDate(timestamp: json['startdate'])
        : DateTime.now();
    numDays = json['numdays'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enddate'] = this.endDate;
    data['paymentperiodname'] = this.paymentPeriodName;
    data['totalamount'] = this.totalAmount;
    data['duedate'] = this.dueDate;
    data['startdate'] = this.startDate;
    data['numdays'] = this.numDays;
    return data;
  }
}

// ignore: must_be_immutable
class DiscountType extends Equatable {
  int sibling;
  int parent;

  DiscountType({this.sibling, this.parent});

  DiscountType copyWith({
    int sibling,
    int parent,
  }) {
    return DiscountType(
      sibling: sibling ?? this.sibling,
      parent: parent ?? this.parent,
    );
  }

  @override
  List<Object> get props => [sibling, parent];

  DiscountType.fromData(Map<String, dynamic> json) {
    sibling = json['SIBLING'];
    parent = json['PARENT'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['SIBLING'] = this.sibling;
    data['PARENT'] = this.parent;
    return data;
  }
}
