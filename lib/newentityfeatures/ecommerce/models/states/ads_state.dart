import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class AdsState {
  List<ExplorePageAd> explorePageAds;
  bool loading, hasError;
  String errorMessage;
  AdsState({
    this.explorePageAds,
    this.loading,
    this.hasError: false,
    this.errorMessage,
  });
}
