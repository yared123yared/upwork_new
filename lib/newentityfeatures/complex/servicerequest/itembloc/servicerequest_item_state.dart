part of 'bloc.dart';

class ServiceRequestModelState extends Equatable {
  const ServiceRequestModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends ServiceRequestModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends ServiceRequestModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends ServiceRequestModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ServiceRequestModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends ServiceRequestModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.isStaff,
    @required this.btnState,
    @required this.haveAccess,
    @required this.user,
    @required this.units,
    @required this.stafflist,
    @required this.buildinglist,
    @required this.roles,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  bool isStaff;
  var btnState;
  bool haveAccess;
  var user;

  List units;
  List stafflist;
  List buildinglist;
  List roles;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        isStaff,
        btnState,
        haveAccess,
        user,
        units,
        stafflist,
        roles,
        buildinglist,
      ];
}
