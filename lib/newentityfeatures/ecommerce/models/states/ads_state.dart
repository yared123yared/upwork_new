import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';

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
