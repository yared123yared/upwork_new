part of 'bloc.dart';

@freezed
class RemoteTripListState extends Equatable {
  const RemoteTripListState();
  @override
  List<Object> get props => [];
}

class RemoteTripServiceProviderListState extends RemoteTripListState {
  final List<String> serviceProviders;
  const RemoteTripServiceProviderListState({@required this.serviceProviders})
      : assert(serviceProviders != null);
  @override
  List<Object> get props => [serviceProviders];
}

//

class IsBusy extends RemoteTripListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RemoteTripListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RemoteTripListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends RemoteTripListState {
  IsListDataLoaded({@required this.listdata});

  // final List<String> listdata;
  final List<RemoteTripData> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends RemoteTripListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends RemoteTripListState {
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
