import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'failure/failure.dart';

class ApiHelper {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;
  // final String _baseUrl =
  //     "https://us-central1-brindavan-c61b7.cloudfunctions.net";
  final String endPoint;

  ApiHelper(this.endPoint);
  Future<Either<Failure, T>> getDocFromFirestore<T>({
    @required
        T Function(
      Map<String, dynamic> json,
    )
            fromJson,
  }) async {
    try {
      final DocumentSnapshot documentSnapshot =
          await _firestoreInstance.doc(endPoint).get();
      final T typedResponse = fromJson(documentSnapshot.data());
      return right(typedResponse);
    } on FirebaseException catch (e) {
      return left(LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString()));
    } catch (e) {
      return left(ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString()));
    }
  }

  Future<Either<Failure, T>> getCollectionFromFirestore<T>({
    @required
        T Function(
      List<Map<String, dynamic>> listData,
    )
            fromListData,
  }) async {
    try {
      final QuerySnapshot querySnapshot =
          await _firestoreInstance.collection(endPoint).get();
      List<Map<String, dynamic>> dataList = List<Map<String, dynamic>>.from(
          querySnapshot.docs.map((e) => e.data()));
      final T typedResponse = fromListData(dataList);
      return right(typedResponse);
    } on FirebaseException catch (e) {
      return left(LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString()));
    } catch (e) {
      return left(ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString()));
    }
  }
}
