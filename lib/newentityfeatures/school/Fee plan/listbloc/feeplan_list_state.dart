part of 'bloc.dart';

@freezed
class FeePlanModelListState extends Equatable {
  const FeePlanModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeePlanModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeePlanModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeePlanModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends FeePlanModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<FeePlanModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends FeePlanModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends FeePlanModelListState {
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
