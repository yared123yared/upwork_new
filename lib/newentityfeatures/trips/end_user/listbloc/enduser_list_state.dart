part of 'bloc.dart';

@freezed
class EndUserListState extends Equatable {
  const EndUserListState();
  @override
  List<Object> get props => [];
}

class StaffPositionPageState extends EndUserListState {
  final TripCutCurrentStatus tripCutCurrentStatus;
  final TripCut tripCut;
  StaffPositionPageState(
      {@required this.tripCutCurrentStatus, @required this.tripCut});

  @override
  List<Object> get props => [];
}

class StaffPositionFailState extends EndUserListState {
  final String errorMsg;

  StaffPositionFailState({@required this.errorMsg});
  @override
  List<Object> get props => [];
}

class EndUserPointsSearchSuccess extends EndUserListState {
  final List<RoutePointsModel> routePoints;

  EndUserPointsSearchSuccess({@required this.routePoints});
  @override
  List<Object> get props => [];
}

class EndUserPointsSearchNotFound extends EndUserListState {
  @override
  List<Object> get props => [];
}

class TripCutsResultsPageState extends EndUserListState {
  final List<TripCut> tripCuts;

  TripCutsResultsPageState({@required this.tripCuts});
  @override
  List<Object> get props => [tripCuts];
}


//
class IsBusy extends EndUserListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends EndUserListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends EndUserListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends EndUserListState {
  IsListDataLoaded({@required this.listdata});

  final List<VrAssignmentModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends EndUserListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends EndUserListState {
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
