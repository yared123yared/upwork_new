part of 'bloc.dart';

class VehicleModelState extends Equatable {
  const VehicleModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends VehicleModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends VehicleModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.vehicleIndex,
    @required this.oul,
    @required this.staff,
    @required this.isResident,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final int vehicleIndex;
  final OccupiedUnitLookupModel oul;
  final List<SchoolOwner> staff;
  final bool isResident;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        vehicleIndex,
        oul,
        staff,
        isResident,
      ];
}
