import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import '../../providers/product/product_static_data_provider.dart';

class ProductRepository {
  final _productProvider = ProductStaticDataProvider();

  Future<List<String>> getStates() async {
    return await _productProvider.fetchStates();
  }

  Future<List<String>> getDistricts(String state) async {
    return await _productProvider.fetchDistricts();
  }

  Future<List<String>> getAreas(String state) async {
    return await _productProvider.fetchAreas();
  }

  Future<List<ServiceGroup>> getProducts() async {
    List productsData = await _productProvider.fetchProducts();
    return productsData.map((e) => ServiceGroup.fromJson(e)).toList();
  }

  Future<ProductFilterResultModel> getProductFilterResultModel(
      ProductFilterModel productFilterModel) async {
    final data =
        await _productProvider.fetchProductFilterResult(productFilterModel);
    return ProductFilterResultModel.fromJson(data);
  }
}
