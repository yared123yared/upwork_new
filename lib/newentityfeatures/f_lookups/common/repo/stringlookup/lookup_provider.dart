import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:dartz/dartz.dart';

class LookupProvider extends ILookupProvider {
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
}
