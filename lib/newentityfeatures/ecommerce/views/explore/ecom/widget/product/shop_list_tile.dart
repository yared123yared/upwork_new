import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopListTile extends StatelessWidget {
  final LimitedServiceModel serviceModel;
  const ShopListTile({Key key, @required this.serviceModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(serviceModel.photo1),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    serviceModel.serviceName,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: Text(
                      serviceModel.address,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 12),
                    ),
                  ),
                  Text(
                    serviceModel.timeinfo,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    serviceModel.phone.first,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 8),
                  RatingBar.builder(
                    initialRating: serviceModel.ratingcount.toDouble(),
                    direction: Axis.horizontal,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    updateOnDrag: false,
                    ignoreGestures: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: ImageIcon(
                          AssetImage('assets/icons/phone.png'),
                          size: 20,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: ImageIcon(
                          AssetImage('assets/icons/text_message.png'),
                          size: 20,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: ImageIcon(
                          AssetImage('assets/icons/cart.png'),
                          size: 20,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: ImageIcon(
                          AssetImage('assets/icons/calendar_done.png'),
                          size: 20,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: ImageIcon(
                          AssetImage('assets/icons/bus.png'),
                          size: 20,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Status update will be displayed here',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Icon(
              Icons.info_outline,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
