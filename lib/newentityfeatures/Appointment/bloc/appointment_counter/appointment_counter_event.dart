import 'package:equatable/equatable.dart';

import '../../models/appointment_counter_model.dart';

abstract class AppointmentCounterEvent extends Equatable {
  const AppointmentCounterEvent();
}

class GetAppointmentCounter extends AppointmentCounterEvent {
  final String serviceId, ownerId;

  GetAppointmentCounter(this.serviceId, this.ownerId);

  @override
  List<Object> get props => [serviceId, ownerId];
}

class UpdateAppointmentCounter extends AppointmentCounterEvent {
  final AppointmentCounterModel appointmentCounter;
  final String serviceId;

  UpdateAppointmentCounter(this.appointmentCounter, this.serviceId);

  @override
  List<Object> get props => [appointmentCounter, serviceId];
}

class GetCheckInCounter extends AppointmentCounterEvent {
  final String serviceId, ownerId, date, period;

  GetCheckInCounter(this.serviceId, this.ownerId, this.date, this.period);

  @override
  List<Object> get props => [serviceId, ownerId, date, period];
}

class UpdateCheckInCounterMax extends AppointmentCounterEvent {
  final String serviceProviderId, documentId;
  final int maxRunningNumber;

  UpdateCheckInCounterMax(
      this.serviceProviderId, this.documentId, this.maxRunningNumber);

  @override
  List<Object> get props => [serviceProviderId, documentId, maxRunningNumber];
}

class UpdateCheckInRunningNumber extends AppointmentCounterEvent {
  final String serviceProviderId;
  final AppointmentCounterModel appointmentCounter;

  UpdateCheckInRunningNumber(this.serviceProviderId, this.appointmentCounter);

  @override
  List<Object> get props => [serviceProviderId, appointmentCounter];
}
