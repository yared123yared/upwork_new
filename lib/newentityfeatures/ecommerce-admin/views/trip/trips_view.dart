import 'package:complex/newentityfeatures/ecommerce-admin/bloc/order/order_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/orders/order-details/order_details_view.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'history_trips.dart';

class TripsView extends StatefulWidget {
  TripsView({Key key}) : super(key: key);

  @override
  _TripsViewState createState() => _TripsViewState();
}

class _TripsViewState extends State<TripsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            overlayColor: MaterialStateProperty.all(Colors.white),
            tabs: [
              Tab(
                text: 'Active Trips',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
          title: Text('Trips'),
        ),
        body: SafeArea(
          child: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: [
              ActiveTrips(),
              HistoryTrips(),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveTrips extends StatelessWidget {
  const ActiveTrips({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                      element.orderstate == 'PROCESSING' ||
                      element.orderstate == 'PENDING' ||
                      element.orderstate == 'DELIVERING',
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
                  padding: EdgeInsets.all(8),
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
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
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
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TRIP ${index + 1}',
                                style: TextStyle(
                                  color: Color(0xFFB8B5B5),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                order.id.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffD9EEE2),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x22000000),
                                    blurRadius: 4,
                                    offset: Offset(1, 0),
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              child: FittedBox(
                                child: Text(
                                  'START TRIP',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFFCBCB),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x22000000),
                                    blurRadius: 4,
                                    offset: Offset(1, 0),
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              child: FittedBox(
                                child: Text(
                                  'END TRIP',
                                  style: TextStyle(
                                    color: Color(0xffFE3B3B),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
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
    );
  }
}
