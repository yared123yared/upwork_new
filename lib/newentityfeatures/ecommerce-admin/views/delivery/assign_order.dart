import 'package:complex/newentityfeatures/ecommerce-admin/bloc/order/order_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/models/delivery_trip.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/widgets/order/assign_order_tile.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignOrdersView extends StatefulWidget {
  final DeliveryTrip deliveryTrip;
  AssignOrdersView({Key key, this.deliveryTrip}) : super(key: key);

  @override
  _AssignOrdersViewState createState() => _AssignOrdersViewState();
}

class _AssignOrdersViewState extends State<AssignOrdersView> {
  DeliveryTrip deliveryTrip;

  @override
  void initState() {
    super.initState();
    deliveryTrip = widget.deliveryTrip;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
                          'Assign Orders',
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                        Container(width: 40),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x22000000),
                          blurRadius: 8,
                          offset: Offset(1, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NAME',
                                style: TextStyle(
                                  color: Color(0xFFB8B5B5),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  context
                                      .read<VendorBloc>()
                                      .state
                                      .vendors
                                      .where((element) =>
                                          element.vendorId ==
                                          deliveryTrip.assignedToId)
                                      .first
                                      .personName
                                      .toUpperCase(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(42),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                child: Text(
                                  'STAFF MEMBER',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'ORDERS',
                              style: TextStyle(
                                color: Color(0xFFB8B5B5),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              color: Color(0xFfFFDC51),
                              width: 24,
                              height: 24,
                              margin: EdgeInsets.only(top: 4),
                              child: Center(
                                child: Text(
                                  (deliveryTrip.assignedorders?.length ?? 0)
                                      .toString(),
                                  style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<OrderBloc, OrderState>(
                    builder: (context, state) {
                      if (state.hasError) {
                        return EcommerceErrorWidget(
                          errorText: state.errorMessage,
                        );
                      }
                      if (state.loading) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      return ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.orders.length,
                        itemBuilder: (context, index) {
                          return AssignOrderTile(
                            order: state.orders[index],
                            assigned: deliveryTrip.assignedorders
                                    ?.contains(state.orders[index]) ??
                                false,
                            onAssign: (add) => setState(
                              () {
                                if (deliveryTrip.assignedorders == null)
                                  deliveryTrip.assignedorders = [];
                                add
                                    ? deliveryTrip.assignedorders
                                        .add(state.orders[index])
                                    : deliveryTrip.assignedorders.remove(
                                        state.orders[index],
                                      );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height:
                    (deliveryTrip.assignedorders ?? []).length == 0 ? 0 : 64,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 8,
                      offset: Offset(1, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(42),
                ),
                child: Center(
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
