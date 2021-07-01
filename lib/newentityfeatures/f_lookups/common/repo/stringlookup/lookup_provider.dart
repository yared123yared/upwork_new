import 'package:complex/data/api/api_helper.dart';
import 'package:complex/data/api/failure/failure.dart';
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
}
