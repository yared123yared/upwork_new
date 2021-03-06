import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;
  // final String _baseUrl =
  //     "https://us-central1-brindavan-c61b7.cloudfunctions.net";
  final String endPoint;
  static String dgOcnEp =
      "https://us-central1-brindavan-c61b7.cloudfunctions.net/digitaloceaninteract";
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
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
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
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    }
  }

  Future<Option<Failure>> removeDocFromFirestore(
      {@required String errorType}) async {
    try {
      await _firestoreInstance.doc(endPoint).delete();
      return none();
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    }
  }

  Future<Option<Failure>> removeItemsFromDocsArrayFirestore(
      {@required String errorType,
      @required String fieldName,
      @required List<dynamic> elements}) async {
    try {
      await _firestoreInstance
          .doc(endPoint)
          .update({fieldName: FieldValue.arrayRemove(elements)});
      return none();
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    }
  }

  Future<Option<Failure>> addItemsInDocArrayFirestore(
      {@required String errorType,
      @required String fieldName,
      @required List<dynamic> elements}) async {
    try {
      await _firestoreInstance
          .doc(endPoint)
          .update({fieldName: FieldValue.arrayUnion(elements)});
      return none();
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: errorType, path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    }
  }

  Future<Option<Failure>> addDocToFirebaseCollecton<T>(
      Map<String, dynamic> doc) async {
    try {
      doc.remove('runtimeType');

      await _firestoreInstance.collection(endPoint).add(doc);
      return none();
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    }
  }

  Future<Option<Failure>> updateFirebaseDoc<T>(Map<String, dynamic> doc) async {
    try {
      doc.remove('runtimeType');
      await _firestoreInstance.doc(endPoint).set(doc);
      return none();
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: endPoint, error: e.toString());
      Logger().e(failure.toString());
      return some(failure);
    }
  }

  Future<Option<Failure>> httpPost<T>(Map<String, dynamic> body) async {
    try {

      var requestbody = json.encode({
        'data': {
          'productactionrequest': body}
      });
      http.Response response = await http.post(Uri.parse(endPoint),
          headers: {"Authorization": "Bearer ${UserSession.userToken}"},
          body: requestbody);






      if (response.statusCode == 200) {
        return none();
      } else {
        return some(Failure.logical(
            returnType: T.toString(),
            path: endPoint,
            error: "code: ${response.statusCode} body: ${response.body}"));
      }
    } catch (e) {
      return some(Failure.exception(
          returnType: T.toString(), path: endPoint, error: e.toString()));
    }
  }
}
