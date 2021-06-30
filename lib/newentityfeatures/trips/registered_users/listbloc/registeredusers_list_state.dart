part of 'bloc.dart';

class RegisteredUsersListState extends Equatable {
  const RegisteredUsersListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RegisteredUsersListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RegisteredUsersListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RegisteredUsersListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends RegisteredUsersListState {
  IsListDataLoaded({@required this.listdata});

  final List<RegisteredUser> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends RegisteredUsersListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends RegisteredUsersListState {
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
