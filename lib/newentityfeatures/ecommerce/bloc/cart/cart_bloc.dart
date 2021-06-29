import 'package:bloc/bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/states/cart_state.dart';
export '../../models/states/cart_state.dart';
import '../../repositories/cart/cart_repository.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final _cartRepository = CartRepository();
  CartBloc({CartState initialState})
      : super(
          initialState ??
              CartState(
                cart: orderinfomodel(
                  productlist: [],
                ),
              ),
        );

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is FetchedCartEvent) {
      yield state.copyWith(loading: true);
      final cart = await _cartRepository.getCart();

      yield state.copyWith(loading: false, cart: cart);
    } else if (event is AddedProductCartEvent) {
      final products = [...state.cart.productlist];
      final filteredProds =
          products.where((element) => element.itemid == event.product.itemid);
      if (filteredProds.length > 0) {
        this.add(ChangedQuantityCartEvent(
          event.product.qty + filteredProds.first.qty,
          filteredProds.first,
        ));
      } else {
        products.add(event.product);
        yield state.copyWith(
          cart: state.cart.copyWith(
            productlist: products,
            totalcalculatedprice:
                state.cart.totalcalculatedprice + event.product.totalprice,
            askedprice: state.cart.askedprice + event.product.totalprice,
          ),
        );
      }
    } else if (event is ChangedQuantityCartEvent) {
      final products = [...state.cart.productlist];
      final index = products.indexOf(event.product);
      final oldQuantity = products[index].qty;
      products.removeAt(index);
      if (event.newQuantity > 0)
        products.insert(
          index,
          event.product.copyWith(qty: event.newQuantity),
        );

      yield state.copyWith(
        cart: state.cart.copyWith(
          productlist: products,
          totalcalculatedprice: state.cart.totalcalculatedprice +
              (event.newQuantity - oldQuantity) * event.product.totalprice,
          askedprice: state.cart.askedprice +
              (event.newQuantity - oldQuantity) * event.product.totalprice,
        ),
      );
    } else if (event is ChangedCartStatusEvent) {
      final oldStatus = state.cart.orderstate;

      yield state.copyWith(
        cart: state.cart.copyWith(
          orderstate: event.newStatus,
        ),
      );
      final res = await _cartRepository.updateOrderStatus(
        state.cart,
        event.newStatus,
      );
      if (res) {
        Get.snackbar(
          'Success',
          'The order status was changed with success!',
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        yield state.copyWith(
          cart: state.cart.copyWith(
            orderstate: oldStatus,
          ),
        );

        Get.snackbar(
          'Failure',
          'The order status couldn\'t be changed!',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else if (event is CartCheckout) {
      yield state.copyWith(
        loading: true,
      );
      final newCart = await _cartRepository.checkoutORder(state.cart);
      yield state.copyWith(
        loading: false,
        cart: newCart,
      );
    }
  }
}
