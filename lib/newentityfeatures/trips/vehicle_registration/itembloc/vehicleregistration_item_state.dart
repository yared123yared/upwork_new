part of 'bloc.dart';

class VehicleRegistrationState extends Equatable {
  const VehicleRegistrationState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleRegistrationState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends VehicleRegistrationState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleRegistrationState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleRegistrationState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends VehicleRegistrationState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
 });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
      ];
}
