part of 'bloc.dart';

class FeePaymentState extends Equatable {
  const FeePaymentState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeePaymentState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends FeePaymentState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeePaymentState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeePaymentState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends FeePaymentState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.feePlanList,
    @required this.userSessionList,
    @required this.membersList,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<FeePlanModel> feePlanList;
  final List<UserSessionRegModel> userSessionList;
  final List<SchoolOwner> membersList;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        feePlanList,
        userSessionList,
        membersList,
      ];
}
