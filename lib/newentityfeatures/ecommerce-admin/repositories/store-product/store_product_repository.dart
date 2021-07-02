import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import 'store_product_provider.dart';

class StoreProductRepository {
  final _storeProductProvider = StoreProductProvider();

  Future<ProductFilterResultModel> getStoreProducts(
      ProductFilterModel productFilterModel) async {
    final rawData =
        await _storeProductProvider.fetchStoreProducts(productFilterModel);
    return ProductFilterResultModel.fromJson(rawData).copyWith(
      totalcount: 0,
    );
  }

  Future<ProductFilterResultModel> queryFilterProducts(
      ProductFilterModel productFilterModel) async {
    final rawData =
        await _storeProductProvider.queryStoreProducts(productFilterModel);
    return ProductFilterResultModel.fromJson(rawData);
  }
}
