import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:complex/view/pet_pages/add_pet_page.dart';
import 'package:complex/view/product_pages/general_contact_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class OwnerProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final Map<String, String> details;
  final LimitedData data;

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
      onTap: () => LimitedData.toDetailsPage(data: data),
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

  factory OwnerProductCard.fromLimitedData(LimitedData data) {
    return data.map(
        pet: (v) => OwnerProductCard(
              data: v,
              details: {
                'breed': v.breed,
                'gender': v.gender,
                'age': v.age.toString() + 'yrs',
              },
              imageUrl: v.tileimage,
              price: v.price.toString(),
              subtitle: v.animalclass,
              title: v.name,
            ),
        package: (v) => OwnerProductCard(
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
              details: {
                'year': v.yearmade.toString(),
                'type': v.vehicletype,
                'model': v.model,
              },
              imageUrl: v.tileimage,
              price: v.price.toString(),
              subtitle: v.yearmade.toString(),
              title: v.make,
            ),
        realEstate: (v) => OwnerProductCard(
              data: v,
              details: {
                'bedroom': v.numbedroom.toString(),
                'bathroom': v.numbathroom.toString(),
                'floor': v.floorNumber.toString(),
              },
              imageUrl: v.tileimage,
              price: v.price.toString() + 'USD /Month',
              subtitle: v.addressarea.addressinfo,
              title: v.propertytype,
            ),
        job: (v) => OwnerProductCard(
              data: v,
              details: {
                'job type': v.jobtype,
                'address':
                    '${v.addressarea.addressinfo}, ${v.addressarea.village}, ${v.addressarea.state}, ${v.addressarea.country}',
              },
              imageUrl: v.companyicon,
              price: '(' + v.salaryrange + ')',
              subtitle: v.companyname,
              title: v.title,
            ));
  }

  void _editData(LimitedData data) {
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
