part of 'bloc.dart';

class FeePlanModelState extends Equatable {
  const FeePlanModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeePlanModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends FeePlanModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeePlanModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeePlanModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends FeePlanModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.editable,
    @required this.sessions,
    @required this.paymentPeriods,
    @required this.feeItemsGroups,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final bool editable;
  final List<String> sessions;
  final List<PaymentPeriodInfo> paymentPeriods;
  final List<FeeItemGroupsModel> feeItemsGroups;

  // final List<String> grades;
  // final List<String> sessiontermlist;
  // final Future<List<AssignmentModel>> Function(String, String)
  //     assignmentModellistbyofferinggroupfunc;
  // final Future<List<TeacherOfferingsAssignment>> Function(String, String)
  //     teacherofferingassignmentlistbyGrade;
  // final List<ExamTermInfo> examtermlist;
  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        editable,
        sessions,
        paymentPeriods,
        feeItemsGroups,
      ];
}
