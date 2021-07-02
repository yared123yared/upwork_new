import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import '../../providers/categories/categories_provider.dart';

class CategoriesRepository {
  final categoriesProvider = CategoriesProvider();

  Future<List<Categoryinfo>> getCategories(int index, int limit) async {
    final categoriesData =
        await categoriesProvider.fetchCategories(index, limit);
    return categoriesData.map((e) => Categoryinfo.fromJson(e)).toList();
  }

  Future<List<Categoryinfo>> getServiceTypeCategories(
    ServiceType serviceTyle,
    int index,
    int limit,
  ) async {
    final categoriesData =
        await categoriesProvider.fetchCategories(index, limit);
    return categoriesData.map((e) => Categoryinfo.fromJson(e)).toList();
  }
}
