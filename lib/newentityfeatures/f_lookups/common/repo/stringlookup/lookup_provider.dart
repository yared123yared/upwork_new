import 'package:complex/data/api/api_helper.dart';
import 'package:complex/data/api/failure/failure.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';
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
      return RoomInfo.listFromData(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, List<ExamTermInfo>>> getExamTermList(
      {String serviceID}) async {
    Either<Failure, List<ExamTermInfo>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return ExamTermInfo.listFromData(json);
    });

    return response;
  }

  @override
  Future<Either<Failure, List<SessionTermModel>>> getSessionTermList(
      {String serviceID}) async {
    Either<Failure, List<SessionTermModel>> response =
        await ApiHelper("SERVICEPROVIDERINFO/$serviceID/LOOKUPS/FIRST")
            .getDocFromFirestore(fromJson: (json) {
      return SessionTermModel.listFromData(json);
    });

    return response;
  }
}
