import 'package:equatable/equatable.dart';

import '../../models/appointment_counter_model.dart';

abstract class AppointmentCounterState extends Equatable {
  const AppointmentCounterState();
}

class AppointmentCounterLoading extends AppointmentCounterState {
  @override
  List<Object> get props => [];
}

class AppointmentCounterLoaded extends AppointmentCounterState {
  final Stream<AppointmentCounterModel> counter;

  AppointmentCounterLoaded(this.counter);

  @override
  List<Object> get props => [];
}

class AppointmentCountersLoaded extends AppointmentCounterState {
  final Stream<List<AppointmentCounterModel>> counters;

  AppointmentCountersLoaded(this.counters);

  @override
  List<Object> get props => [];
}

class AppointmentCounterError extends AppointmentCounterState {
  final String message;

  AppointmentCounterError(this.message);

  @override
  List<Object> get props => [message];
}
