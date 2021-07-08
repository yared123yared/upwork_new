part of 'bloc.dart';

class OfferingWeeklyScheduleState extends Equatable {
  const OfferingWeeklyScheduleState();
  @override
  List<Object> get props => [];
}

class IsBusy extends OfferingWeeklyScheduleState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends OfferingWeeklyScheduleState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends OfferingWeeklyScheduleState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends OfferingWeeklyScheduleState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends OfferingWeeklyScheduleState {
  IsListDataLoaded({@required this.listdata});

  final List<OfferingModelGroup> listdata;
  @override
  List<Object> get props => [listdata];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends OfferingWeeklyScheduleState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.buttonstate,
    @required this.getOfferingGroupModel,
    @required this.offeringsScheduleModel,
    @required this.grades,
    @required this.rooms,
    @required this.schoolOwner,
    @required this.periods,
    @required this.getAssignmentsWithGrade,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final ButtonState buttonstate;
  final Future<List<OfferingModelGroup>> Function(String) getOfferingGroupModel;
  final OfferingWeeklySchedule offeringsScheduleModel;
  final List<String> grades;
  final List<String> rooms;
  final List<SchoolOwner> schoolOwner;
  final List<ClassPeriodInfo> periods;
  final Future<List<TeacherOfferingsAssignment>> Function(String)
      getAssignmentsWithGrade;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        buttonstate,
        getOfferingGroupModel,
        offeringsScheduleModel,
        grades,
        rooms,
        schoolOwner,
        periods,
        getAssignmentsWithGrade,
      ];
}
