part of 'bloc.dart';

abstract class ParentInfoModelEvent extends Equatable {
  const ParentInfoModelEvent();

  @override
  List<Object> get props => [];
}

class ParentViewEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final ParentViewMode mode;

  ParentViewEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.mode,
  });
}

class LoadAttendanceDataEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String idNumber;
  final String sessionTerm;
  final DateTime startDate;
  final DateTime endDate;

  LoadAttendanceDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.idNumber,
    @required this.sessionTerm,
    @required this.startDate,
    @required this.endDate,
  });
}

class LoadEventDataEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String idNumber;
  final DateTime startDate;
  final DateTime endDate;
  final String sessionTerm;
  final String vrRoom;

  LoadEventDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.idNumber,
    @required this.startDate,
    @required this.sessionTerm,
    @required this.vrRoom,
    @required this.endDate,
  });
}

class LoadProgressDataEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String idNumber;
  final String sessionTerm;

  LoadProgressDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.idNumber,
    @required this.sessionTerm,
  });
}

class LoadAssignmentsScoreDataEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String idCard;
  final String sessionTerm;
  final String virtualRoom;
  final VrAssignmentModel vrAssignment;

  LoadAssignmentsScoreDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.idCard,
    @required this.virtualRoom,
    @required this.vrAssignment,
    @required this.sessionTerm,
  });
}

class LoadAssignmentsListDataEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String idCard;
  final String sessionTerm;
  final String virtualRoom;
  final VrAssignmentModel vrAssignment;

  LoadAssignmentsListDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.idCard,
    @required this.virtualRoom,
    @required this.vrAssignment,
    @required this.sessionTerm,
  });
}

class SubmitAnswerForStudentSchoolEvent extends ParentInfoModelEvent {
    final String entityid;
  final String entitytype;
  final String detailstype;

  final List<Answer> questions;
  final String assignmentID;
  final String idCardNum;
  final VrAssignmentModel vrAssignmentID;

  SubmitAnswerForStudentSchoolEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.questions,
    @required this.idCardNum,
    @required this.assignmentID,
    @required this.vrAssignmentID,
  });
}

class SubmitAnswerForTeacherSchoolEvent extends ParentInfoModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final List<Answer> questions;
  final String assignmentID;
  final String idCardNum;
  final VrAssignmentModel vrAssignmentID;

  SubmitAnswerForTeacherSchoolEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.questions,
    @required this.idCardNum,
    @required this.assignmentID,
    @required this.vrAssignmentID,
  });
}
