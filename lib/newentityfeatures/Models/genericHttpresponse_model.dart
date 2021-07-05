import 'package:complex/domain/explore/ecom/lucene_search_suggestion/lucene_search_suggestion_data.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class GenericHttpResponseModelForDigi
{
  int httpcode;
  String locationdataresult;
  List<LuceneSearchSuggestionData> ld;
  ServiceFilterResultData sfrd;
  ProductFilterResultModel pfrd;


}