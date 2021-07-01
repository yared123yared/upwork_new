import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/lookup/lookup.dart';
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
}
