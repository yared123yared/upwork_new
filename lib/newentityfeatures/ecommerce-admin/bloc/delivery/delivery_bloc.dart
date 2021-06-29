import 'package:complex/newentityfeatures/ecommerce-admin/models/delivery_trip.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/repositories/delivery/delivery_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'delivery_state.dart';

class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  final _deliveryRepository = DeliveryRepository();
  DeliveryBloc({DeliveryState initialState})
      : super(initialState ?? DeliveryState());

  @override
  Stream<DeliveryState> mapEventToState(DeliveryEvent event) async* {
    if (event is FetchedDeliveryTripsEvent) {
      yield state.copyWith(loading: true);
      final details = await _deliveryRepository.getDerliveryDetails();
      yield state.copyWith(
        loading: false,
        staffCount: details[0],
        vendorsCount: details[1],
        deliveryTrips: List<DeliveryTrip>.from(details.last),
      );
    }
  }
}
