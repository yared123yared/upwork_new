import 'dart:math';

import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CathalogCard extends StatelessWidget {
  final LimitedProductData productData;
  const CathalogCard({
    Key key,
    @required this.productData,
  }) : super(key: key);

  void addProductToCard(BuildContext context) {
    context.read<CartBloc>().add(
          AddedProductCartEvent(
            productinorder(
              id: Random().nextInt(2340).toString(),
              itemid: productData.id,
              productid: productData.id,
              tileimage: productData.tileimage,
              title: productData.title,
              price: productData.origprice,
              unitprice: productData.discountedprice?.toString() ??
                  productData.origprice.toString(),
              unit: '',
              qty: 1.0,
              totalprice: productData.discountedprice ?? productData.origprice,
              discountedprice: productData.discountedprice,
            ),
          ),
        );
  }

  selectedQuantity(BuildContext context, LimitedPackageData packData) {
    Navigator.of(context).pop();
  }

  selectQuantity(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Available Quantities for ',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, bottom: 16),
                  child: Text(
                    productData.title.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ),
                Column(
                  children: productData.packdata
                      .map(
                        (packData) => Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            onTap: () => selectedQuantity(context, packData),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 12),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Text(
                                      packData.desc,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        productData.discountedprice
                                            .toStringAsFixed(2),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        productData.origprice
                                            .toStringAsFixed(2),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Color(0xff707070),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    productData.tileimage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              MdiIcons.chiliMild,
                              color: Colors.red[900],
                              size: 14,
                            ),
                            Text(
                              productData.spicetype?.toString() ?? '0',
                            ),
                          ],
                        ),
                        Flexible(
                          child: Container(),
                        ),
                        if ((productData.isvegetarian ?? false))
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff070707),
                              ),
                            ),
                            child: Container(
                              width: 8,
                              height: 8,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      productData.title,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    // DROPDOWN
                    InkWell(
                      onTap: () => selectQuantity(context),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0x80000000),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Qty'),
                            Icon(
                              Icons.arrow_drop_down,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              productData.discountedprice.toStringAsFixed(2),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              productData.origprice.toStringAsFixed(2),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () => addProductToCard(context),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
