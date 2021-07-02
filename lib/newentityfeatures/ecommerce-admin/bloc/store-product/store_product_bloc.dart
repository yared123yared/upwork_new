import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'store_product_state.dart';

import '../../repositories/store-product/store_product_repository.dart';

class StoreProductBloc extends Bloc<StoreProductEvent, StoreProductState> {
  final _storeProductRepository = StoreProductRepository();
  StoreProductBloc()
      : super(
          StoreProductState(
            productFilterModel: ProductFilterModel(
              psc: ProductSearchInformationConfig(),
            ),
          ),
        );

  @override
  Stream<StoreProductState> mapEventToState(StoreProductEvent event) async* {
    if (event is FetchedStoreProducts) {
      yield state.copyWith(
        loading: true,
        filtering: true,
      );
      final result = await _storeProductRepository
          .getStoreProducts(state.productFilterModel);

      yield state.copyWith(
        loading: false,
        filtering: false,
        productFilterResultModel: result,
      );
    } else if (event is ChangedCategoryEvent) {
      yield state.copyWith(
        loading: true,
        filtering: true,
        productFilterModel: state.productFilterModel.copyWith(
          categorytype: event.category,
        ),
      );

      ProductFilterResultModel res =
          await _storeProductRepository.queryFilterProducts(
        state.productFilterModel.copyWith(
          categorytype: event.category,
        ),
      );

      // TODO: REMOVE THE BELOW CODE WHEN ADDING REAL DATA
      // ! TEMP FOR DUMMY DATA:
      res = res.copyWith(
        topleveltiletype: state.productFilterResultModel.topleveltiletype,
      );
      // !

      yield state.copyWith(
        loading: false,
        filtering: false,
        productFilterResultModel: res,
      );
    } else if (event is SearchedStoreProducts) {
      yield state.copyWith(
        loading: true,
        filtering: true,
        productFilterModel: state.productFilterModel.copyWith(
          termquery: event.query,
        ),
      );

      ProductFilterResultModel res =
          await _storeProductRepository.queryFilterProducts(
        state.productFilterModel.copyWith(
          termquery: event.query,
        ),
      );

      // TODO: REMOVE THE BELOW CODE WHEN ADDING REAL DATA
      // ! TEMP FOR DUMMY DATA:
      res = res.copyWith(
        topleveltiletype: state.productFilterResultModel.topleveltiletype,
      );
      // !

      yield state.copyWith(
        loading: false,
        filtering: false,
        productFilterResultModel: res,
      );
    } else if (event is FilteredStoreProducts) {
      yield state.copyWith(
        loading: true,
        filtering: true,
        productFilterModel: state.productFilterModel.copyWith(
          facetparalist: event.selectedFilters,
        ),
      );

      ProductFilterResultModel res =
          await _storeProductRepository.queryFilterProducts(
        state.productFilterModel.copyWith(
          facetparalist: event.selectedFilters,
        ),
      );

      // TODO: REMOVE THE BELOW CODE WHEN ADDING REAL DATA
      // ! TEMP FOR DUMMY DATA:
      res = res.copyWith(
        topleveltiletype: state.productFilterResultModel.topleveltiletype,
      );
      // !

      yield state.copyWith(
        loading: false,
        filtering: false,
        productFilterResultModel: res,
      );
    } else if (event is FetchedMoreStoreProducts) {
      if (state.productFilterResultModel.hasmoreresults) {
        yield state.copyWith(
          loading: true,
          productFilterResultModel: null,
          productFilterModel: state.productFilterModel.copyWith(
              psc: state.productFilterModel.psc.copyWith(
            spoffset: state.productFilterModel.psc.spoffset == null
                ? 0
                : state.productFilterModel.psc.spoffset + 12,
          )),
        );
        ProductFilterResultModel filterResultModel =
            await _storeProductRepository.getStoreProducts(
          state.productFilterModel.copyWith(
            psc: state.productFilterModel.psc.copyWith(
              spoffset: state.productFilterModel.psc.spoffset == null
                  ? 0
                  : state.productFilterModel.psc.spoffset + 12,
            ),
          ),
        );
        yield state.copyWith(
          loading: false,
          productFilterResultModel: state
                      .productFilterResultModel.topleveltiletype ==
                  'package'
              ? state.productFilterResultModel.copyWith(
                  docwithdata1: [
                    ...state.productFilterResultModel.docwithdata1,
                    ...filterResultModel.docwithdata1
                  ],
                )
              : state.productFilterResultModel.topleveltiletype == 'job'
                  ? state.productFilterResultModel.copyWith(
                      docwithdata2: [
                        ...state.productFilterResultModel.docwithdata2,
                        ...filterResultModel.docwithdata2
                      ],
                    )
                  : state.productFilterResultModel.topleveltiletype ==
                          'realestate'
                      ? state.productFilterResultModel.copyWith(
                          docwithdata3: [
                            ...state.productFilterResultModel.docwithdata3,
                            ...filterResultModel.docwithdata3
                          ],
                        )
                      : state.productFilterResultModel.topleveltiletype ==
                              'vehicle'
                          ? state.productFilterResultModel.copyWith(
                              docwithdata4: [
                                ...state.productFilterResultModel.docwithdata4,
                                ...filterResultModel.docwithdata4
                              ],
                            )
                          : state.productFilterResultModel.copyWith(
                              docwithdata5: [
                                ...state.productFilterResultModel.docwithdata5,
                                ...filterResultModel.docwithdata5
                              ],
                            ),
        );
      }
    }
  }
}
