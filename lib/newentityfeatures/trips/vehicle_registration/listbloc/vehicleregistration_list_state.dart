part of 'bloc.dart';

class VehicleRegistrationListState extends Equatable {
  const VehicleRegistrationListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleRegistrationListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleRegistrationListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleRegistrationListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends VehicleRegistrationListState {
  IsListDataLoaded({@required this.listdata});

  final List<ServiceVehicleModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends VehicleRegistrationListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends VehicleRegistrationListState {
  IsSearchParaLoaded(
      {@required this.gradelist,
      @required this.sessiontermlist,
      @required this.offeringModelGroupfunc});
  final List<String> gradelist;
  final List<String> sessiontermlist;
  final Future<List<String>> Function(String, String) offeringModelGroupfunc;
  @override
  List<Object> get props =>
      [gradelist, sessiontermlist, offeringModelGroupfunc];
}
