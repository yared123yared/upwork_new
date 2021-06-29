part of 'bloc.dart';

@freezed
class PaymentModelListState extends Equatable {
  const PaymentModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends PaymentModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends PaymentModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PaymentModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends PaymentModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<PaymentPeriodInfo> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends PaymentModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends PaymentModelListState {
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
