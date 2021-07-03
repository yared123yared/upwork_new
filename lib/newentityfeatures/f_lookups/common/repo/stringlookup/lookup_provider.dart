import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';

class LookupProvider extends ILookupProvider {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, FeeItems>> getFeeItemsList({String serviceID}) async {
    Either<Failure, FeeItems> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return FeeItems.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, Grades>> getGradeList({String serviceID}) async {
    Either<Failure, Grades> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return Grades.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, Offerings>> getOfferingsList(
      {String serviceID}) async {
    Either<Failure, Offerings> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return Offerings.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, ClassPeriodInfoList>> getClassPeriodList(
      {String serviceID}) async {
    Either<Failure, ClassPeriodInfoList> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return ClassPeriodInfoList.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, PaymentPeriodInfoList>> getPaymentPeriodList(
      {String serviceID}) async {
    Either<Failure, PaymentPeriodInfoList> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return PaymentPeriodInfoList.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, RoomInfoList>> getRoomsList({String serviceID}) async {
    Either<Failure, RoomInfoList> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return RoomInfoList.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, ExamTermInfoList>> getExamTermList(
      {String serviceID}) async {
    Either<Failure, ExamTermInfoList> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return ExamTermInfoList.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, SessionTermList>> getSessionTermList(
      {String serviceID}) async {
    Either<Failure, SessionTermList> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return SessionTermList.fromJson(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, Unit>> createFeeItemsList(
      {String serviceID, FeeItems feeItem}) async {
    try {
      await _firestoreInstance
          .doc("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
          .update(feeItem.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: "errorType",
          path: "SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST",
          error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: "",
          path: "SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST",
          error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    }
  }
}
