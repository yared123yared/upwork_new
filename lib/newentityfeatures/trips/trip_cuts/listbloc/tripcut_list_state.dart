part of 'bloc.dart';

@freezed
class TripCutListState extends Equatable {
  const TripCutListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends TripCutListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends TripCutListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends TripCutListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends TripCutListState {
  IsListDataLoaded({@required this.listdata});

  final List<TripCut> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends TripCutListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends TripCutListState {
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
