import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import '../../services/staff_repository.dart';
import '../../models/staff_model.dart';
import 'bloc.dart';

class StaffBloc extends Bloc<StaffEvent, StaffState> {
  final StaffRepository repository;

  StaffBloc(this.repository) : super(StaffInitial());

  @override
  Stream<StaffState> mapEventToState(
    StaffEvent event,
  ) async* {
    yield StaffLoading();
    if (event is GetStaffByService) {
      try {
        yield StaffLoading();
        final StaffRepository repository = StaffRepository();
        Stream<List<StaffModel>> staff = repository.getStaffByService(
            event.serviceName, event.serviceProviderId);
        yield StaffLoaded(staff);
      } on PlatformException {
        yield StaffError(
            'Some Firebase error has occurred! : StaffBloc : GetStaffByService');
      }
    }
    if (event is GetSingleStaff) {
      try {
        yield StaffLoading();
        final StaffRepository repository = StaffRepository();
        Stream<StaffModel> staff =
            repository.getSingleStaff(event.staffId, event.serviceProviderId);
        yield SingleStaffLoaded(staff);
      } on PlatformException {
        yield StaffError(
            'Some Firebase error has occurred! : StaffBloc : GetStaffByService');
      }
    }
    if (event is GetAllStaff) {
      try {
        yield StaffLoading();
        final StaffRepository repository = StaffRepository();
        Stream<List<StaffModel>> staff = repository.getStaff(event.serviceId);
        yield CheckInStaffLoaded(staff);
      } on PlatformException {
        yield StaffError(
            'Some Firebase error has occurred! : StaffBloc : GetStaffByService');
      }
    }
  }
}
