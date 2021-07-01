part of 'bloc.dart';

class SessionTermModelListState extends Equatable {
  const SessionTermModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends SessionTermModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends SessionTermModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends SessionTermModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends SessionTermModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<SessionTerm> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends SessionTermModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}
