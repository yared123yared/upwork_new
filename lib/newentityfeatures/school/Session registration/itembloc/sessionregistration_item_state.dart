part of 'bloc.dart';

class SessionRegistrationState extends Equatable {
  const SessionRegistrationState();
  @override
  List<Object> get props => [];
}

class IsBusy extends SessionRegistrationState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends SessionRegistrationState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends SessionRegistrationState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends SessionRegistrationState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends SessionRegistrationState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.update,
    @required this.virtualRoomList,
    @required this.feePlanList,
    @required this.paymentPeriods,
    @required this.offeringScheduleList,
    @required this.activeSessions,
    @required this.offeringModelGroup,
    @required this.userSessionRegModel,
    @required this.gradelist
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> gradelist;
  final bool update;
  final Future<List<String>> Function(String grade) virtualRoomList;
  final Future<List<FeePlanModel>> Function(String grade) feePlanList;
  final List<PaymentPeriodInfo> paymentPeriods;
  final List<OfferingWeeklySchedule> offeringScheduleList;
  final List<String> activeSessions;
  final Future<List<OfferingModelGroup>> Function(String) offeringModelGroup;

  final UserSessionRegModel userSessionRegModel;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        update,
        virtualRoomList,
        feePlanList,
        paymentPeriods,
        offeringScheduleList,
        activeSessions,
        offeringModelGroup,
        userSessionRegModel,
      ];
}
