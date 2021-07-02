
import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/utils/ecommerce_exception.dart';

import '../../models/states/product.dart';
export '../../models/states/product.dart';
import '../../repositories/product/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final _productRepository = ProductRepository();
  ProductBloc()
      : super(
          ProductState(
            productSearchInformationConfig: ProductSearchInformationConfig(),
            productFilterModel: ProductFilterModel(),
          ),
        );

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    try {
      if (event is ProductFetched) {
        yield state.copyWith(
          loading: true,
        );
        List<ServiceGroup> services = await _productRepository.getProducts();
        yield state.copyWith(
          loading: false,
          serviceGroups: services,
          productSearchInformationConfig: state.productSearchInformationConfig
                  ?.copyWith(isshop: services[0].type == 'shop') ??
              ProductSearchInformationConfig(
                isshop: services[0].type == 'shop',
              ),
        );
      } else if (event is FetchedStates) {
        yield state.copyWith(
          locationLoading: true,
          state: null,
        );
        final states = await _productRepository.getStates();
        yield state.copyWith(
          locationLoading: false,
          state: null,
          district: null,
          selectedAreas: [],
          states: states,
          districts: [],
          areas: [],
        );
      } else if (event is UpdatedState) {
        yield state.copyWith(
          state: event.state,
          locationLoading: true,
          district: null,
          districts: [],
          areas: [],
          selectedAreas: [],
        );
        final districts = await _productRepository.getDistricts(event.state);
        yield state.copyWith(
          state: event.state,
          locationLoading: false,
          districts: districts,
        );
      } else if (event is UpdatedDistrict) {
        yield state.copyWith(
          district: event.district,
          locationLoading: true,
        );
        final areas = await _productRepository.getAreas(event.district);
        yield state.copyWith(
          locationLoading: false,
          areas: areas,
        );
      } else if (event is UpdatedArea) {
        yield state.copyWith(
          selectedAreas: event.areas,
          productSearchInformationConfig:
              state.productSearchInformationConfig.copyWith(
            sp: state.productSearchInformationConfig.sp.copyWith(
              locationname: state.selectedAreas
                  .map(
                    (e) => AreaInfo(
                      state: state.state,
                      district: state.district,
                      areaname: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      }
      // CHANGE MIDDLE SECTION IN THE MAIN VIEW
      else if (event is ServiceGroupSelected) {
        yield state.copyWith(
          selected: event.selected,
          productSearchInformationConfig:
              state.productSearchInformationConfig?.copyWith(
                    isshop: state.serviceGroups[event.selected].type == 'shop',
                    grouptype: state.serviceGroups[event.selected].type,
                  ) ??
                  ProductSearchInformationConfig(
                    isshop: state.serviceGroups[event.selected].type == 'shop',
                    grouptype: state.serviceGroups[event.selected].type,
                  ),
        );
      }
      // UPDATE THE SEARCH INFORMATION CONFIG
      else if (event is UpdateSearchConfig) {
        yield state.copyWith(
          productSearchInformationConfig: event.productSearchInformationConfig,
        );
      } else if (event is UpdateProductFilterModel) {
        yield state.copyWith(
          productFilterModel: event.productFilterModel,
        );
      } else if (event is ServiceTypeSelected) {
        yield state.copyWith(
          productSearchInformationConfig:
              state.productSearchInformationConfig.copyWith(
            servicetype: event.serviceType.querystr,
          ),
        );
      }
      // SET THE SERVICE MODEL AND FETCH PRODUCTS
      else if (event is ServiceSelected) {
        yield state.copyWith(
          loading: true,
          productFilterResultModel: null,
          productSearchInformationConfig:
              state.productSearchInformationConfig.copyWith(
            lsm: event.serviceModel,
          ),
        );
        ProductFilterResultModel filterResultModel =
            await _productRepository.getProductFilterResultModel(
          state.productFilterModel.copyWith(
            psc: state.productSearchInformationConfig.copyWith(
              lsm: event.serviceModel,
            ),
          ),
        );
        yield state.copyWith(
          loading: false,
          productFilterResultModel: filterResultModel,
        );
      } else if (event is SearchedProductsEvent) {
        print('SEARCH EVENT ${event.query}!');
        yield state.copyWith(
          loading: true,
          productFilterModel:
              state.productFilterModel.copyWith(termquery: event.query),
          productFilterResultModel: state.productFilterResultModel.copyWith(
            docwithdata1: [],
            docwithdata2: [],
            docwithdata3: [],
            docwithdata4: [],
            docwithdata5: [],
          ),
        );

        ProductFilterResultModel filterResultModel =
            await _productRepository.getProductFilterResultModel(
          state.productFilterModel.copyWith(
            psc: state.productSearchInformationConfig.copyWith(
              spoffset: 0,
            ),
          ),
        );

        yield state.copyWith(
          loading: false,
          productFilterResultModel: filterResultModel.copyWith(
            topleveltiletype: state.productFilterResultModel
                .topleveltiletype, // ! ONLY FOR DUMMY DATA
          ),
        );
      } else if (event is FetchedMoreFilterResultStores) {
        if (state.productFilterResultModel.hasmoreresults) {
          yield state.copyWith(
            loading: true,
            productFilterResultModel: null,
            productSearchInformationConfig:
                state.productSearchInformationConfig.copyWith(
              spoffset: state.productSearchInformationConfig.spoffset == null
                  ? 0
                  : state.productSearchInformationConfig.spoffset + 12,
            ),
          );
          ProductFilterResultModel filterResultModel =
              await _productRepository.getProductFilterResultModel(
            state.productFilterModel.copyWith(
              psc: state.productSearchInformationConfig.copyWith(
                spoffset: state.productSearchInformationConfig.spoffset == null
                    ? 0
                    : state.productSearchInformationConfig.spoffset + 12,
              ),
            ),
          );
          yield state.copyWith(
            loading: false,
            productFilterResultModel:
                state.productFilterResultModel.topleveltiletype == 'package'
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
                                  ...state
                                      .productFilterResultModel.docwithdata3,
                                  ...filterResultModel.docwithdata3
                                ],
                              )
                            : state.productFilterResultModel.topleveltiletype ==
                                    'vehicle'
                                ? state.productFilterResultModel.copyWith(
                                    docwithdata4: [
                                      ...state.productFilterResultModel
                                          .docwithdata4,
                                      ...filterResultModel.docwithdata4
                                    ],
                                  )
                                : state.productFilterResultModel.copyWith(
                                    docwithdata5: [
                                      ...state.productFilterResultModel
                                          .docwithdata5,
                                      ...filterResultModel.docwithdata5
                                    ],
                                  ),
          );
        }
      }
    } on EcommerceException catch (e) {
      yield state.copyWith(
        loading: false,
        hasError: true,
        error: e.errorMessage,
      );
    }
  }
}
