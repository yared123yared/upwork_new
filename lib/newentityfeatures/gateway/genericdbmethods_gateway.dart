import 'dart:convert';

import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import 'package:complex/domain/explore/ecom/location/location_data.dart';
import 'dart:math';


import 'package:complex/newentityfeatures/Models/genericHttpresponse_model.dart';

import 'package:http/http.dart' as http;
class GenericDBProvider {


  static Future<GenericHttpResponseModelForDigi> GetProductSuggestionsForClassified  (ProductSearchInformationConfig psc, String textqry,String token,String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    List<LuceneSearchSuggestionData> ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/GetProductSuggestionsForClassified");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=psc.toJson();
    md['query']=textqry;
    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {
      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr).cast<Map<String, dynamic>>();
      ld =parsed.map<LuceneSearchSuggestionData>((json) => LuceneSearchSuggestionData.fromJson(json)).toList();
      ghdr.httpcode =200;
      ghdr.ld=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }

  }


  static Future<GenericHttpResponseModelForDigi> GetProductSuggestionsForShopProducts(String serviceproviderid, String textqry,String token,String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    List<LuceneSearchSuggestionData> ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/GetProductSuggestionsForShopProducts");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=serviceproviderid;
    md['query']=textqry;
    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {

      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr).cast<Map<String, dynamic>>();
      ld =parsed.map<LuceneSearchSuggestionData>((json) => LuceneSearchSuggestionData.fromJson(json)).toList();
      ghdr.httpcode =200;
      ghdr.ld=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }
  }


  static Future<GenericHttpResponseModelForDigi> GetServiceProviderSuggestions(ProductSearchInformationConfig psc,String txtquery,String token, String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    List<LuceneSearchSuggestionData> ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/GetServiceProviderSuggestions");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=psc.toJson();
    md['query']=txtquery;
    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {
      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr).cast<Map<String, dynamic>>();

      ld =parsed.map<LuceneSearchSuggestionData>((json) => LuceneSearchSuggestionData.fromJson(json)).toList();
      ghdr.httpcode =200;
      ghdr.ld=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }

  }

  static Future<GenericHttpResponseModelForDigi> GetServiceProviderList(ProductSearchInformationConfig psc,String token, String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    ServiceFilterResultData ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/GetServiceProviderList");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=psc.toJson();

    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {
      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr);
      ld = ServiceFilterResultData.fromJson(parsed);
      ghdr.httpcode =200;
      ghdr.sfrd=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }

  }

  static Future<GenericHttpResponseModelForDigi> FetchProductFilterResult(ProductFilterModel productFilterModel,String token, String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    ProductFilterResultModel ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/FetchProductFilterResult");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=productFilterModel.toJson();

    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {
      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr);
      ld =ProductFilterResultModel.fromJson(parsed);
      ghdr.httpcode =200;
      ghdr.pfrd=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }


  }

  static Future<GenericHttpResponseModelForDigi> GetCategoryList(String  serviceproviderid,String token, String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    ProductFilterResultModel ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/FetchProductFilterResult");
    Map<String,dynamic> md = new Map();
    md['dynamicProperty']=serviceproviderid;

    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {
      final respStr = await response.stream.bytesToString();
      var parsed = jsonDecode(respStr).cast<Map<String, dynamic>>();
      ld =ProductFilterResultModel.fromJson(parsed);
      ghdr.httpcode =200;
      ghdr.pfrd=ld;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }
  }
  static Future<GenericHttpResponseModelForDigi> GetLocationInformation(LocationData locationModel,String token, String server) async
  {
    GenericHttpResponseModelForDigi ghdr = new   GenericHttpResponseModelForDigi();
    List<String> ld =null;
    Uri url = Uri.parse(
        "http://" + server + "/api/Search/GetLocationInformation");

    Map<String,dynamic> md = new Map();
    md['Latitude']=locationModel.Latitude;
    md['Longitude']=locationModel.Longitude;
    http.Request req = http.Request('GET', url)
      ..body = json.encode(md)
      ..headers.addAll({
        "Content-type": "application/json",
        "Authorization": "Bearer ${token}"
      });

    var response= await req.send();



    if (response.statusCode >= 200 && response.statusCode < 300) {

      final respStr = await response.stream.bytesToString();
      var parsed = respStr;

      ghdr.httpcode =200;
      ghdr.locationdataresult=respStr;
      return ghdr;
    }
    else {
      ghdr.httpcode =response.statusCode;
      return ghdr;
    }

  }


}