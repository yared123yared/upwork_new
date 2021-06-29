import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';

class ProductState {
  final int selected;
  final List<ServiceGroup> serviceGroups;
  final bool loading;
  final bool filtering;
  final bool locationLoading;
  final bool hasError;
  final String error;
  final bool addressHasError;
  final String addressError;

  final List<String> states;
  final String state;
  final List<String> districts;
  final String district;
  final List<String> areas;
  final List<String> selectedAreas;

  final ProductSearchInformationConfig productSearchInformationConfig;
  final ProductFilterModel productFilterModel;
  final ProductFilterResultModel productFilterResultModel;

  ProductState({
    this.selected: 0,
    this.serviceGroups,
    this.loading: true,
    this.locationLoading: false,
    this.filtering: false,
    this.hasError: false,
    this.error,
    this.addressHasError: false,
    this.addressError,
    this.productSearchInformationConfig,
    this.productFilterModel,
    this.productFilterResultModel,
    this.states,
    this.state,
    this.districts,
    this.district,
    this.areas,
    this.selectedAreas,
  });

  ProductState copyWith({
    int selected,
    List<ServiceGroup> serviceGroups,
    bool loading,
    bool filtering,
    bool locationLoading,
    bool hasError: false,
    String error,
    bool addressHasError: false,
    String addressError,
    ProductSearchInformationConfig productSearchInformationConfig,
    ProductFilterModel productFilterModel,
    ProductFilterResultModel productFilterResultModel,
    List<String> states,
    String state,
    List<String> districts,
    String district,
    List<String> areas,
    List<String> selectedAreas,
  }) {
    return ProductState(
      selected: selected ?? this.selected,
      serviceGroups: serviceGroups ?? this.serviceGroups,
      loading: loading ?? this.loading,
      filtering: filtering ?? this.filtering,
      locationLoading: locationLoading ?? this.locationLoading,
      hasError: hasError,
      error: error ?? this.error,
      productSearchInformationConfig:
          productSearchInformationConfig ?? this.productSearchInformationConfig,
      productFilterResultModel:
          productFilterResultModel ?? this.productFilterResultModel,
      productFilterModel: productFilterModel ?? this.productFilterModel,
      states: states ?? this.states,
      state: state ?? this.state,
      districts: districts ?? this.districts,
      district: district ?? this.district,
      areas: areas ?? this.areas,
      selectedAreas: selectedAreas ?? this.selectedAreas,
      addressHasError: addressHasError,
      addressError: addressError ?? this.addressError,
    );
  }
}

abstract class ProductEvent {}

class ProductFetched extends ProductEvent {}

class ServiceSelected extends ProductEvent {
  final LimitedServiceModel serviceModel;

  ServiceSelected(this.serviceModel);
}

class ServiceTypeSelected extends ProductEvent {
  ServiceType serviceType;
  ServiceTypeSelected(
    this.serviceType,
  );
}

class UpdateSearchConfig extends ProductEvent {
  final ProductSearchInformationConfig productSearchInformationConfig;

  UpdateSearchConfig(this.productSearchInformationConfig);
}

class FetchedStates extends ProductEvent {}

class UpdatedState extends ProductEvent {
  final String state;

  UpdatedState(this.state);
}

class UpdatedDistrict extends ProductEvent {
  final String district;

  UpdatedDistrict(this.district);
}

class UpdatedArea extends ProductEvent {
  final List<String> areas;

  UpdatedArea(this.areas);
}

class UpdateProductFilterModel extends ProductEvent {
  final ProductFilterModel productFilterModel;

  UpdateProductFilterModel(this.productFilterModel);
}

class SearchedProductsEvent extends ProductEvent {
  final String query;
  SearchedProductsEvent(this.query);
}

class FetchedMoreFilterResultStores extends ProductEvent {
  FetchedMoreFilterResultStores();
}

class ServiceGroupSelected extends ProductEvent {
  final int selected;
  ServiceGroupSelected(this.selected);
}

//
//
// FILTERED PRODUCT EVENTS:

abstract class FiltererdProductEvent {}

class FiltererdServicesEvent {}

class FiltererdProductState {
  final int selected;
  final bool loading;
  final bool hasError;
  final String error;

  FiltererdProductState({
    this.selected: 0,
    this.loading: true,
    this.hasError: false,
    this.error,
  });
}

class FiltererdServicesState {
  final List<ServiceGroup> serviceGroups;
  final ServiceFilterParameter filterModel;

  FiltererdServicesState({this.serviceGroups, this.filterModel});
}
