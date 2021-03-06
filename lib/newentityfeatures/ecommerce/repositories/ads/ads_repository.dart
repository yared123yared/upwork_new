import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import '../../providers/ads/ads_provider.dart';

class RepositoryAds {
  final adsProvider = AdsProvider();

  Future<List<ExplorePageAd>> getAds() async {
    List ads = await adsProvider.fetchAds();

    return ads.map((e) => ExplorePageAd.fromJson(e)).toList();
  }
}
