import 'package:complex/newentityfeatures/ecommerce-admin/bloc/order/order_bloc.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HistoryTrips extends StatelessWidget {
  const HistoryTrips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
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
                      padding: const EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );

                final orders = state.orders
                    .where(
                      (element) =>
                          element.orderstate.toLowerCase() == 'delivered' ||
                          element.orderstate.toUpperCase() == 'READY TO PICK',
                    )
                    .toList();

                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: orders?.length ?? 0,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final order = orders[index];

                    return Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x22000000),
                            blurRadius: 4,
                            offset: Offset(1, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      order.id.toUpperCase(),
                                      style: TextStyle(
                                        color: Color(0xFFB8B5B5),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      order.custname.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'AMOUNT',
                                      style: TextStyle(
                                        color: Color(0xFFB8B5B5),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '${order.totalcalculatedprice}',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Theme.of(context).primaryColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  order.custaddress?.addressinfo ?? 'No Adress',
                                  style: TextStyle(
                                    color: Color(0xffB8B5B5),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () => Get.context
                                      .read<OrderBloc>()
                                      .add(ChangedOrderEvent(
                                        index: state.orders.indexOf(order),
                                        newOrder: order.copyWith(
                                          orderstate: 'DELIVERED',
                                        ),
                                      )),
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: order.orderstate == 'DELIVERED'
                                          ? Theme.of(context).primaryColor
                                          : Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x22000000),
                                          blurRadius: 4,
                                          offset: Offset(1, 0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Delivered',
                                        style: TextStyle(
                                          color: order.orderstate == 'DELIVERED'
                                              ? Colors.white
                                              : Color(0xffB8B5B5),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () => Get.context
                                      .read<OrderBloc>()
                                      .add(ChangedOrderEvent(
                                        index: state.orders.indexOf(order),
                                        newOrder: order.copyWith(
                                          orderstate: 'READY TO PICK',
                                        ),
                                      )),
                                  child: Container(
                                    margin: EdgeInsets.all(12),
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: order.orderstate == 'READY TO PICK'
                                          ? Theme.of(context).primaryColor
                                          : Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x22000000),
                                          blurRadius: 4,
                                          offset: Offset(1, 0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Nobody Home',
                                        style: TextStyle(
                                          color: order.orderstate ==
                                                  'READY TO PICK'
                                              ? Colors.white
                                              : Color(0xffB8B5B5),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
