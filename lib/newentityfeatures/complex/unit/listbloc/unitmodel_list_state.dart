part of 'bloc.dart';

class UnitModelListState extends Equatable {
  const UnitModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends UnitModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends UnitModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends UnitModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends UnitModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<UnitModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends UnitModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsBuildingListDataLoaded extends UnitModelListState {
  IsBuildingListDataLoaded({
    @required this.oul,
  });
  final OccupiedUnitLookupModel oul;

  @override
  List<Object> get props => [oul];
}

class IsSearchParaLoaded extends UnitModelListState {
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

class IsSearchedListDataLoaded extends UnitModelListState {
  IsSearchedListDataLoaded({
    @required this.listdata,
  });

  final List<UnitModel> listdata;
  // final List<String> roles;
  // final String buildingType;
  // final bool isOwner;
  // final List<String> availablefortenantunits;
  @override
  List<Object> get props => [listdata];
}
