part of 'bloc.dart';

@freezed
class OfferingWeeklyScheduleListState extends Equatable {
  const OfferingWeeklyScheduleListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends OfferingWeeklyScheduleListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends OfferingWeeklyScheduleListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends OfferingWeeklyScheduleListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends OfferingWeeklyScheduleListState {
  IsListDataLoaded({@required this.listdata});

  final List<OfferingWeeklySchedule> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends OfferingWeeklyScheduleListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends OfferingWeeklyScheduleListState {
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
