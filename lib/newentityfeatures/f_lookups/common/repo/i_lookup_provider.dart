import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class ILookupProvider {
  Future<Either<Failure, List<String>>> getFeeItemsList(
      {@required String serviceID});
  Future<Either<Failure, List<String>>> getGradeList(
      {@required String serviceID});
  Future<Either<Failure, List<String>>> getOfferingsList(
      {@required String serviceID});
  Future<Either<Failure, List<RoomInfo>>> getRoomsList(
      {@required String serviceID});
  Future<Either<Failure, List<ExamTermInfo>>> getExamTermList(
      {@required String serviceID});
  Future<Either<Failure, List<SessionTerm>>> getSessionTermList(
      {@required String serviceID});
}
