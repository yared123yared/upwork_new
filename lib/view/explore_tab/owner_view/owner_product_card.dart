import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';

class ProductListTileOwner extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final Map<String, String> details;
  final VoidCallback onTap;
  final LimitedData data;

  factory ProductListTileOwner.fromLimitedData(LimitedData data) {
    return data.map(
        pet: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ),
        package: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ),
        product: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ),
        vehicle: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ),
        realEstate: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ),
        job: (v) => ProductListTileOwner(
              data: v,
              details: {},
              imageUrl: '',
              onTap: () {},
              price: '',
              subtitle: '',
              title: '',
            ));
  }

  const ProductListTileOwner({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.details,
    @required this.imageUrl,
    @required this.onTap,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => LimitedData.toDetailsPage(data: jobReqModel),
      onTap: onTap,
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
                        onTap: () {},
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
}
