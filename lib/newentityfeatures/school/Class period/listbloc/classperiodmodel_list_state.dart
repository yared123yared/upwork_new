part of 'bloc.dart';

@freezed
class ClassPeriodModelListState extends Equatable {
  const ClassPeriodModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends ClassPeriodModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends ClassPeriodModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ClassPeriodModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends ClassPeriodModelListState {
  IsListDataLoaded({@required this.listdata});

  // final List<ClassPeriodInfo> listdata;
  final List<ClassPeriodInfo> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends ClassPeriodModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends ClassPeriodModelListState {
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
