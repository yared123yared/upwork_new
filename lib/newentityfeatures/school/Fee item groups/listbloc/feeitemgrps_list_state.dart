part of 'bloc.dart';

class FeeItemGroupsModelListState extends Equatable {
  const FeeItemGroupsModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeeItemGroupsModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeeItemGroupsModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeeItemGroupsModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends FeeItemGroupsModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<FeeItemGroupsModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends FeeItemGroupsModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends FeeItemGroupsModelListState {
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
