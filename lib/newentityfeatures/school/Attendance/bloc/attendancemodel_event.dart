part of 'bloc.dart';

abstract class AttendanceModelEvent extends Equatable {
  const AttendanceModelEvent();

  @override
  List<Object> get props => [];
}

class LoadDataEvent extends AttendanceModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final Attendancetype attendanceType;
  final String name;
  final String sessionTerm;
  final DateTime date;
  final String kind;

  LoadDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.name,
    @required this.attendanceType,
    @required this.sessionTerm,
    @required this.date,
    @required this.kind,
  });

  @override
  List<Object> get props => [name, sessionTerm, date, kind];
}

class SubmitDataEvent extends AttendanceModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final Attendancetype type;
  final AttendanceModel attendance;
  final String name;
  final String sessionTerm;

  SubmitDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.attendance,
    @required this.type,
    @required this.sessionTerm,
    @required this.name,
  });

  @override
  List<Object> get props => [attendance, name, sessionTerm];
}
