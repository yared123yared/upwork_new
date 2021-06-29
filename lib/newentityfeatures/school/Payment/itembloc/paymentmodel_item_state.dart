part of 'bloc.dart';

class PaymentModelState extends Equatable {
  const PaymentModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends PaymentModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends PaymentModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends PaymentModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PaymentModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends PaymentModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.paymentPeriodInfo,
    @required this.sessions,
    @required this.editable,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final PaymentPeriodInfo paymentPeriodInfo;
  final List<String> sessions;
  final bool editable;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        paymentPeriodInfo,
        sessions,
        editable,
      ];
}
