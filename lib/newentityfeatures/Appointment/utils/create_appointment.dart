import '../models/appointment_model.dart';
import '../services/appointment_repository.dart';

final AppointmentsRepository appointmentsRepository =
    new AppointmentsRepository();

void createFixedTimeAppointment() {
  appointmentsRepository.createAppointment(
    AppointmentModel(
      appointmentType: 'fixedTime',
      onCreation: true,
      isActive: true,
    ),
  );
}

void createCheckInAppointment() {
  appointmentsRepository.createAppointment(
    AppointmentModel(
      appointmentType: 'checkIn',
      onCreation: true,
      isActive: true,
    ),
  );
}

void createHomeVisitAppointment() {
  appointmentsRepository.createAppointment(
    AppointmentModel(
      appointmentType: 'homeVisit',
      onCreation: true,
      isActive: true,
    ),
  );
}
