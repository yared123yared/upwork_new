import '../../models/delivery_trip.dart';

class DeliveryState {
  bool loading;
  bool hasError;
  String errorMessage;
  int staffCount;
  int vendorsCount;
  List<DeliveryTrip> deliveryTrips;
  DeliveryState({
    this.loading: false,
    this.hasError: false,
    this.errorMessage,
    this.staffCount,
    this.vendorsCount,
    this.deliveryTrips,
  });

  DeliveryState copyWith({
    bool loading,
    bool hasError: false,
    String errorMessage,
    int staffCount,
    int vendorsCount,
    List<DeliveryTrip> deliveryTrips,
  }) {
    return DeliveryState(
      loading: loading ?? this.loading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      staffCount: staffCount ?? this.staffCount,
      vendorsCount: vendorsCount ?? this.vendorsCount,
      deliveryTrips: deliveryTrips ?? this.deliveryTrips,
    );
  }
}

abstract class DeliveryEvent {}

class FetchedDeliveryTripsEvent extends DeliveryEvent {}
