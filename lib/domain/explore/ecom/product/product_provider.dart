import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/commonrepo/genericdbmethods_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:complex/domain/explore/ecom/lucene_search_suggestion/lucene_search_suggestion_data.dart';

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
        String type,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid
  }) async {
    String collectionname ="";
    if(   entityid ==null || entityid.isEmpty)
      collectionname="CLASSIFIED";
    else {
      collectionname = "${entitytype}/${entityid}}/${type}/";
    }

    try {
      QuerySnapshot querySnapshot =null;
      if(entityid ==null || entityid.isEmpty) {
        querySnapshot = await _firestoreInstance
            .collection(collectionname)
            .where('userid', isEqualTo: userID)
            .where('dt', isEqualTo: type)
            .get();
      }
      else
        {
            if(lastdocumentid ==null)
              {
                querySnapshot = await _firestoreInstance
                    .collection(collectionname).orderBy('docid').limit(limit)
                    .get();
              }
            else
              {
                querySnapshot = await _firestoreInstance
                    .collection(collectionname).orderBy('docid').startAfter([lastdocumentid]).limit(limit)
                    .get();
                
              }
        }
      List<Map<String, dynamic>> dataList = List<Map<String, dynamic>>.from(
          querySnapshot.docs.map((e) => e.data()));
      final T typedResponse = fromListData(dataList);
      return right(typedResponse);
    } on FirebaseException catch (e) {
      LogicalFailure failure = LogicalFailure(
          returnType: T.toString(), path: collectionname, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    } catch (e) {
      ExceptionFailure failure = ExceptionFailure(
          returnType: T.toString(), path: collectionname, error: e.toString());
      Logger().e(failure.toString());
      return left(failure);
    }
  }


  Future<Either<Failure, T>> _helperFunctionforSingleDoc<T>({
    @required
    T Function(
        List<Map<String, dynamic>> listData,
        )
    fromListData,

    @required
    String userID,
    @required
    String type,@required
    String productid,@required String entitytype,@required String entityid,@required bool isservice,@required int origin
  }) async {
    try {
      String collectionname ="";
      if(   entityid ==null || entityid.isEmpty)
        collectionname="CLASSIFIED";
      else {
        collectionname = "${entitytype}/${entityid}}/${type}/";
      }


      final DocumentSnapshot docdata = await _firestoreInstance
          .doc(collectionname+productid)
          
          .get();
      List<Map<String, dynamic>> dataList =[];
      if(docdata.exists)
        dataList.add(docdata.data());
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

  Future<Either<Failure, CompleteJobList>> getSingleJobsList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required String productid}) async {
    Either<Failure, CompleteJobList> response =
    await _helperFunctionforSingleDoc<CompleteJobList>(
        fromListData: (listJson) =>
            CompleteJobList.fromJson({'jobs': listJson}),
        userID: UserSession.userId,
        type: 'job',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,productid: productid);

    return response;
  }
  Future<Either<Failure, CompletePetList>> getSinglePetList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required String productid}) async {
    Either<Failure, CompletePetList> response =
    await _helperFunctionforSingleDoc<CompletePetList>(
        fromListData: (listJson) =>
            CompletePetList.fromJson({'pets': listJson}),
        userID: UserSession.userId,
        type: 'pet',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,productid: productid);

    return response;
  }

  Future<Either<Failure, CompleteVehicleList>> getSingleVehicleList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required String productid}) async {
    Either<Failure, CompleteVehicleList> response =
    await _helperFunctionforSingleDoc<CompleteVehicleList>(
        fromListData: (listJson) =>
            CompleteVehicleList.fromJson({'vehicles': listJson}),
        userID: UserSession.userId,
        type: 'vehicle',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,productid: productid);

    return response;
  }

  Future<Either<Failure, CompleteRealEstateList>>
  getSingleRealEstateList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required String productid}) async {
    Either<Failure, CompleteRealEstateList> response =
    await _helperFunctionforSingleDoc<CompleteRealEstateList>(
        fromListData: (listJson) =>
            CompleteRealEstateList.fromJson({'properties': listJson}),
        userID: UserSession.userId,
        type: 'realestate',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,productid: productid);

    return response;
  }

  Future<Either<Failure, CompleteProductList>> getSingleProductList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required String productid}) async {
    Either<Failure, CompleteProductList> response =
    await _helperFunctionforSingleDoc<CompleteProductList>(
        fromListData: (listJson) =>
            CompleteProductList.fromJson({'products': listJson}),
        userID: UserSession.userId,
        type: 'product',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,productid: productid);

    return response;
  }



  Future<Either<Failure, CompleteJobList>> getCompleteJobsList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) async {
    Either<Failure, CompleteJobList> response =
        await _helperFunction<CompleteJobList>(
            fromListData: (listJson) =>
                CompleteJobList.fromJson({'jobs': listJson}),
            userID: UserSession.userId,
            type: 'job',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,lastdocumentid: lastdocumentid,limit:limit);

    return response;
  }

  Future<Either<Failure, CompletePetList>> getCompletePetList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) async {
    Either<Failure, CompletePetList> response =
        await _helperFunction<CompletePetList>(
            fromListData: (listJson) =>
                CompletePetList.fromJson({'pets': listJson}),
            userID: UserSession.userId,
            type: 'pet',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,lastdocumentid: lastdocumentid,limit:limit);

    return response;
  }

  Future<Either<Failure, CompleteVehicleList>> getCompleteVehicleList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) async {
    Either<Failure, CompleteVehicleList> response =
        await _helperFunction<CompleteVehicleList>(
            fromListData: (listJson) =>
                CompleteVehicleList.fromJson({'vehicles': listJson}),
            userID: UserSession.userId,
            type: 'vehicle',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,lastdocumentid: lastdocumentid,limit:limit);

    return response;
  }

  Future<Either<Failure, CompleteRealEstateList>>
      getCompleteRealEstateList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) async {
    Either<Failure, CompleteRealEstateList> response =
        await _helperFunction<CompleteRealEstateList>(
            fromListData: (listJson) =>
                CompleteRealEstateList.fromJson({'properties': listJson}),
            userID: UserSession.userId,
            type: 'realestate',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,lastdocumentid: lastdocumentid,limit:limit);

    return response;
  }

  Future<Either<Failure, CompleteProductList>> getCompleteProductList({@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) async {
    Either<Failure, CompleteProductList> response =
        await _helperFunction<CompleteProductList>(
            fromListData: (listJson) =>
                CompleteProductList.fromJson({'products': listJson}),
            userID: UserSession.userId,
            type: 'product',entitytype: entitytype,entityid:entityid,isservice:isservice,origin:origin,lastdocumentid: lastdocumentid,limit:limit);

    return response;
  }

  
  
  
  
  
  
  Future<Option<Failure>> addProduct(
      {@required CompleteProductData data,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
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
      {@required CompleteProductData data,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
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

  Future<Option<Failure>> deleteProduct(
      {@required CompleteProductData data,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
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


  Future<Either<Failure, List<LuceneSearchSuggestionData>>> getProductSuggestion({@required String texttosearch,@required EcomProductType type,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,int offset}) async {
    ProductSearchInformationConfig psc =null;
    String token =null;
    List<String> serverlist =null;

    List<LuceneSearchSuggestionData> ls=  await  GenericDBRepository.GetProductSuggestionsForClassifiedInitiate( psc,  texttosearch, token, serverlist);
     return right(ls);;
  }

  

}
