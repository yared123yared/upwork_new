import 'package:complex/newentityfeatures/ecommerce-admin/views/store-product/store_product_list.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/widgets/main/search_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custoner_code_scanner.dart';

class NewOrderView extends StatelessWidget {
  const NewOrderView({Key key}) : super(key: key);

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
                    'New Order',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Container(width: 40),
                ],
              ),
            ),
            AppSearchInput(
              searchTitle: 'Search for a customer',
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'OR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 64,
              ),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x22000000),
                    blurRadius: 12,
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CustomerCodeScanner(),
                  ),
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.qr_code, size: 80),
                      Text(
                        'Scan Customer\nQR Code',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BlocProvider<CartBloc>(
                      create: (context) => CartBloc(
                        initialState: CartState(
                          cart: orderinfomodel(
                            productlist: [],
                            totalcalculatedprice: 0,
                            totaltax: 0,
                            askedprice: 0,
                          ),
                        ),
                      ),
                      child: StoreProductList(),
                    ),
                  ),
                ),
                child: Text('Skip'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
