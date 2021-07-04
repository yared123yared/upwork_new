import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/services/classified_type_tile.dart';
import 'package:complex/view/explore_tab/ecom_navigation_helper.dart';
import 'package:flutter/material.dart';

class ClassifiedCategoryList extends StatelessWidget {
  const ClassifiedCategoryList({Key key}) : super(key: key);

  final String image =
      "https://freedesignfile.com/upload/2019/11/Mobile-phone-shopping-illustration-vector.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 192,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'CLASSIFIEDS',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 20),
              scrollDirection: Axis.horizontal,
              children: [
                ClassifiedTypeTile(
                    typeName: 'JOB',
                    imageUrl: image,
                    onTap: () {
                      EcomNavigationHelper.of(context)
                          .toListPage(type: EcomProductType.job());
                    }),
                ClassifiedTypeTile(
                    typeName: 'PET',
                    imageUrl: image,
                    onTap: () {
                      EcomNavigationHelper.of(context)
                          .toListPage(type: EcomProductType.pet());
                    }),
                ClassifiedTypeTile(
                    typeName: 'VEHICLE',
                    imageUrl: image,
                    onTap: () {
                      EcomNavigationHelper.of(context)
                          .toListPage(type: EcomProductType.vehicle());
                    }),
                ClassifiedTypeTile(
                    typeName: 'REALESTATE',
                    imageUrl: image,
                    onTap: () {
                      EcomNavigationHelper.of(context)
                          .toListPage(type: EcomProductType.realEstate());
                    }),
                ClassifiedTypeTile(
                    typeName: 'PRODUCT',
                    imageUrl: image,
                    onTap: () {
                      EcomNavigationHelper.of(context)
                          .toListPage(type: EcomProductType.product());
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
