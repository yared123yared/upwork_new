part of 'bloc.dart';

class VirtualRoomModelListState extends Equatable {
  const VirtualRoomModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VirtualRoomModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VirtualRoomModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VirtualRoomModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends VirtualRoomModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<VirtualRoomModelNewFormat> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends VirtualRoomModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends VirtualRoomModelListState {
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
