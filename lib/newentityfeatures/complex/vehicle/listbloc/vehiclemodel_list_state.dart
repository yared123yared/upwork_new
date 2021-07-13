part of 'bloc.dart';

class VehicleModelListState extends Equatable {
  const VehicleModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends VehicleModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<ComplexVehicleModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends VehicleModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends VehicleModelListState {
  IsSearchParaLoaded(
      {@required this.stafflist,
      @required this.oul
      });
  final List<SchoolOwner> stafflist;
  final OccupiedUnitLookupModel oul;

  @override
  List<Object> get props =>
      [stafflist, oul];
}
