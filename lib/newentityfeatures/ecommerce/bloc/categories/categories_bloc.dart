import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/repositories/categories/categories_repository.dart';
import 'package:flutter/foundation.dart';

import '../../models/states/categories_state.dart';
export '../../models/states/categories_state.dart';

abstract class CategoriesEvent {}

class CategoriesFetched extends CategoriesEvent {
  final ServiceType serviceType;
  CategoriesFetched({@required this.serviceType});
}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final _categoriesRepository = CategoriesRepository();
  CategoriesBloc() : super(CategoriesState());

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    if (event is CategoriesFetched) {
      yield state.copyWith(loading: true);
      List<Categoryinfo> categories = await _categoriesRepository
          .getServiceTypeCategories(event.serviceType, 0, 8);
      yield state.copyWith(
        loading: false,
        categories: state.categories + categories,
        currentIndex: state.currentIndex + 8,
      );
    }
  }
}
