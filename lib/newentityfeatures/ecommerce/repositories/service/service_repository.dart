import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import '../../providers/service/service_provider.dart';

class ServiceRepository {
  final _serviceProvider = ServiceProvider();

  Future<List<LimitedServiceModel>> getServices(
    ProductSearchInformationConfig productSearchInformationConfig, {
    String query: '',
    int offset,
  }) async {
    final servicesRaw = await _serviceProvider.fetchServices(query);
    return servicesRaw.map((e) => LimitedServiceModel.fromJson(e)).toList();
  }
}
