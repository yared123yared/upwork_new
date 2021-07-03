import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class ILookupProvider {
  Future<Either<Failure, FeeItems>> getFeeItemsList(
      {@required String serviceID});
  Future<Either<Failure, Grades>> getGradeList({@required String serviceID});
  Future<Either<Failure, Offerings>> getOfferingsList(
      {@required String serviceID});
  Future<Either<Failure, RoomInfoList>> getRoomsList(
      {@required String serviceID});
  Future<Either<Failure, ExamTermInfoList>> getExamTermList(
      {@required String serviceID});
  Future<Either<Failure, SessionTermList>> getSessionTermList(
      {@required String serviceID});
  Future<Either<Failure, ClassPeriodInfoList>> getClassPeriodList(
      {@required String serviceID});
  Future<Either<Failure, PaymentPeriodInfoList>> getPaymentPeriodList(
      {@required String serviceID});
  Future<Option<Failure>> createFeeItem(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteFeeItem(
      {@required String serviceID, @required String feeItem});

  Future<Option<Failure>> createGrade(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteDeleteGrade(
      {@required String serviceID, @required String feeItem});

  Future<Option<Failure>> createOfferingItem(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteOfferingItem(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> createRoomItem(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteRoomItem(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> createExamTerm(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteExamTerm(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> createSessionTerm(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteSessionTerm(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> createClassPeriod(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deleteClassPeriod(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> createPaymentPeriod(
      {@required String serviceID, @required String feeItem});
  Future<Option<Failure>> deletePaymentPeriod(
      {@required String serviceID, @required String feeItem});
}
