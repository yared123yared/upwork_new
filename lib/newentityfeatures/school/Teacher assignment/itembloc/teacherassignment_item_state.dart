part of 'bloc.dart';

class TeacherAssignmentModelState extends Equatable {
  const TeacherAssignmentModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends TeacherAssignmentModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends TeacherAssignmentModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends TeacherAssignmentModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends TeacherAssignmentModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends TeacherAssignmentModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.grades,
    @required this.schoolOwners,
    @required this.offeringModelGroup,
    @required this.virtualRooms,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> grades;
  final List<SchoolOwner> schoolOwners;
  final Future<List<String>> Function(String) offeringModelGroup;
  final Future<List<String>> Function(String grade) virtualRooms;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        grades,
        schoolOwners,
        offeringModelGroup,
        virtualRooms,
      ];
}
