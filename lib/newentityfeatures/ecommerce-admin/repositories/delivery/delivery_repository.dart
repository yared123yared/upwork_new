import 'package:complex/newentityfeatures/ecommerce-admin/models/delivery_trip.dart';

import 'delivery_provider.dart';

class DeliveryRepository {
  final _deliveryProvider = DeliveryProvider();

  Future<List> getDerliveryDetails() async {
    final detailsRaw = await _deliveryProvider.fetchDeliveryDetails();
    return [
      detailsRaw[0],
      detailsRaw[1],
      detailsRaw[2].map(
        (e) => DeliveryTrip.fromMap(e),
      ).toList(),
    ];
  }
}
