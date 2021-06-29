part of 'bloc.dart';

@freezed
class RouteTripListState extends Equatable {
  const RouteTripListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RouteTripListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RouteTripListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RouteTripListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends RouteTripListState {
  IsListDataLoaded({@required this.listdata});

  final List<RouteTripModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends RouteTripListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends RouteTripListState {
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
