import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/appointment_counter_model.dart';
import '../../services/appointment_counter_repository.dart';
import 'bloc.dart';

class AppointmentCounterBloc
    extends Bloc<AppointmentCounterEvent, AppointmentCounterState> {
  AppointmentCounterBloc() : super(null);

  @override
  Stream<AppointmentCounterState> mapEventToState(
    AppointmentCounterEvent event,
  ) async* {
    yield AppointmentCounterLoading();
    if (event is GetAppointmentCounter) {
      try {
        yield AppointmentCounterLoading();
        final AppointmentCounterRepository repository =
            new AppointmentCounterRepository();

        Stream<AppointmentCounterModel> appointmentCounter =
            repository.getAppointmentCounter(event.serviceId, event.ownerId);
        yield AppointmentCounterLoaded(appointmentCounter);
      } on PlatformException {
        yield AppointmentCounterError(
            'Firebase error has occurred : ServiceBloc!');
      }
    }
    if (event is GetCheckInCounter) {
      try {
        yield AppointmentCounterLoading();
        final AppointmentCounterRepository repository =
            new AppointmentCounterRepository();

        Future<List<AppointmentCounterModel>> ac =
            repository.getCheckInCounterFuture(
                event.serviceId, event.ownerId, event.date, event.period);
        var appointmentCounter = Stream.fromFuture(ac);
        /*
        Stream<List<AppointmentCounterModel>> appointmentCounter =
            repository.getCheckInCounter(
                event.serviceId, event.ownerId, event.date, event.period);

         */

        yield AppointmentCountersLoaded(appointmentCounter);
      } on PlatformException {
        yield AppointmentCounterError(
            'Firebase error has occurred : ServiceBloc!');
      }
    }
    // if (event is UpdateAppointmentCounter) {
    //   try {
    //     yield AppointmentCounterLoading();
    //     final AppointmentCounterRepository repository = AppointmentCounterRepository();
    //     repository.updateAppointmentCounter(event.appointmentCounter, event.serviceId);
    //     Stream<AppointmentCounterModel> appointmentCounter = repository.getAppointmentCounter(event.serviceId, event.appointmentCounter.ownerId);
    //     yield AppointmentCounterLoaded(appointmentCounter);
    //   } on PlatformException {
    //     yield AppointmentCounterError('Firebase error has occurred : ServiceBloc!');
    //   }
    // }
    if (event is UpdateCheckInCounterMax) {
      try {
        yield AppointmentCounterLoading();
        final AppointmentCounterRepository repository =
            new AppointmentCounterRepository();
        repository.updateCheckInCounter(
            event.serviceProviderId, event.documentId, event.maxRunningNumber);
        Stream<AppointmentCounterModel> appointmentCounter = repository
            .getAppointmentCounter(event.serviceProviderId, event.documentId);
        yield AppointmentCounterLoaded(appointmentCounter);
      } on PlatformException {
        yield AppointmentCounterError(
            'Firebase error has occurred : ServiceBloc!');
      }
    }
    if (event is UpdateCheckInRunningNumber) {
      try {
        yield AppointmentCounterLoading();
        final AppointmentCounterRepository repository =
            new AppointmentCounterRepository();
        repository.updateCheckInRunningNumber(
            event.serviceProviderId, event.appointmentCounter);
        Stream<List<AppointmentCounterModel>> appointmentCounters =
            repository.getCheckInCounter(
                event.serviceProviderId,
                event.appointmentCounter.ownerId,
                event.appointmentCounter.date,
                event.appointmentCounter.period);
        yield AppointmentCountersLoaded(appointmentCounters);
      } on PlatformException {
        yield AppointmentCounterError(
            'Firebase error has occurred : ServiceBloc!');
      }
    }
  }
}
