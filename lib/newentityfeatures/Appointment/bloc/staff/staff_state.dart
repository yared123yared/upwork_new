import 'package:equatable/equatable.dart';
import '../../models/staff_model.dart';

abstract class StaffState extends Equatable {
  const StaffState();
}

class StaffInitial extends StaffState {
  @override
  List<Object> get props => [];
}

class StaffLoading extends StaffState {
  @override
  List<Object> get props => [];
}

class StaffLoaded extends StaffState {
  final Stream<List<StaffModel>> staffList;
  StaffLoaded(this.staffList);
  @override
  List<Object> get props => [staffList];
}

class CheckInStaffLoaded extends StaffState {
  final Stream<List<StaffModel>> staffList;
  CheckInStaffLoaded(this.staffList);
  @override
  List<Object> get props => [staffList];
}

class SingleStaffLoaded extends StaffState {
  final Stream<StaffModel> staff;
  const SingleStaffLoaded(this.staff);
  @override
  List<Object> get props => [staff];
}

class SpecificStaff extends StaffState {
  final Stream<StaffModel> staff;
  const SpecificStaff(this.staff);
  @override
  List<Object> get props => [staff];
}

class StaffError extends StaffState {
  final String message;
  const StaffError(this.message);
  @override
  List<Object> get props => [message];
}
