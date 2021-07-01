import 'package:complex/data/api/api_helper.dart';
import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/common/repo/i_lookup_provider.dart';
import 'package:dartz/dartz.dart';

class LookupProvider extends ILookupProvider {
  @override
  Future<Either<Failure, List<String>>> getFeeItemsList(
      {String serviceID}) async {
    Either<Failure, List<String>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return List<String>.from(json['feeitemlist']);
    });

    return response;
  }

  @override
  Future<Either<Failure, List<String>>> getGradeList({String serviceID}) async {
    Either<Failure, List<String>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return List<String>.from(json['grades']);
    });

    return response;
  }

  @override
  Future<Either<Failure, List<String>>> getOfferingsList(
      {String serviceID}) async {
    Either<Failure, List<String>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return List<String>.from(json['subject']);
    });

    return response;
  }

  @override
  Future<Either<Failure, List<RoomInfo>>> getRoomsList(
      {String serviceID}) async {
    Either<Failure, List<RoomInfo>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return RoomInfoList.fromJson(json).list;
    });

    return response;
  }

  @override
  Future<Either<Failure, List<ExamTermInfo>>> getExamTermList(
      {String serviceID}) async {
    Either<Failure, List<ExamTermInfo>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return ExamTermInfoList.fromJson(json).list;
    });

    return response;
  }

  @override
  Future<Either<Failure, List<SessionTerm>>> getSessionTermList(
      {String serviceID}) async {
    Either<Failure, List<SessionTerm>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return SessionTermList.fromJson(json).list;
    });

    return response;
  }
}
