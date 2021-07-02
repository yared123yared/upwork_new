import 'dart:convert';
import 'package:complex/data/models/response/user_response/locationdependentdata.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/models/location_data.dart';
import 'dart:math';

import 'package:complex/newentityfeatures/ecommerce/models/lucene_search_suggestion_data.dart';
import 'package:complex/newentityfeatures/gateway/genericdbmethods_gateway.dart';
import 'package:http/http.dart' as http;
class GenericDBProvider {


  static Future<List<LuceneSearchSuggestionData>> GetProductSuggestionsForClassified  (ProductSearchInformationConfig psc, String textqry,String server) async
  {

  }


  static Future<List<LuceneSearchSuggestionData>> GetProductSuggestionsForShopProducts(String serviceproviderid, String textqry,String server) async
  {
      List<LuceneSearchSuggestionData> ld =null;
      Uri url = Uri.parse(
          "http://" + server + "/api/Search/GetProductSuggestionsForShopProducts");
      url.replace(queryParameters: {
        'dynamicProperty': "MYSERVICEPROVIDER",
        'query': "Gillette Women"
      });
      var response = await http.get(
        url,
      );
      if (response.statusCode == 200) {

        var parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
        ld =parsed.map<LuceneSearchSuggestionData>((json) => LuceneSearchSuggestionData.fromJson(json)).toList();
        return ld;
      }
      return ld;
  }


  static Future<List<LuceneSearchSuggestionData>> GetServiceProviderSuggestions(ProductSearchInformationConfig psc, String server) async
  {

  }

  static Future<ServiceFilterResultData> GetServiceProviderList(ProductSearchInformationConfig psc, String server) async
  {

  }

  static Future<ProductFilterResultModel> FetchProductFilterResult(ProductFilterModel productFilterModel, String server) async
  {

  }

  static Future<ProductFilterResultModel> GetCategoryList(ProductSearchInformationConfig psc, String server) async
  {

  }
  static Future<List<String>> GetLocationInformation(LocationData locationModel, String server) async
  {

  }


}