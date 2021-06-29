part of 'ecommerce_cubit.dart';

abstract class EcommerceState extends Equatable {
  const EcommerceState();
  @override
  List<Object> get props => [];
}

class LandingPageState extends EcommerceState {}

class LoadingPageState extends EcommerceState {}

class AppointmentPageState extends EcommerceState {
  final String serviceID;
  AppointmentPageState({@required this.serviceID});

  @override
  List<Object> get props => [serviceID];
}
