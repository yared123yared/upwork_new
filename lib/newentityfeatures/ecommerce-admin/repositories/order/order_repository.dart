import '../../../ecommerce/models/ExplorePageRelatedModels.dart';
import 'order_provider.dart';

class OrderRepository {
  final OrderProvider _orderProvider = OrderProvider();

  Future<List> getOrdersDetails() async {
    final ordersRaw = await _orderProvider.fetchOrders();

    List<orderinfomodel> orders =
        ordersRaw.map((e) => orderinfomodel.fromJson(e)).toList();

    // [in progress, ready, delivered, orders]
    return [
      orders
          .where(
            (element) =>
                element.orderstate == 'PROCESSING' ||
                element.orderstate == 'PENDING' ||
                element.orderstate == 'DELIVERING',
          )
          .length,
      orders.where((element) => element.orderstate == 'READY TO PICKUP').length,
      orders.where((element) => element.orderstate == 'DELIVERED').length,
      orders,
    ];
  }
}
