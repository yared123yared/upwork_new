part of 'bloc.dart';

class VehicleRelationState extends Equatable {
  const VehicleRelationState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleRelationState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends VehicleRelationState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleRelationState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleRelationState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends VehicleRelationState {
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



class RelationSearchInitial extends VehicleRelationState {
  @override
  List<Object> get props => [];
}

class RelationSearchLoading extends VehicleRelationState {
  @override
  List<Object> get props => [];
}

class TripCutListFound extends VehicleRelationState {
  final List<TripCutShort> tripCutList;

  TripCutListFound({@required this.tripCutList});
  @override
  List<Object> get props => [tripCutList];
}

class VehicleListFound extends VehicleRelationState {
  final List<Vehicle> vehicleList;

  VehicleListFound({@required this.vehicleList});
  @override
  List<Object> get props => [vehicleList];
}

class StaffListFound extends VehicleRelationState {
  final List<RegisteredUser> staffList;

  StaffListFound({@required this.staffList});
  @override
  List<Object> get props => [staffList];
}

class RelationSearchNotFound extends VehicleRelationState {
  @override
  List<Object> get props => [];
}

class RelationSearchFailed extends VehicleRelationState {
  @override
  List<Object> get props => [];
}

class StaffFetch extends VehicleRelationState {
  final RegisteredUser staff;
  final StaffNumber staffNumber;

  StaffFetch({@required this.staff, @required this.staffNumber});

  @override
  List<Object> get props => [this.staff];
}

class VehicleFetch extends VehicleRelationState {
  final Vehicle vehicle;

  VehicleFetch({@required this.vehicle});

  @override
  List<Object> get props => [this.vehicle];
}

class TripCutFetch extends VehicleRelationState {
  final TripCutShort tripCut;

  TripCutFetch({@required this.tripCut});

  @override
  List<Object> get props => [this.tripCut];
}
