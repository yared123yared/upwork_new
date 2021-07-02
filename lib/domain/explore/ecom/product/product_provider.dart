import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import 'limited_product/limited_product_data.dart';

class ProductProvider {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;

  Future<Either<Failure, T>> _helperFunction<T>({
    @required
        T Function(
      List<Map<String, dynamic>> listData,
    )
            fromListData,
    @required
        String userID,
    @required
        String type,
  }) async {
    try {
      final QuerySnapshot querySnapshot = await _firestoreInstance
          .collection('CLASSIFIED')
          .where('userid', isEqualTo: userID)
          .where('dt', isEqualTo: type)
          .get();
      List<Map<String, dynamic>> dataList = List<Map<String, dynamic>>.from(
          querySnapshot.docs.map((e) => e.data()));
      final T typedResponse = fromListData(dataList);
      return right(typedResponse);
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: 'CLASSIFIED', error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: 'CLASSIFIED', error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    }
  }

  Future<Either<Failure, LimitedRealEstateList>> getRealEstateList() async {
    Either<Failure, LimitedRealEstateList> response =
        await _helperFunction<LimitedRealEstateList>(
            fromListData: (listJson) =>
                LimitedRealEstateList.fromJson({'properties': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'realestate');

    return response;
  }
}
