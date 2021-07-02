import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

import '../../providers/cart/cart_provider.dart';

class CartRepository {
  final _cartProvider = CartProvider();

  Future<orderinfomodel> getCart() async {
    final cartRaw = await _cartProvider.fetchCart();
    orderinfomodel cart = orderinfomodel.fromJson(cartRaw);

    return cart;
  }

  Future<bool> updateOrderStatus(orderinfomodel cart, String newStatus) async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  Future<orderinfomodel> checkoutORder(orderinfomodel cart) async {
    await Future.delayed(Duration(seconds: 1));
    // CHECKOUT
    return cart.copyWith(
      id: DateTime.now().millisecond.toString(),
    );
  }
}
