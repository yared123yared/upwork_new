part of 'bloc.dart';

class HandleRelationState extends Equatable {
  const HandleRelationState();
  @override
  List<Object> get props => [];
}

class HandleRelationInitial extends HandleRelationState {
  @override
  List<Object> get props => [];
}

class CalenderPageState extends HandleRelationState {
  @override
  List<Object> get props => [];
}

class RelationListState extends HandleRelationState {
  final List<Relation> relationList;
  RelationListState({@required this.relationList});

  @override
  List<Object> get props => [relationList];
}

class TripListPageState extends HandleRelationState {
  final List<RouteTripModel> trips;
  final Relation relation;
  TripListPageState({@required this.trips, @required this.relation});
  @override
  List<Object> get props => [];
}

class HandleRelationLoadingState extends HandleRelationState {
  @override
  List<Object> get props => [];
}

class HandleRelationFailedState extends HandleRelationState {
  @override
  List<Object> get props => [];
}

class RelationCheckInSuccess extends HandleRelationState {
  final String checkInId;

  RelationCheckInSuccess({@required this.checkInId});
  @override
  List<Object> get props => [];
}

class RelationCheckInFail extends HandleRelationState {
  final String errorMsg;

  RelationCheckInFail({this.errorMsg});
  @override
  List<Object> get props => [];
}

class GenerateTicketPageState extends HandleRelationState {
  final Relation relation;
  final RouteTripModel trip;
  final List<RouteMainPoints> routePoints;
  final Ticket ticket;
  GenerateTicketPageState(
      {@required this.relation,
      @required this.trip,
      @required this.routePoints,
      @required this.ticket});
  @override
  List<Object> get props => [];
}

class GenerateTicketFail extends HandleRelationState {
  final String errorMsg;

  GenerateTicketFail({@required this.errorMsg});
  @override
  List<Object> get props => [];
}

class GenerateTicketSuccess extends HandleRelationState {
  final String ticketPrice;

  GenerateTicketSuccess({@required this.ticketPrice});
  @override
  List<Object> get props => [];
}

class MainPointSelectPageState extends HandleRelationState {
  final Relation relation;
  final RouteTripModel trip;
  final MainPoint startOrEndPoint;
  final List<RouteMainPoints> routePoints;
  final Ticket ticket;
  MainPointSelectPageState(
      {@required this.relation,
      @required this.trip,
      @required this.routePoints,
      @required this.startOrEndPoint,
      @required this.ticket});
  @override
  List<Object> get props => [];
}

//

class IsBusy extends HandleRelationState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends HandleRelationState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends HandleRelationState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends HandleRelationState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends HandleRelationState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
      ];
}
