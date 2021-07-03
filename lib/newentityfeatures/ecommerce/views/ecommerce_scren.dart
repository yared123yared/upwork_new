import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/services/service_types_grid.dart';
import 'package:complex/view/explore_tab/ecom_navigation_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

import '../widgets/ads/ads_carousel.dart';
import '../widgets/home-widgets/lcoation_widget.dart';
import '../widgets/services/service_group_horizontal_list.dart';

class ECommerceScreen extends StatefulWidget {
  const ECommerceScreen({Key key}) : super(key: key);

  @override
  _ECommerceScreenState createState() => _ECommerceScreenState();
}

class _ECommerceScreenState extends State<ECommerceScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final _location = Location.instance;
      final _bloc = Get.context.read<ProductBloc>();
      PermissionStatus _locationStatus = await _location.requestPermission();
      if (_locationStatus == PermissionStatus.granted ||
          _locationStatus == PermissionStatus.grantedLimited) {
        LocationData _locationData = await _location.getLocation();
        _bloc.add(
          UpdateSearchConfig(
            _bloc.state.productSearchInformationConfig?.copyWith(
                  cust: Customerinfo(
                    customeruserid: FirebaseAuth.instance.currentUser.uid,
                  ),
                  sp: SpatialData(
                    lati: _locationData.longitude,
                    longi: _locationData.longitude,
                  ),
                ) ??
                ProductSearchInformationConfig(
                  cust: Customerinfo(
                    customeruserid: FirebaseAuth.instance.currentUser.uid,
                  ),
                  sp: SpatialData(
                    lati: _locationData.longitude,
                    longi: _locationData.longitude,
                  ),
                ),
          ),
        );
      } else {
        await showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Location required'),
            content: Text(
              'We noticed that you didn\'t accept the Location Access Permission, please provide you desired location manually in the location bar!',
            ),
            actions: [
              TextButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(_).pop(),
              ),
            ],
          ),
        );
      }
      _bloc.add(ProductFetched());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              AdsCarousel(),
              LocationWidget(),
              ServiceTypesGrid(),
              ServiceGroupHorizontalList(),
              AdsCarousel(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            EcomNavigationHelper.of(context)
                .toListPage(type: EcomProductType.realEstate());
          },
          icon: Icon(Icons.medical_services_outlined),
          label: Text("Test RealEstate"),
        ));
  }
}
