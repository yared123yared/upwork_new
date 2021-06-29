import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/vendor/vendor_state.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/models/vendor.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/widgets/vendor/vendor_tile.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'vendor_details_view.dart';

class VendorView extends StatelessWidget {
  const VendorView({Key key}) : super(key: key);

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
                    'Vendors',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Container(width: 40),
                ],
              ),
            ),
            BlocBuilder<VendorBloc, VendorState>(
              builder: (context, state) {
                if (state.hasError) {
                  return EcommerceErrorWidget(
                    errorText: state.errorText,
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
                  itemCount: state.vendors?.length ?? 0,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final vendor = state.vendors[index];
                    return VendorTile(
                      vendor: vendor,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => VendorDetailsView(
              vendor: VendorModel(),
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Text(
            'ADD VENDOR',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
