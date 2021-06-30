part of 'bloc.dart';

class TeacherAssignmentModelListState extends Equatable {
  const TeacherAssignmentModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends TeacherAssignmentModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends TeacherAssignmentModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends TeacherAssignmentModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends TeacherAssignmentModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<TeacherOfferingsAssignment> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends TeacherAssignmentModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends TeacherAssignmentModelListState {
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
