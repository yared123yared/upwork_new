import 'package:complex/data/api/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class ILookupProvider {
  Future<Either<Failure, List<String>>> getFeeItemsList(
      {@required String serviceID});
}
