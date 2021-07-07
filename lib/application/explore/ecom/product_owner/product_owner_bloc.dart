import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_owner_event.dart';
part 'product_owner_state.dart';
part 'product_owner_bloc.freezed.dart';

class ProductOwnerBloc extends Bloc<ProductOwnerEvent, ProductOwnerState> {
  ProductProvider provider = ProductProvider();
  ProductOwnerBloc() : super(ProductOwnerState.initial());

  @override
  Stream<ProductOwnerState> mapEventToState(
    ProductOwnerEvent event,
  ) async* {
    yield* event.map(get: (get) async* {
      yield ProductOwnerState.initial().copyWith(isLoading: true);
      final ProductOwnerState finalState = await get.type.map(pet: (pet) async {
        Either<Failure, CompletePetList> data =
            await provider.getCompletePetList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, vehicle: (vehicle) async {
        Either<Failure, CompleteVehicleList> data =
            await provider.getCompleteVehicleList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, realEstate: (realEstate) async {
        Either<Failure, CompleteRealEstateList> data =
            await provider.getCompleteRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, job: (job) async {
        Either<Failure, CompleteJobList> data =
            await provider.getCompleteJobsList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, product: (product) async {
        Either<Failure, CompleteProductList> data =
            await provider.getCompleteProductList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      });

      yield finalState;
    }, add: (_AddProduct value) async* {
      yield ProductOwnerState.initial().copyWith(isLoading: true);
      Option<Failure> data = await provider.addProduct(data: value.productData);
      yield data.fold(
          () => state.copyWith(
              isLoading: false, message: 'Product created succesfully'),
          (a) => state.copyWith(isLoading: false, failure: some(a)));
    }, update: (_UpdateProduct value) async* {
      yield ProductOwnerState.initial().copyWith(isLoading: true);
      Option<Failure> data =
          await provider.updateProduct(data: value.productData);
      yield data.fold(
          () => state.copyWith(
              isLoading: false, message: 'Product updated succesfully'),
          (a) => state.copyWith(isLoading: false, failure: some(a)));
    });
  }
}
