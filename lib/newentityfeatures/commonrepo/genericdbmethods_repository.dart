

import 'dart:convert';

import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import 'package:complex/domain/explore/ecom/location/location_data.dart';
import 'dart:math';


import 'package:complex/newentityfeatures/Models/genericHttpresponse_model.dart';


import 'package:complex/newentityfeatures/gateway/genericdbmethods_gateway.dart';

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}
class GenericDBRepository {

  static String getNextRandomServer(String usedserver,List<String> serverlist)
  {
    if(serverlist.length ==1)
      return null;
    bool notfoundnew =true;
    while(notfoundnew)
    {
      String mserver = serverlist[mrandom.nextInt(serverlist.length - 1)];
      if(mserver !=usedserver)
      {
        notfoundnew=false;
        return mserver;
      }
    }
  }

  static Random mrandom= new   Random();
  static final GenericDBProvider dbprovider= new GenericDBProvider();
  static Future<List<LuceneSearchSuggestionData>>   GetProductSuggestionsForClassifiedInitiate(ProductSearchInformationConfig psc, String textqry,String token,List<String> serverlist) async
  {

    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .GetProductSuggestionsForClassified(
          psc, textqry, token,server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.ld;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .GetProductSuggestionsForClassified(
            psc, textqry, token,server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.ld;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }


  }



  static Future<List<LuceneSearchSuggestionData>> GetProductSuggestionsForShopProductsInitiate(String serviceproviderid, String textqry,String token,List<String> serverlist) async
  {
    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .GetProductSuggestionsForShopProducts(
          serviceproviderid, textqry,token, server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.ld;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .GetProductSuggestionsForShopProducts(
            serviceproviderid, textqry,token, server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.ld;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }
  }

  static Future<List<LuceneSearchSuggestionData>> GetServiceProviderSuggestionsInitiate(ProductSearchInformationConfig psc,String txtquery,String token, List<String> serverlist) async
  {
    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .GetServiceProviderSuggestions(
          psc, txtquery,token, server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.ld;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .GetServiceProviderSuggestions(
            psc, txtquery,token, server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.ld;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }

  }

  static Future<ServiceFilterResultData> GetServiceProviderListInitiate(ProductSearchInformationConfig psc,String token, List<String> serverlist) async
  {
    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .GetServiceProviderList(
          psc,token,  server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.sfrd;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .GetServiceProviderList(
            psc,token,  server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.sfrd;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }

  }

  static Future<ProductFilterResultModel> FetchProductFilterResultInitiate(ProductFilterModel productFilterModel,String token, List<String> serverlist) async
  {
    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .FetchProductFilterResult(
          productFilterModel,token,  server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.pfrd;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .FetchProductFilterResult(
            productFilterModel,token,  server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.pfrd;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }

  }

  static Future<ProductFilterResultModel> GetCategoryListInitiate(String serviceproviderid,String token, List<String> serverlist) async
  {
    if (serverlist.length > 0) {
      String server = null;
      if (serverlist.length == 1)
        server = serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result = await GenericDBProvider
          .GetCategoryList(
          serviceproviderid, token, server);
      if (result.httpcode >= 200 && result.httpcode < 300) {
        return result.pfrd;
      }
      else if (result.httpcode == 404 || result.httpcode == 503) {
        server = getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result = await GenericDBProvider
            .GetCategoryList(
            serviceproviderid, token, server);
        if (result.httpcode >= 200 && result.httpcode < 300) {
          return result.pfrd;
        }
      }
    }
    else {
      throw new CustomException('No dataservers defined');
    }

  }
  static Future<String> GetLocationInformationInitiate(LocationData locationModel,String token, List<String> serverlist) async
  {
    if(serverlist.length >0) {
      String server = null;
      if(serverlist.length==1)
        server=serverlist[0];
      else
        server = serverlist[mrandom.nextInt(serverlist.length - 1)];
      // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
      GenericHttpResponseModelForDigi result  =await GenericDBProvider.GetLocationInformation( locationModel,token, server);
      if(result.httpcode>=200 && result.httpcode <300)
      {
        return result.locationdataresult;
      }
      else if(result.httpcode==404 || result.httpcode==503)
      {
        server =getNextRandomServer(server, serverlist);
        GenericHttpResponseModelForDigi result  =await GenericDBProvider.GetLocationInformation(locationModel,token, server);
        if(result.httpcode==200)
        {
          return result.locationdataresult;
        }

      }

      throw new CustomException('Unable to getdata');
    }
    else
    {
      throw new CustomException('No dataservers defined');
    }

  }


}