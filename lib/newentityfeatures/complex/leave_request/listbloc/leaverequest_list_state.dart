part of 'bloc.dart';

class LeaveRequestListState extends Equatable {
  const LeaveRequestListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends LeaveRequestListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends LeaveRequestListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends LeaveRequestListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends LeaveRequestListState {
  IsListDataLoaded({@required this.listdata});

  final List<LeaveRequestModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends LeaveRequestListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends LeaveRequestListState {
  final List<String> gradelist;
  final List<String> sessiontermlist;
  final Future<List<String>> Function(String, String) offeringModelGroupfunc;
  IsSearchParaLoaded({
    @required this.gradelist,
    @required this.sessiontermlist,
    @required this.offeringModelGroupfunc,
  });
  @override
  List<Object> get props =>
      [gradelist, sessiontermlist, offeringModelGroupfunc];
}
