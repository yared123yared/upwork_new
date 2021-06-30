part of 'bloc.dart';

class SessionRegistrationListState extends Equatable {
  const SessionRegistrationListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends SessionRegistrationListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends SessionRegistrationListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends SessionRegistrationListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends SessionRegistrationListState {
  IsListDataLoaded({@required this.listdata});

  final List<UserSessionRegModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends SessionRegistrationListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends SessionRegistrationListState {
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

class StudentSearchState extends SessionRegistrationListState {
  final List<UserSessionRegModel> user;
  final String card;

  const StudentSearchState({
    this.user,
    this.card,
  });
}

class StudentSearchSuccessfullState extends SessionRegistrationListState {
  final List<UserSessionRegModel> user;

  const StudentSearchSuccessfullState({
    this.user,
  });
}
