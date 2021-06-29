part of 'bloc.dart';

class ClassPeriodModelState extends Equatable {
  const ClassPeriodModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends ClassPeriodModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends ClassPeriodModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends ClassPeriodModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ClassPeriodModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends ClassPeriodModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.type,
    @required this.types,
    @required this.paymentPeriods,
    @required this.feeItemsGroups,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final String type;
  final List<String> types;
  final List<PaymentPeriodInfo> paymentPeriods;
  final List<FeeItemGroupsModel> feeItemsGroups;


  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        type,
        types,
        paymentPeriods,
        feeItemsGroups,
      ];
}
