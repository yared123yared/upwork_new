import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import '../../models/states/ads_state.dart';
import '../../repositories/ads/ads_repository.dart';

enum AdsEvent {
  Fetch,
}

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  AdsBloc()
      : super(AdsState(
          explorePageAds: [],
          loading: false,
          hasError: false,
        ));

  final RepositoryAds repositoryAds = RepositoryAds();

  @override
  Stream<AdsState> mapEventToState(AdsEvent event) async* {
    switch (event) {
      case AdsEvent.Fetch:
        yield AdsState(explorePageAds: [], loading: true);
        try {
          List<ExplorePageAd> ads = await repositoryAds.getAds();
          yield AdsState(explorePageAds: ads, loading: false);
        } catch (e) {
          yield AdsState(
            explorePageAds: [],
            loading: false,
            hasError: true,
            errorMessage: e.toString(),
          );
        }
        break;
    }
  }
}
