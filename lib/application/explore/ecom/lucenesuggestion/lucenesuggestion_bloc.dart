import 'package:bloc/bloc.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/commonrepo/genericdbmethods_repository.dart';
import 'package:complex/domain/explore/ecom/location/location_data.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/utils/ecommerce_exception.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
enum ObjectStateStatus { INITIAL, LOADING, SUCCESS, ERROR }
class LuceneSuggestionDataState {

  final List<LuceneSearchSuggestionData> suggestiondata;
  ObjectStateStatus curstatus;
  final String error;


  LuceneSuggestionDataState({ 
    this.suggestiondata:null, curstatus:ObjectStateStatus.INITIAL, this.error:null
  });

}

abstract class LuceneSuggestionDataEvent {}

class GetLuceneSuggestionDataEvent extends LuceneSuggestionDataEvent {
  String txtsearch;
  String entitytype;
  String entityid;
  bool isservice;
  int offset;
  GetLuceneSuggestionDataEvent( {this.txtsearch,this.entitytype,this.entityid ,this.isservice,this.offset} );
}


class LuceneSuggestionDataBloc
    extends Bloc<LuceneSuggestionDataEvent, LuceneSuggestionDataState> {
  //GenericDBRepository mrepository = Get.find();

  LuceneSuggestionDataBloc() : super(LuceneSuggestionDataState());

  @override
  Stream<LuceneSuggestionDataState> mapEventToState(
      LuceneSuggestionDataEvent event,) async* {
    try {
      if (event is GetLuceneSuggestionDataEvent) {
        yield new LuceneSuggestionDataState(curstatus:ObjectStateStatus.LOADING,
            error: null,
            suggestiondata: null);
        ProductSearchInformationConfig psc =null;
        String token =null;
        List<String> serverlist =null;

        List<LuceneSearchSuggestionData> ls=  await  GenericDBRepository.GetProductSuggestionsForClassifiedInitiate( psc,  event.txtsearch, token, serverlist);
        yield new LuceneSuggestionDataState(curstatus:ObjectStateStatus.SUCCESS,
            error: null,
            suggestiondata: ls);


      }
    }
    on EcommerceException catch (e) {
      yield new LuceneSuggestionDataState(
          curstatus:ObjectStateStatus.ERROR, error: e.errorMessage);
    }
  }


}