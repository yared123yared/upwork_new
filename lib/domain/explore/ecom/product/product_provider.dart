import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/domain/core/api_helper.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/commonrepo/genericdbmethods_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/common/helputil.dart';
import 'limited_product/limited_product_data.dart';
class ProductProvider {
  final FirebaseFirestore _firestoreInstance = FirebaseFirestore.instance;
  final UserRepository _userRepository = HelpUtil.getUserRepository();
   UserModel get _user => _userRepository.getUser();
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
    String finaltype = type.toUpperCase();
    if(entitytype== 'SELF' ||  finaltype== "REALESTATE" ||  finaltype== "JOB" ||  finaltype== "VEHICLE" ||  finaltype== "PET"  )
      collectionname="CLASSIFIED";
    else {
      collectionname = "${entitytype}/${entityid}/PRODUCT";
    }

    try {
      QuerySnapshot querySnapshot =null;
      if(entitytype== 'SELF') {   //in case of entitytype=SELF , entityid =userid
        querySnapshot = await _firestoreInstance
            .collection(collectionname)
            .where('userid', isEqualTo: userID)
            .where('dt', isEqualTo: finaltype)
            .get();
      }
      else
        {

          if(lastdocumentid ==null || lastdocumentid.isEmpty )
              {
                if(finaltype=="PRODUCT") {
                  querySnapshot = await _firestoreInstance
                      .collection(collectionname).orderBy('docid').limit(limit)
                      .get();
                }
                else
                  {
                    querySnapshot = await _firestoreInstance
                        .collection(collectionname)
                        .where('serviceproviderid', isEqualTo: entityid)
                        .where('dt', isEqualTo: finaltype).orderBy('docid').limit(limit)
                        .get();
                  }
              }
            else
              {
                if(finaltype=="PRODUCT") {
                  querySnapshot = await _firestoreInstance
                      .collection(collectionname).orderBy('docid').startAfter(
                      [lastdocumentid]).limit(limit)
                      .get();
                }
                else
                  {
                    querySnapshot = await _firestoreInstance
                        .collection(collectionname)
                        .where('serviceproviderid', isEqualTo: entityid)
                        .where('dt', isEqualTo: finaltype).orderBy('docid').startAfter(
                        [lastdocumentid]).limit(limit)
                        .get();

                  }
                
              }
        }
      List<Map<String, dynamic>> dataList = List<Map<String, dynamic>>.from(
          querySnapshot.docs.map((e) => e.data()));
      for (var k in dataList)
        {
          for(String key in k.keys)
            {
              if(key !='dt' && key !='adata' )
                k['adata'][key]=k[key];
            }
          k['adata']['productid']=k['docid'];
        }

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
      for (var k in dataList)
      {
        for(String key in k.keys)
        {
          if(key !='dt' && key !='adata' )
            k['adata'][key]=k[key];
        }
        k['adata']['productid']=k['docid'];
      }
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
      {@required Map<String,dynamic> data,@required String producttype,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
     final String finaldttype=producttype.toUpperCase();
     final Map<String, dynamic> productAction = {
       "qtype": null,
       "action": "add",
       "origin": entityid==null?"USER":"SERVICEPROVIDERINFO",
       "serviceid":entityid==null?null:entityid,
       "userid": entityid==null?_user.userID:null,
       "producttype": producttype.toUpperCase(),
       "classifiedtype": producttype.toUpperCase(),
       "petmodel": null,
       "productmodel": null,
       "vehiclemodel": null,
       "jobrequestmodel": null,
       'realestatemodel': null,
       'productid' :null
     };


    if(finaldttype =="REALESTATE") {
      productAction['realestatemodel']=data;
    }
    else if(finaldttype =="JOB") {
      productAction['jobrequestmodel']=data;
    }
    else if(finaldttype =="VEHICLE") {
      productAction['vehiclemodel']=data;
    }
    else if(finaldttype =="PET") {
      productAction['petmodel']=data;
    }
    else if(finaldttype =="PRODUCT") {
      productAction['productmodel']=data;
    }
    else
    {
      return Future.error("Undefined Product type", StackTrace.fromString("This is its trace"));
    }



    final Option<Failure> response = await ApiHelper(ApiHelper.dgOcnEp)
        .httpPost<Map<String, dynamic>>(productAction);

    return response;
  }

  Future<Option<Failure>> updateProduct(
      {@required Map<String,dynamic> data,@required String producttype,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
    final String finaldttype=producttype.toUpperCase();
    final Map<String, dynamic> productAction = {
      "qtype": null,
      "action": "update",
      "origin": entityid==null?"USER":"SERVICEPROVIDERINFO",
      "serviceid":entityid==null?null:entityid,
      "userid": entityid==null?_user.userID:null,
      "producttype": producttype.toUpperCase(),
      "classifiedtype": producttype.toUpperCase(),
      "petmodel": null,
      "productmodel": null,
      "vehiclemodel": null,
      "jobrequestmodel": null,
      'realestatemodel': null,
      'productid' :null
    };
    if(finaldttype =="REALESTATE") {
      productAction['realestatemodel']=data;
    }
    else if(finaldttype =="JOB") {
      productAction['jobrequestmodel']=data;
    }
    else if(finaldttype =="VEHICLE") {
      productAction['vehiclemodel']=data;
    }
    else if(finaldttype =="PET") {
      productAction['petmodel']=data;
    }
    else if(finaldttype =="PRODUCT") {
      productAction['productmodel']=data;
    }
    else
    {
      return Future.error("Undefined Product type", StackTrace.fromString("This is its trace"));
    }

    final Option<Failure> response = await ApiHelper(ApiHelper.dgOcnEp)
        .httpPost<Map<String, dynamic>>(productAction);

    return response;
  }

  Future<Option<Failure>> deleteProduct(
      {@required String productid,@required String producttype,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) async {
    final Map<String, dynamic> productAction = {
      "qtype": null,
      "action": "update",
      "origin": entityid==null?"USER":"SERVICEPROVIDERINFO",
      "serviceid":entityid==null?_user.userID:null,
      "userid": entityid==null?_user.userID:null,
      "producttype": producttype.toUpperCase(),
      "classifiedtype": producttype.toUpperCase(),
      "petmodel": null,
      "productmodel": null,
      "vehiclemodel": null,
      "jobrequestmodel": null,
      'realestatemodel': null,
      'productid' :productid
    };

    final Option<Failure> response = await ApiHelper(ApiHelper.dgOcnEp)
        .httpPost<Map<String, dynamic>>(productAction);

    return response;
  }


  Future<Either<Failure, List<LuceneSearchSuggestionData>>> getProductSuggestion({@required String texttosearch,@required String producttype,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,int offset}) async {
    ProductSearchInformationConfig psc =null;
    String token =null;
    List<String> serverlist =null;

    List<LuceneSearchSuggestionData> ls=  await  GenericDBRepository.GetProductSuggestionsForClassifiedInitiate( psc,  texttosearch, token, serverlist);
     return right(ls);;
  }

  

}
