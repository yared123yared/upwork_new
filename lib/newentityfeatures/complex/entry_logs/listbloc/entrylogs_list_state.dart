part of 'bloc.dart';

class EntryLogsListState extends Equatable {
  const EntryLogsListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends EntryLogsListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends EntryLogsListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends EntryLogsListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends EntryLogsListState {
  IsListDataLoaded({@required this.listdata});

  final List<EntryLogModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends EntryLogsListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends EntryLogsListState {
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
