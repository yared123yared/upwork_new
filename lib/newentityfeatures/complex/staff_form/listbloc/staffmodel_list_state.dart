part of 'bloc.dart';

class StaffModelListState extends Equatable {
  const StaffModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends StaffModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends StaffModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends StaffModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends StaffModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<StaffModelx> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends StaffModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends StaffModelListState {
  IsSearchParaLoaded({
    @required this.gradelist,
    @required this.sessiontermlist,
    @required this.offeringModelGroupfunc,
  });
  final List<String> gradelist;
  final List<String> sessiontermlist;
  final Future<List<String>> Function(String, String) offeringModelGroupfunc;
  @override
  List<Object> get props =>
      [gradelist, sessiontermlist, offeringModelGroupfunc];
}
