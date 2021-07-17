part of 'bloc.dart';

class FeePaymentListState extends Equatable {
  const FeePaymentListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeePaymentListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeePaymentListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeePaymentListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends FeePaymentListState {
  IsListDataLoaded({
    @required this.listdata,
    @required this.feePlan,
    @required this.startPeriod,
  });

  final List<UserRegFeeCollectionModel> listdata;
  final FeePlanModel feePlan;
  final String startPeriod;
  @override
  List<Object> get props => [listdata, feePlan, startPeriod];
}

class IsPaymentDetailsListDataLoaded extends FeePaymentListState {
  IsPaymentDetailsListDataLoaded({
    @required this.listdata,
    // @required this.feePlan,
  });
  // FeePlanModel feePlan;

  final List<PaymentDetails> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends FeePaymentListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends FeePaymentListState {
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
