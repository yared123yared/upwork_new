import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

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

  Future<Either<Failure, CompleteJobList>> getCompleteJobsList() async {
    Either<Failure, CompleteJobList> response =
        await _helperFunction<CompleteJobList>(
            fromListData: (listJson) =>
                CompleteJobList.fromJson({'jobs': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'job');

    return response;
  }

  Future<Either<Failure, CompletePetList>> getCompletePetList() async {
    Either<Failure, CompletePetList> response =
        await _helperFunction<CompletePetList>(
            fromListData: (listJson) =>
                CompletePetList.fromJson({'pets': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'pet');

    return response;
  }

  Future<Either<Failure, CompleteVehicleList>> getCompleteVehicleList() async {
    Either<Failure, CompleteVehicleList> response =
        await _helperFunction<CompleteVehicleList>(
            fromListData: (listJson) =>
                CompleteVehicleList.fromJson({'vehicles': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'vehicle');

    return response;
  }

  Future<Either<Failure, CompleteRealEstateList>>
      getCompleteRealEstateList() async {
    Either<Failure, CompleteRealEstateList> response =
        await _helperFunction<CompleteRealEstateList>(
            fromListData: (listJson) =>
                CompleteRealEstateList.fromJson({'properties': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'realestate');

    return response;
  }

  Future<Either<Failure, CompleteProductList>> getCompleteProductList() async {
    Either<Failure, CompleteProductList> response =
        await _helperFunction<CompleteProductList>(
            fromListData: (listJson) =>
                CompleteProductList.fromJson({'products': listJson}),
            userID: '79gE5SnVjQPtQ2weFsncv19TWrY2',
            type: 'product');

    return response;
  }

  Future<Option<Failure>> addProduct(
      {@required CompleteProductData data}) async {
    final Map<String, dynamic> productAction = {
      "qtype": null,
      "action": "add",
      "origin": "USER",
      "serviceid": null,
      "userid": data.userId,
      "producttype": null,
      "classifiedtype": data.dt.toUpperCase(),
      "petmodel": null,
      "productmodel": null,
      "vehiclemodel": null,
      "jobrequestmodel": null,
      'realestatemodel': null,
    };
    data.map(
        realEstate: (realEstate) => productAction.update('realestatemodel',
            (value) => realEstate.data.toJson()..remove('runtimeType')),
        job: (job) => productAction.update('jobrequestmodel',
            (value) => job.data.toJson()..remove('runtimeType')),
        pet: (pet) => productAction.update(
            'petmodel', (value) => pet.data.toJson()..remove('runtimeType')),
        vehicle: (vehicle) => productAction.update('vehiclemodel',
            (value) => vehicle.data.toJson()..remove('runtimeType')),
        product: (product) => productAction.update('productmodel',
            (value) => product.data.toJson()..remove('runtimeType')));

    final Option<Failure> response = await ApiHelper(ApiHelper.dgOcnEp)
        .httpPost<CompleteProductData>(data.toJson());

    return response;
  }

  Future<Option<Failure>> updateProduct(
      {@required CompleteProductData data}) async {
    final Option<Failure> response = await ApiHelper('CLASSIFIED/${data.docId}')
        .updateFirebaseDoc(data.toJson());

    return response;
  }
}
