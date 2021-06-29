import 'package:complex/newentityfeatures/ecommerce-admin/bloc/delivery/delivery_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/delivery/delivery_state.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/models/delivery_trip.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/widgets/order/order_status_btn.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/widgets/order/order_status_card.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'new_trip.dart';

class DeliveryView extends StatelessWidget {
  const DeliveryView({Key key}) : super(key: key);

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
                    'Delivery Crew',
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
                  label: 'MY STAFF',
                  image: 'assets/icons/delivery_staff.png',
                  count: Get.context.watch<DeliveryBloc>().state.staffCount,
                  hasNew: false,
                ),
                OrderStatusCard(
                  label: 'VENDORS',
                  image: 'assets/icons/delivery_vendors.png',
                  count: Get.context.watch<DeliveryBloc>().state.vendorsCount,
                  hasNew: false,
                ),
                OrderStatusButton(
                  label: 'ADD NEW',
                  image: 'assets/icons/add_delivery_person.png',
                  clickEvent: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => NewTripView(
                        deliveryTrip: DeliveryTrip(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<DeliveryBloc, DeliveryState>(
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
                if (state.deliveryTrips.isEmpty)
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 4,
                      horizontal: 16,
                    ),
                    child: Text(
                      'There are no Deliveries Assigned.\nTap The Add New Button to \nAssign a Delivery.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                return ListView.builder(
                  itemCount: state.deliveryTrips.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  itemBuilder: (context, index) {
                    final trip = state.deliveryTrips[index];

                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                      child: InkWell(
                        // onTap: () => Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (_) => NewTripView(
                        //       deliveryTrip: trip,
                        //     ),
                        //   ),
                        // ),
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
                                      trip.assignedToName.toUpperCase(),
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
                                      trip.isStaffVendor
                                          ? 'STAFF MEMBER'
                                          : 'VENDOR',
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
                                      trip.assignedorders.length.toString(),
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
