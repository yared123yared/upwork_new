import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/domain/core/failure/failure.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_provider.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductProvider provider = ProductProvider();
  ProductListBloc() : super(ProductListState.initial());

  @override
  Stream<ProductListState> mapEventToState(
    ProductListEvent event,
  ) async* {
    yield* event.map(get: (get) async* {
      yield ProductListState.initial().copyWith(isLoading: true);
      final ProductListState finalState = await get.type.map(pet: (pet) async {
        Either<Failure, LimitedRealEstateList> data =
            await provider.getRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, vehicle: (vehicle) async {
        Either<Failure, LimitedRealEstateList> data =
            await provider.getRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, realEstate: (realEstate) async {
        Either<Failure, LimitedRealEstateList> data =
            await provider.getRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, job: (job) async {
        Either<Failure, LimitedRealEstateList> data =
            await provider.getRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      }, product: (product) async {
        Either<Failure, LimitedRealEstateList> data =
            await provider.getRealEstateList();
        return data.fold(
            (l) => state.copyWith(isLoading: false, failure: some(l)),
            (r) => state.copyWith(isLoading: false, listData: r));
      });

      yield finalState;
    });
  }
}
