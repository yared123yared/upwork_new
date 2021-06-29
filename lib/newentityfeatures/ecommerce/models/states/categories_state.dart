import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';

class CategoriesState {
  final List<Categoryinfo> categories;
  final bool loading;
  final bool hasError;
  final String error;
  final int currentIndex;
  final int limit;

  CategoriesState({
    this.categories: const [],
    this.loading: false,
    this.hasError: false,
    this.error,
    this.currentIndex: 0,
    this.limit: 8,
  });

  CategoriesState copyWith({
    List<Categoryinfo> categories,
    bool loading,
    bool hasError: false,
    String error,
    int currentIndex,
    int limit,
  }) {
    return CategoriesState(
      categories: categories ?? this.categories,
      loading: loading ?? this.loading,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
      currentIndex: currentIndex ?? this.currentIndex,
      limit: limit ?? this.limit,
    );
  }
}
