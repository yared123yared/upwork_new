part of 'bloc.dart';

@freezed
class VehicleRelationListState extends Equatable {
  const VehicleRelationListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VehicleRelationListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VehicleRelationListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VehicleRelationListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends VehicleRelationListState {
  IsListDataLoaded({@required this.listdata});

  final List<Relation> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends VehicleRelationListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends VehicleRelationListState {
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
