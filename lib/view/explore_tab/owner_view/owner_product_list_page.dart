import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/view/explore_tab/owner_view/owner_product_card.dart';
import 'package:flutter/material.dart';

class OwnerProductListPage extends StatelessWidget {
  final List<LimitedData> productList;
  const OwnerProductListPage({Key key, @required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) =>
              OwnerProductCard.fromLimitedData(productList[index])),
    );
  }
}
