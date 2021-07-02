import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class CartState {
  bool loading;
  orderinfomodel cart;
  bool hasError;
  String error;
  CartState({
    this.loading: false,
    this.cart,
    this.hasError: false,
    this.error,
  });

  CartState copyWith({
    bool loading,
    orderinfomodel cart,
    bool hasError: false,
    String error,
  }) {
    return CartState(
      loading: loading ?? this.loading,
      cart: cart ?? this.cart,
      hasError: hasError ?? this.hasError,
      error: error ?? this.error,
    );
  }
}

abstract class CartEvent {}

class FetchedCartEvent extends CartEvent {}

class ChangedQuantityCartEvent extends CartEvent {
  final double newQuantity;
  final productinorder product;

  ChangedQuantityCartEvent(this.newQuantity, this.product);
}

class ChangedCartStatusEvent extends CartEvent {
  final String newStatus;

  ChangedCartStatusEvent(this.newStatus);
}

class AddedProductCartEvent extends CartEvent {
  final productinorder product;

  AddedProductCartEvent(this.product);
}

class CartCheckout extends CartEvent {}
