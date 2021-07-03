import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';

import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:dartz/dartz.dart';

class LookupProvider extends ILookupProvider {
  String lookupEndPoint(String serviceID) =>
      "SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST";
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
  Future<Option<Failure>> createFeeItem(
      {String serviceID, String feeItem}) async {
    final Option<Failure> response = await ApiHelper(lookupEndPoint(serviceID))
        .addItemsInDocArrayFirestore(
            errorType: 'Fee Item',
            fieldName: 'feeitemlist',
            elements: [feeItem]);

    return response;
  }

  @override
  Future<Option<Failure>> deleteFeeItem(
      {String serviceID, String feeItem}) async {
    final Option<Failure> response = await ApiHelper(lookupEndPoint(serviceID))
        .removeItemsFromDocsArrayFirestore(
            errorType: 'Fee Item',
            fieldName: 'feeitemlist',
            elements: [feeItem]);

    return response;
  }

  @override
  Future<Option<Failure>> createClassPeriod(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createExamTerm(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createGrade(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createOfferingItem(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createPaymentPeriod(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createRoomItem(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> createSessionTerm(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteClassPeriod(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteDeleteGrade(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteExamTerm(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteOfferingItem(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deletePaymentPeriod(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteRoomItem(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }

  @override
  Future<Option<Failure>> deleteSessionTerm(
      {String serviceID, String feeItem}) async {
    return some(ExceptionFailure(
        returnType: 'not implemented',
        path: 'not implemented',
        error: 'not implemented'));
  }
}
