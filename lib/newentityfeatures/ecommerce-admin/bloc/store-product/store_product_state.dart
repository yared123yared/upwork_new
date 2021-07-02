import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class StoreProductState {
  bool loading;
  bool filtering;
  bool hasError;
  String error;
  ProductFilterModel productFilterModel;
  ProductFilterResultModel productFilterResultModel;

  StoreProductState({
    this.loading: false,
    this.filtering: false,
    this.hasError: false,
    this.error,
    this.productFilterModel,
    this.productFilterResultModel,
  });

  StoreProductState copyWith({
    bool loading,
    bool filtering,
    bool hasError: false,
    String error,
    ProductFilterModel productFilterModel,
    ProductFilterResultModel productFilterResultModel,
  }) {
    return StoreProductState(
      loading: loading ?? this.loading,
      filtering: filtering ?? this.filtering,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
      productFilterModel: productFilterModel ?? this.productFilterModel,
      productFilterResultModel:
          productFilterResultModel ?? this.productFilterResultModel,
    );
  }
}

abstract class StoreProductEvent {}

class FetchedStoreProducts extends StoreProductEvent {}

class ChangedCategoryEvent extends StoreProductEvent {
  final String category;

  ChangedCategoryEvent(this.category);
}

class SearchedStoreProducts extends StoreProductEvent {
  final String query;

  SearchedStoreProducts(this.query);
}

class FilteredStoreProducts extends StoreProductEvent {
  final List<FacetParaFilter> selectedFilters;

  FilteredStoreProducts(this.selectedFilters);
}

class FetchedMoreStoreProducts extends StoreProductEvent {}
