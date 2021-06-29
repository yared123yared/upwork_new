part of 'bloc.dart';

@freezed
class PointOfInterestListState extends Equatable {
  const PointOfInterestListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends PointOfInterestListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends PointOfInterestListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PointOfInterestListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends PointOfInterestListState {
  IsListDataLoaded({@required this.listdata});

  final List<RoutePointsModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends PointOfInterestListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends PointOfInterestListState {
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
