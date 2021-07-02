import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_state.dart';
export 'order_state.dart';
import '../../repositories/order/order_repository.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final _orderRepository = OrderRepository();
  OrderBloc() : super(OrderState());

  @override
  Stream<OrderState> mapEventToState(OrderEvent event) async* {
    if (event is FetchedOrdersEvent) {
      yield state.copyWith(loading: true);
      final orderDetails = await _orderRepository.getOrdersDetails();
      yield state.copyWith(
        loading: false,
        inProgress: orderDetails[0],
        readyToPick: orderDetails[1],
        delivered: orderDetails[2],
        orders: orderDetails.last,
      );
    } else if (event is ChangedOrderEvent) {
      final orders = List<orderinfomodel>.from(state.orders);
      orders.remove(
        orders.where((element) => element.id == event.newOrder.id).first,
      );

      if (event.index == orders.length) {
        orders.add(event.newOrder);
      } else {
        orders.insert(event.index, event.newOrder);
      }
      yield state.copyWith(
        orders: orders,
      );
    }
  }
}
