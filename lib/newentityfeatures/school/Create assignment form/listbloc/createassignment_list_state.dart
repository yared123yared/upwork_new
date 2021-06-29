part of 'bloc.dart';

@freezed
class CreateAssignmentListState extends Equatable {
  const CreateAssignmentListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends CreateAssignmentListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends CreateAssignmentListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends CreateAssignmentListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends CreateAssignmentListState {
  IsListDataLoaded({@required this.listdata});

  final List<AssignmentModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends CreateAssignmentListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends CreateAssignmentListState {
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
