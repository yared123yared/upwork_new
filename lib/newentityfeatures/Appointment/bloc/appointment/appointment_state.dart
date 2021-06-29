import 'package:equatable/equatable.dart';
import '../../models/models.dart';

abstract class AppointmentState extends Equatable {
  const AppointmentState();
}

class AppointmentInitial extends AppointmentState {
  @override
  List<Object> get props => [];
}

class AppointmentLoading extends AppointmentState {
  const AppointmentLoading();

  @override
  List<Object> get props => [];
}

class AppointmentLoaded extends AppointmentState {
  final Stream<AppointmentModel> appointment;

  AppointmentLoaded(this.appointment);

  @override
  List<Object> get props => [appointment];
}

class AppointmentsLoaded extends AppointmentState {
  final Stream<List<AppointmentModel>> appointments;

  AppointmentsLoaded(this.appointments);

  @override
  List<Object> get props => [appointments];
}

class AppointmentError extends AppointmentState {
  final String message;

  const AppointmentError(this.message);

  @override
  List<Object> get props => [message];
}

class FixedTimeLoaded extends AppointmentState {
  final Stream<List<AppointmentModel>> appointments;

  FixedTimeLoaded(this.appointments);

  @override
  List<Object> get props => [appointments];
}

class CheckInLoaded extends AppointmentState {
  final Stream<List<AppointmentModel>> appointments;

  CheckInLoaded(this.appointments);

  @override
  List<Object> get props => [appointments];
}

class HomeVisitLoaded extends AppointmentState {
  final Stream<List<AppointmentModel>> appointments;

  HomeVisitLoaded(this.appointments);

  @override
  List<Object> get props => [appointments];
}
