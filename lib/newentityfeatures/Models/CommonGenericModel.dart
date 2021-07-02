import 'dart:async';

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/offering_model.dart';
import 'package:complex/newentityfeatures/Models/assignment_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
import 'package:complex/newentityfeatures/Models/fee_plan_model.dart';
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';

class GenericLookUpDataUsedForRegistration {
  List<String> grades;
  List<String> sessionterm;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;
  Future<List<String>> Function(String, String) virtualroomlistbygradefunc;
  Future<List<TeacherOfferingsAssignment>> Function(String, String)
      teacherofferingassignmentlistbyGrade;
  Future<List<AssignmentModel>> Function(String, String)
      assignmentModellistbyofferinggroupfunc;
  List<ExamTermInfo> examtermlist;
  List<RoomInfo> roominfolist;
  List<ClassPeriodInfo> classperiodlist;
  List<PaymentPeriodInfo> paymentperiodinfolist;
  List<String> feeitemlist;
  List<String> subjectlist;
  List<SchoolOwner> schoolownerlist;
  List<FeePlanModel> feeplanmodellist;
  Future<List<FeePlanModel>> Function(String, String) feeplanmodellistbyGrade;
  Future<List<FeeItemGroupsModel>> Function(String, String)
      feeitemgrpmodellistbyGrade;

  int errortype;
  String error;
}
