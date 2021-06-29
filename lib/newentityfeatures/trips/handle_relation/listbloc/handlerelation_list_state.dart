part of 'bloc.dart';

@freezed
class HandleRelationListState extends Equatable {
  const HandleRelationListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends HandleRelationListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends HandleRelationListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends HandleRelationListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends HandleRelationListState {
  IsListDataLoaded({@required this.listdata});

  final List<VrAssignmentModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends HandleRelationListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends HandleRelationListState {
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
