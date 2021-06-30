part of 'bloc.dart';

class PaymentPeriodInfoListState extends Equatable {
  const PaymentPeriodInfoListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends PaymentPeriodInfoListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends PaymentPeriodInfoListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PaymentPeriodInfoListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends PaymentPeriodInfoListState {
  IsListDataLoaded({@required this.listdata});

  final List<PaymentPeriodInfo> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends PaymentPeriodInfoListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}
