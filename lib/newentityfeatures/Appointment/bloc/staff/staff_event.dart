import 'package:equatable/equatable.dart';

abstract class StaffEvent extends Equatable {
  const StaffEvent();
}

class GetStaffByService extends StaffEvent {
  final String serviceName, serviceProviderId;

  GetStaffByService(this.serviceName, this.serviceProviderId);

  @override
  List<Object> get props => [serviceName, serviceProviderId];
}

class GetSingleStaff extends StaffEvent {
  final String staffId, serviceProviderId;

  GetSingleStaff(this.staffId, this.serviceProviderId);

  @override
  List<Object> get props => [staffId, serviceProviderId];
}

class GetAllStaff extends StaffEvent {
  final String serviceId;

  GetAllStaff(this.serviceId);

  @override
  List<Object> get props => [serviceId];
}

class PickStaff extends StaffEvent {
  final String staffId;

  PickStaff(this.staffId);

  @override
  List<Object> get props => [];
}
