import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/view/explore_tab/ecom_navigation_helper.dart';
import 'package:complex/view/product_pages/general_contact_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class OwnerProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final Map<String, String> details;
  final CompleteProductData data;

  const OwnerProductCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.details,
    @required this.imageUrl,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          EcomNavigationHelper.of(context).completeToDetailsPage(data: data),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
              errorBuilder: (context, obj, stck) => SizedBox(
                width: 48,
                height: 48,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 4),
                      Text(
                        price,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Color(0xff666666),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Column(
                      children: List<Text>.from(details
                          .map((key, value) => MapEntry(
                              key,
                              Row(
                                children: [
                                  Text(key),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(value)
                                ],
                              )))
                          .values
                          .toList())),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            'Delete',
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _editData(data);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            'Edit',
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
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
          ],
        ),
      ),
    );
  }

  factory OwnerProductCard.fromLimitedData(CompleteProductData data) {
    return data.map(
        pet: (v) => OwnerProductCard(
              data: v,
              details: {},
              imageUrl: '',
              price: '',
              subtitle: '',
              title: '',
            ),
        product: (v) => OwnerProductCard(
              data: v,
              details: {},
              imageUrl: '',
              price: '',
              subtitle: '',
              title: '',
            ),
        vehicle: (v) => OwnerProductCard(
              data: v,
              details: {},
              imageUrl: '',
              price: '',
              subtitle: '',
              title: '',
            ),
        realEstate: (v) => OwnerProductCard(
              data: v,
              details: {},
              imageUrl: '',
              price: '',
              subtitle: '',
              title: '',
            ),
        job: (v) => OwnerProductCard(
              data: v,
              details: {
                'min year exp': v.data.minyearexperience.toString(),
                'job type': v.data.worktype,
                'address':
                    '${v.data.contactdetails.address.addressline}, ${v.data.contactdetails.address.district}, ${v.data.contactdetails.address.state}, ${v.data.contactdetails.address.country}',
              },
              imageUrl: v.data.companylogo,
              price: '(${v.data.minsalaryrange} - ${v.data.maxsalaryrange})',
              subtitle: v.data.companyname,
              title: v.data.title,
            ));
  }

  void _editData(CompleteProductData data) {
    data.maybeMap(
      pet: (pet) {
        Get.to(() => GeneralContactDetailPage(
              type: ContactOpenFrom.pet,
            ));
      },
      product: (product) {
        Get.to(() => GeneralContactDetailPage(
              type: ContactOpenFrom.product,
            ));
      },
      vehicle: (vehicle) {
        Get.to(() => GeneralContactDetailPage(
              type: ContactOpenFrom.vehicle,
            ));
      },
      realEstate: (realEstate) {
        Get.to(() => GeneralContactDetailPage(
              type: ContactOpenFrom.addProperty,
            ));
      },
      job: (job) {
        Get.to(() => GeneralContactDetailPage(
              type: ContactOpenFrom.job,
            ));
      },
      orElse: () {},
    );
  }
}
