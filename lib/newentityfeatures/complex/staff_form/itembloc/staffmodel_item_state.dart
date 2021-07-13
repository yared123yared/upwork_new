part of 'bloc.dart';

class StaffModelState extends Equatable {
  const StaffModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends StaffModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends StaffModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends StaffModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends StaffModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends StaffModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,

    // @required this.staffRoleList,
    // @required this.btnState,
    // @required this.timeline,
    // @required this.timelineIndex,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;


  // final ButtonState btnState;
  // final List<TimeLineModel> timeline;
  // final List<String> staffRoleList;
  // final int timelineIndex;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,

      ];
}
