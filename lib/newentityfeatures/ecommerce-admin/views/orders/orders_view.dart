import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';

import 'package:complex/newentityfeatures/ecommerce-admin/widgets/order/order_status_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../ecommerce/bloc/cart/cart_bloc.dart';
import '../../bloc/order/order_bloc.dart';
import 'order-details/order_details_view.dart';
import 'new_order_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    'All Orders',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Container(width: 40),
                ],
              ),
            ),
            Row(
              children: [
                OrderStatusCard(
                  label: 'IN PROGRESS',
                  image: 'assets/icons/order/in_progress.png',
                  count: Get.context.watch<OrderBloc>().state.inProgress,
                  hasNew: true,
                ),
                OrderStatusCard(
                  label: 'READY TO PICK',
                  image: 'assets/icons/order/ready.png',
                  count: Get.context.watch<OrderBloc>().state.readyToPick,
                  hasNew: true,
                ),
                OrderStatusCard(
                  label: 'DELIVERED',
                  image: 'assets/icons/order/delivered.png',
                  count: Get.context.watch<OrderBloc>().state.delivered,
                  hasNew: false,
                ),
              ],
            ),
            BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                if (state.hasError) {
                  return EcommerceErrorWidget(
                    errorText: state.errorMessage,
                  );
                }
                if (state.loading)
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  );

                return ListView.builder(
                  itemCount: state.orders?.length ?? 0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final order = state.orders[index];
                    return Container(
                      key: Key(order.id),
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x22000000),
                            blurRadius: 8,
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => BlocProvider(
                                create: (context) => CartBloc(
                                  initialState: CartState(
                                    cart: order,
                                  ),
                                ),
                                child: OrderDetailsView(),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'ORDER NUMBER',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFB8B5B5),
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    '${order.id}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ImageIcon(
                                AssetImage(
                                  order.orderstate == 'PROCESSING' ||
                                          order.orderstate == 'PENDING' ||
                                          order.orderstate == 'DELIVERING'
                                      ? 'assets/icons/order/in_progress.png'
                                      : order.orderstate == 'READY TO PICK'
                                          ? 'assets/icons/order/ready.png'
                                          : 'assets/icons/order/delivered.png',
                                ),
                                color: order.orderstate == 'DELIVERED'
                                    ? Theme.of(context).primaryColor
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => newOrderEvent(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void newOrderEvent(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => NewOrderView(),
      ),
    );
  }
}
