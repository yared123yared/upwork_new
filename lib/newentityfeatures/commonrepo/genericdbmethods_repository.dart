

import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import 'package:complex/newentityfeatures/ecommerce/models/location_data.dart';
import 'dart:math';

import 'package:complex/newentityfeatures/ecommerce/models/lucene_search_suggestion_data.dart';
import 'package:complex/newentityfeatures/gateway/genericdbmethods_gateway.dart';
class GenericDBRepository {

  static Random mrandom= new   Random();
  static final GenericDBProvider dbprovider= new GenericDBProvider();
  static Future<List<LuceneSearchSuggestionData>> GetProductSuggestionsForClassifiedInitiate  (ProductSearchInformationConfig psc, String textqry,List<String> serverlist) async
  {

  }


  static Future<List<LuceneSearchSuggestionData>> GetProductSuggestionsForShopProductsInitiate(String serviceproviderid, String textqry,List<String> serverlist) async
  {
      if(serverlist.length >0) {
        String server = serverlist[mrandom.nextInt(serverlist.length - 1)];
        // Get the http code , if there is error, if http code =404 or 503 , u pick another server and try again
        GenericDBProvider.GetProductSuggestionsForShopProducts(
            serviceproviderid, textqry, server);
        //try again if u get data or other wise raise exception

      }
      else
        {
          //throw new exception
        }

  }


  static Future<List<LuceneSearchSuggestionData>> GetServiceProviderSuggestionsInitiate(ProductSearchInformationConfig psc, List<String> serverlist) async
  {

  }

  static Future<ServiceFilterResultData> GetServiceProviderListInitiate(ProductSearchInformationConfig psc, List<String> serverlist) async
  {

  }

  static Future<ProductFilterResultModel> FetchProductFilterResultInitiate(ProductFilterModel productFilterModel, List<String> serverlist) async
  {

  }

  static Future<ProductFilterResultModel> GetCategoryListInitiate(ProductSearchInformationConfig psc, List<String> serverlist) async
  {

  }
  static Future<List<String>> GetLocationInformationInitiate(LocationData locationModel, List<String> serverlist) async
  {

  }


}