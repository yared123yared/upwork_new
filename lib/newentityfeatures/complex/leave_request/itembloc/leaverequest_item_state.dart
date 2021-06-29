part of 'bloc.dart';

class LeaveRequestState extends Equatable {
  const LeaveRequestState();
  @override
  List<Object> get props => [];
}

class IsBusy extends LeaveRequestState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends LeaveRequestState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends LeaveRequestState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends LeaveRequestState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends LeaveRequestState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.user,
    @required this.isManager,

  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final UserModel user;
  final bool isManager;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        user,
        isManager,
      ];
}
