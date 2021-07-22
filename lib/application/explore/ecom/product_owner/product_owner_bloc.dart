import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/domain/core/failure/failure.dart';

import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_provider.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
//import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
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
        await provider.getCompletePetList(entitytype: get.entitytype,entityid:get.entityid,isservice:get.isservice,origin:get.origin,lastdocumentid: get.lastdocumentid,limit:get.limit);
        return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
      }, vehicle: (vehicle) async {
        Either<Failure, CompleteVehicleList> data =
        await provider.getCompleteVehicleList(entitytype: get.entitytype,entityid:get.entityid,isservice:get.isservice,origin:get.origin,lastdocumentid: get.lastdocumentid,limit:get.limit);
        return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
      }, realEstate: (realEstate) async {
        Either<Failure, CompleteRealEstateList> data =
        await provider.getCompleteRealEstateList(entitytype: get.entitytype,entityid:get.entityid,isservice:get.isservice,origin:get.origin,lastdocumentid: get.lastdocumentid,limit:get.limit);
        return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
      }, job: (job) async {
        Either<Failure, CompleteJobList> data =
        await provider.getCompleteJobsList(entitytype: get.entitytype,entityid:get.entityid,isservice:get.isservice,origin:get.origin,lastdocumentid: get.lastdocumentid,limit:get.limit);
        return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
      }, product: (product) async {
        Either<Failure, CompleteProductList> data =
        await provider.getCompleteProductList(entitytype: get.entitytype,entityid:get.entityid,isservice:get.isservice,origin:get.origin,lastdocumentid: get.lastdocumentid,limit:get.limit);
        return data.fold(
                (l) => state.copyWith(isLoading: false, failure: some(l)),
                (r) => state.copyWith(isLoading: false, listData: r));
      });

      yield finalState;
    }, add: (_AddProduct value) async* {
      yield ProductOwnerState.initial().copyWith(isLoading: true);
      Option<Failure> data = await provider.addProduct(data: value.productdata,producttype: value.type,entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin);
      yield data.fold(
              () => state.copyWith(
              isLoading: false, message: 'Product created succesfully'),
              (a) => state.copyWith(isLoading: false, failure: some(a)));
    }, update: (_UpdateProduct value) async* {
      yield ProductOwnerState.initial().copyWith(isLoading: true);
      Option<Failure> data =
      await provider.updateProduct(data: value.productdata,producttype: value.type,entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin);
      yield data.fold(
              () => state.copyWith(
              isLoading: false, message: 'Product updated succesfully'),
              (a) => state.copyWith(isLoading: false, failure: some(a)));
    },

        getProductSuggestion: (_GetProductSuggestion value) async* {
          yield ProductOwnerState.initial().copyWith(isLoading: true);
          Either<Failure, List<LuceneSearchSuggestionData>> data =
          await provider.getProductSuggestion(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,texttosearch: value.texttosearch,producttype:value.type);
          yield data.fold(
                  (l) => state.copyWith(isLoading: false, failure: some(l)),
                  (r) => state.copyWith(isLoading: false, lucenesuggestiondata: r));
        }, delete: (_DeleteProduct value) async* {
          yield ProductOwnerState.initial().copyWith(isLoading: true);
          Option<Failure> data =
          await provider.deleteProduct(productid: value.productid,producttype:value.type,entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin);
          yield data.fold(
                  () => state.copyWith(
                  isLoading: false, message: 'Product updated succesfully'),
                  (a) => state.copyWith(isLoading: false, failure: some(a)));
        },
        getProductById: (_GetProductById value) async* {
          yield ProductOwnerState.initial().copyWith(isLoading: true);
          final ProductOwnerState finalState = await value.type.map(pet: (pet) async {
            Either<Failure, CompletePetList> data =
            await provider.getSinglePetList(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,productid: value.productid);
            return data.fold(
                    (l) => state.copyWith(isLoading: false, failure: some(l)),
                    (r) => state.copyWith(isLoading: false, listData: r));
          }, vehicle: (vehicle) async {
            Either<Failure, CompleteVehicleList> data =
            await provider.getSingleVehicleList(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,productid: value.productid);
            return data.fold(
                    (l) => state.copyWith(isLoading: false, failure: some(l)),
                    (r) => state.copyWith(isLoading: false, listData: r));
          }, realEstate: (realEstate) async {
            Either<Failure, CompleteRealEstateList> data =
            await provider.getSingleRealEstateList(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,productid: value.productid);
            return data.fold(
                    (l) => state.copyWith(isLoading: false, failure: some(l)),
                    (r) => state.copyWith(isLoading: false, listData: r));
          }, job: (job) async {
            Either<Failure, CompleteJobList> data =
            await provider.getSingleJobsList(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,productid: value.productid);
            return data.fold(
                    (l) => state.copyWith(isLoading: false, failure: some(l)),
                    (r) => state.copyWith(isLoading: false, listData: r));
          }, product: (product) async {
            Either<Failure, CompleteProductList> data =
            await provider.getSingleProductList(entitytype: value.entitytype,entityid:value.entityid,isservice:value.isservice,origin:value.origin,productid: value.productid);
            return data.fold(
                    (l) => state.copyWith(isLoading: false, failure: some(l)),
                    (r) => state.copyWith(isLoading: false, listData: r));
          });
          yield finalState;



        }






    );
  }
}
