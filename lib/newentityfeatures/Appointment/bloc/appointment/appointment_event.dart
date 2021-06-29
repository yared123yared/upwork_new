import 'package:equatable/equatable.dart';
import '../../models/appointment_model.dart';

abstract class AppointmentEvent extends Equatable {
  const AppointmentEvent();
}

class AppointmentHome extends AppointmentEvent {
  final String serviceId;

  const AppointmentHome([this.serviceId]);

  @override
  List<Object> get props => [serviceId];
}

///create appointment
///if user id is null Will be setten to the current uesr id
class CreateAppointment extends AppointmentEvent {
  final AppointmentModel appointment;
  CreateAppointment(this.appointment);
  @override
  List<Object> get props => [appointment];
}

class UpdateAppointment extends AppointmentEvent {
  final AppointmentModel appointment;
  UpdateAppointment(this.appointment);
  @override
  List<Object> get props => [appointment];
}

// String staffId,  String serviceProviderId, List<String> periodList

class GetAllStaffCheckIns extends AppointmentEvent {
  final String staffId, serviceId;
  final List<String> periodList;
  GetAllStaffCheckIns(this.staffId, this.serviceId, this.periodList);
  @override
  List<Object> get props => [];
}

class ConfirmCheckInAppointment extends AppointmentEvent {
  final AppointmentModel appointment;
  final String staffId, serviceId;
  final List<String> periodList;
  ConfirmCheckInAppointment(
    this.appointment,
    this.staffId,
    this.serviceId,
    this.periodList,
  );
  @override
  List<Object> get props => [appointment];
}

class GetAppointment extends AppointmentEvent {
  final String appointmentId;
  final String serviceID;
  GetAppointment(this.appointmentId, this.serviceID);
  @override
  List<Object> get props => [appointmentId, serviceID];
}

class GetAppointments extends AppointmentEvent {
  final String serviceProviderId;
  GetAppointments(this.serviceProviderId);
  @override
  List<Object> get props => [serviceProviderId];
}

class GetCheckIn extends AppointmentEvent {
  final String serviceProviderId;
  GetCheckIn(this.serviceProviderId);

  @override
  List<Object> get props => [serviceProviderId];
}

class GetFixedTime extends AppointmentEvent {
  final String serviceProviderId;
  final String startDate;
  GetFixedTime(this.serviceProviderId, this.startDate);

  @override
  List<Object> get props => [serviceProviderId, startDate];
}

class GetHomeVisit extends AppointmentEvent {
  final String serviceProviderId, startDate;

  GetHomeVisit(this.serviceProviderId, this.startDate);

  @override
  List<Object> get props => [serviceProviderId, startDate];
}

class GetUnassignedQueue extends AppointmentEvent {
  final String serviceProviderId;
  GetUnassignedQueue(this.serviceProviderId);

  @override
  List<Object> get props => [serviceProviderId];
}

class DeleteAppointment extends AppointmentEvent {
  final String serviceProviderId, appointmentId;
  DeleteAppointment(this.serviceProviderId, this.appointmentId);

  @override
  List<Object> get props => [serviceProviderId, appointmentId];
}

class GetAllServiceCheckIns extends AppointmentEvent {
  final String serviceProviderId;
  GetAllServiceCheckIns(this.serviceProviderId);

  @override
  List<Object> get props => [serviceProviderId];
}

class GetAllStaffFixedTime extends AppointmentEvent {
  final String staffId, serviceProviderId;

  GetAllStaffFixedTime(this.staffId, this.serviceProviderId);

  @override
  List<Object> get props => [staffId, serviceProviderId];
}

class GetAllStaffHomeVisit extends AppointmentEvent {
  final String staffId, serviceProviderId;

  GetAllStaffHomeVisit(this.staffId, this.serviceProviderId);

  @override
  List<Object> get props => [staffId, serviceProviderId];
}

class GetAllServiceFixedTime extends AppointmentEvent {
  final String serviceProviderId;

  GetAllServiceFixedTime(this.serviceProviderId);

  @override
  List<Object> get props => [serviceProviderId];
}

class GetAllServiceHomeVisit extends AppointmentEvent {
  final String serviceProviderId;

  GetAllServiceHomeVisit(this.serviceProviderId);

  @override
  List<Object> get props => [serviceProviderId];
}

class GetAllPeriodServiceCheckIns extends AppointmentEvent {
  final String serviceProviderId, day, period;

  GetAllPeriodServiceCheckIns(this.serviceProviderId, this.day, this.period);

  @override
  List<Object> get props => [serviceProviderId, day, period];
}

class GetAllServicePeriodAssignedCheckIns extends AppointmentEvent {
  final String staffId, serviceId;
  final List<String> periodList;
  GetAllServicePeriodAssignedCheckIns(
      this.staffId, this.serviceId, this.periodList);
  @override
  List<Object> get props => [];
}

class GetAllPeriodServiceUnassignedCheckIns extends AppointmentEvent {
  final String serviceProviderId, day, period;

  GetAllPeriodServiceUnassignedCheckIns(
      this.serviceProviderId, this.day, this.period);

  @override
  List<Object> get props => [serviceProviderId, day, period];
}

class GetAllPeriodServiceAssignedCheckIns extends AppointmentEvent {
  final String serviceProviderId, day, period;

  GetAllPeriodServiceAssignedCheckIns(
      this.serviceProviderId, this.day, this.period);

  @override
  List<Object> get props => [serviceProviderId, day, period];
}

class GetAllPeriodStuffUnassignedCheckIns extends AppointmentEvent {
  final String serviceProviderId, day, period, stuffId;

  GetAllPeriodStuffUnassignedCheckIns(
      this.serviceProviderId, this.day, this.period, this.stuffId);

  @override
  List<Object> get props => [serviceProviderId, day, period, stuffId];
}

class GetAllPeriodStuffAssignedCheckIns extends AppointmentEvent {
  final String serviceProviderId, day, period, stuffId;

  GetAllPeriodStuffAssignedCheckIns(
      this.serviceProviderId, this.day, this.period, this.stuffId);

  @override
  List<Object> get props => [serviceProviderId, day, period, stuffId];
}

class GetAllPeriodServiceUnassignedCheckInsWithStaff extends AppointmentEvent {
  final String serviceProviderId, day, period;

  GetAllPeriodServiceUnassignedCheckInsWithStaff(
      this.serviceProviderId, this.day, this.period);

  @override
  List<Object> get props => [serviceProviderId, day, period];
}

class EditAppointmentType extends AppointmentEvent {
  final String appointmentType;
  EditAppointmentType(this.appointmentType);

  @override
  List<Object> get props => [appointmentType];
}

class EditAppointmentStaff extends AppointmentEvent {
  final String staffId;
  EditAppointmentStaff(this.staffId);

  @override
  List<Object> get props => [staffId];
}
