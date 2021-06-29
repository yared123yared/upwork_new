import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:complex/data/repositories/user_repository.dart';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../models/models.dart';
import '../../services/appointment_repository.dart';
import 'bloc.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentsRepository _appointmentRepository = Get.find();
  final UserRepository _userRepository = Get.find();

  AppointmentBloc() : super(AppointmentLoading());

  @override
  Stream<AppointmentState> mapEventToState(AppointmentEvent event) async* {
    yield AppointmentLoading();
    if (event is CreateAppointment) {
      try {
        yield AppointmentLoading();

        event.appointment.customerId ??= _userRepository.getUser().userID;

        var appointmentId = await _appointmentRepository.createAppointment(
          event.appointment,
        );

        Stream<AppointmentModel> appointmentStream =
            _appointmentRepository.getAppointment(
          appointmentId,
          event.appointment.serviceProviderId,
        );
        yield AppointmentLoaded(
          appointmentStream,
        ); //appointment OR event.appointment
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is UpdateAppointment) {
      try {
        yield AppointmentLoading();
        _appointmentRepository.updateAppointment(event.appointment);
        Stream<AppointmentModel> appointmentStream =
            _appointmentRepository.getAppointment(
                event.appointment.id, event.appointment.serviceProviderId);
        yield AppointmentLoaded(appointmentStream);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is ConfirmCheckInAppointment) {
      try {
        yield AppointmentLoading();
        _appointmentRepository.updateAppointment(event.appointment);
        Stream<List<AppointmentModel>> appointmentStream =
            _appointmentRepository.getAllStaffCheckIns(
          event.staffId,
          event.serviceId,
          event.periodList,
        );
        yield AppointmentsLoaded(appointmentStream);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllStaffCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllStaffCheckIns(
                event.staffId, event.serviceId, event.periodList);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllServiceCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllServiceCheckIns(event.serviceProviderId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAppointment) {
      try {
        yield AppointmentLoading();

        Stream<AppointmentModel> appointment = _appointmentRepository
            .getAppointment(event.appointmentId, event.serviceID);

        yield AppointmentLoaded(appointment);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetFixedTime) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getFixedTime(event.serviceProviderId, event.startDate);
        yield FixedTimeLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetHomeVisit) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getHomeVisit(event.serviceProviderId, event.startDate);
        yield HomeVisitLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetUnassignedQueue) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getUnassignedQueue(event.serviceProviderId);
        yield CheckInLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is DeleteAppointment) {
      try {
        yield AppointmentLoading();
        _appointmentRepository.deleteAppointment(
            event.serviceProviderId, event.appointmentId);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAppointments) {
      try {
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAppointments(event.serviceProviderId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllStaffFixedTime) {
      try {
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllStaffFixedTime(event.serviceProviderId, event.staffId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllStaffHomeVisit) {
      try {
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllStaffHomeVisit(event.serviceProviderId, event.staffId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllServiceFixedTime) {
      try {
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllServiceFixedTime(event.serviceProviderId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllServiceHomeVisit) {
      try {
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllServiceHomeVisit(event.serviceProviderId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodServiceCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllPeriodServiceCheckIns(
                event.serviceProviderId, event.day, event.period);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllServicePeriodAssignedCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllServicePeriodAssignedCheckIns(
                event.staffId, event.serviceId, event.periodList);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodServiceUnassignedCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllPeriodServiceUnassignedCheckIns(
                event.serviceProviderId, event.day, event.period);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodServiceAssignedCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllPeriodServiceAssignedCheckIns(
                event.serviceProviderId, event.day, event.period);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodStuffUnassignedCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllPeriodStuffUnassignedCheckIns(
                event.serviceProviderId,
                event.day,
                event.period,
                event.stuffId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodStuffAssignedCheckIns) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments =
            _appointmentRepository.getAllPeriodStuffAssignedCheckIns(
                event.serviceProviderId,
                event.day,
                event.period,
                event.stuffId);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
    if (event is GetAllPeriodServiceUnassignedCheckInsWithStaff) {
      try {
        yield AppointmentLoading();
        Stream<List<AppointmentModel>> appointments = _appointmentRepository
            .getAllPeriodServiceUnassignedCheckInsWithStaff(
                event.serviceProviderId, event.day, event.period);
        yield AppointmentsLoaded(appointments);
      } on PlatformException {
        yield AppointmentError('Some Firebase error has occurred!');
      }
    }
  }
}
