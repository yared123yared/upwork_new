part of 'bloc.dart';

class RegistryModelState extends Equatable {
  const RegistryModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RegistryModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RegistryModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RegistryModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RegistryModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RegistryModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.haveAccess,
    @required this.displayOwner,
    @required this.roles,
    @required this.unitList,
    @required this.resident,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final ResidentModel resident;
  final bool haveAccess;
  final bool displayOwner;
  final List<String> roles;
  final List<UnitModel> unitList;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        haveAccess,
        displayOwner,
        roles,
        unitList,
        resident,
      ];
}
