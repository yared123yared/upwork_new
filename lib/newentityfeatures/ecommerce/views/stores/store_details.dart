import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StoreDetailsView extends StatelessWidget {
  final LimitedServiceModel serviceModel;
  const StoreDetailsView({Key key, @required this.serviceModel})
      : super(key: key);

  subscribeToStore() {
    // TODO:
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 12),
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 128,
                    height: 128,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          serviceModel.photo1,
                        ),
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
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: ImageIcon(
                      AssetImage('assets/icons/phone.png'),
                      size: 22,
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: ImageIcon(
                      AssetImage('assets/icons/text_message.png'),
                      size: 22,
                    ),
                    onTap: () {},
                  ),
                  if (serviceModel.hasecom || serviceModel.hasproductcatalog)
                    InkWell(
                      child: ImageIcon(
                        AssetImage('assets/icons/cart.png'),
                        size: 22,
                      ),
                      onTap: () {},
                    ),
                  if (serviceModel.hasapt)
                    InkWell(
                      child: ImageIcon(
                        AssetImage('assets/icons/calendar_done.png'),
                        size: 22,
                      ),
                      onTap: () {},
                    ),
                  if (serviceModel.hasadhoctrips)
                    InkWell(
                      child: ImageIcon(
                        AssetImage('assets/icons/bus.png'),
                        size: 22,
                      ),
                      onTap: () {},
                    ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x20000000),
                    offset: Offset(0, 2),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'LATEST FEED',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 4,
              ),
              child: ElevatedButton.icon(
                onPressed: subscribeToStore,
                icon: Icon(
                  Icons.notifications_outlined,
                ),
                label: Text(
                  'SUBSCRIBE',
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black87),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
              ),
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                  target: LatLng(serviceModel.lati, serviceModel.longi),
                  zoom: 16.5,
                ),
                onMapCreated: (GoogleMapController controller) {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 4,
              ),
              child: ElevatedButton.icon(
                onPressed: subscribeToStore,
                icon: Icon(
                  Icons.directions_outlined,
                ),
                label: Text(
                  'GET DIRECTIONS',
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
