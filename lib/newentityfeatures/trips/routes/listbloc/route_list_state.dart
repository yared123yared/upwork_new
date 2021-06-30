part of 'bloc.dart';

class RouteListState extends Equatable {
  const RouteListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RouteListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RouteListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RouteListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends RouteListState {
  IsListDataLoaded({@required this.listdata});

  final List<RouteModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends RouteListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends RouteListState {
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
