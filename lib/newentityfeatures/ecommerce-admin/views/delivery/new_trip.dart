import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_state.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/models/delivery_trip.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'assign_order.dart';

class NewTripView extends StatefulWidget {
  final DeliveryTrip deliveryTrip;
  NewTripView({Key key, this.deliveryTrip}) : super(key: key);

  @override
  _NewTripViewState createState() => _NewTripViewState();
}

class _NewTripViewState extends State<NewTripView> {
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
                          'New Trip',
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                        Container(width: 40),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x22000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text('READY FOR DELIVERY'),
                      onTap: () => setState(
                          () => deliveryTrip.ready = !deliveryTrip.ready),
                      trailing: Checkbox(
                        value: deliveryTrip.ready,
                        onChanged: (val) =>
                            setState(() => deliveryTrip.ready = val),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x22000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text('STAFF OR REMOTE VENDOR'),
                      onTap: () => setState(() => deliveryTrip.isStaffVendor =
                          !deliveryTrip.isStaffVendor),
                      trailing: Switch(
                        value: deliveryTrip.isStaffVendor,
                        onChanged: (val) =>
                            setState(() => deliveryTrip.isStaffVendor = val),
                      ),
                      tileColor: Color(0xFFF5F5F5),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x22000000),
                          blurRadius: 8,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16,
                            top: 20,
                            bottom: 8,
                          ),
                          child: Text(
                            'SELECT STAFF OR REMOTE VENDOR',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontSize: 16),
                          ),
                        ),
                        BlocBuilder<VendorBloc, VendorState>(
                          builder: (context, state) {
                            if (state.hasError) {
                              return EcommerceErrorWidget(
                                errorText: state.errorText,
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
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: state.vendors.length,
                              itemBuilder: (context, index) {
                                final vendor = state.vendors[index];
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
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
                                    borderRadius: BorderRadius.circular(42),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                vendor.personName.toUpperCase(),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(42),
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
                                      ElevatedButton(
                                        onPressed: () => setState(
                                          () => deliveryTrip.assignedToId =
                                              deliveryTrip.assignedToId ==
                                                      vendor.vendorId
                                                  ? null
                                                  : vendor.vendorId,
                                        ),
                                        child: Text(deliveryTrip.assignedToId ==
                                                vendor.vendorId
                                            ? 'SELECTED'
                                            : 'SELECT'),
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                            deliveryTrip.assignedToId ==
                                                    vendor.vendorId
                                                ? Colors.white
                                                : Color(0xFFA2A2A2),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            deliveryTrip.assignedToId ==
                                                    vendor.vendorId
                                                ? Theme.of(context).primaryColor
                                                : Color(0xFFF5F5F5),
                                          ),
                                        ),
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
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => AssignOrdersView(
                    deliveryTrip: deliveryTrip,
                  ),
                ),
              ),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: deliveryTrip.assignedToId == null ? 0 : 64,
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
            ),
          ],
        ),
      ),
    );
  }
}
