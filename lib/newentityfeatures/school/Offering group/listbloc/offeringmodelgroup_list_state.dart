part of 'bloc.dart';

@freezed
class OfferingModelGroupListState extends Equatable {
  const OfferingModelGroupListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends OfferingModelGroupListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends OfferingModelGroupListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends OfferingModelGroupListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends OfferingModelGroupListState {
  IsListDataLoaded({@required this.listdata});

  final List<OfferingModelGroup> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends OfferingModelGroupListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends OfferingModelGroupListState {
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
