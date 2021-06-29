part of 'bloc.dart';

class TripCutState extends Equatable {
  const TripCutState();
  @override
  List<Object> get props => [];
}

class TripSearchInitial extends TripCutState {
  @override
  List<Object> get props => [];
}

class TripSearchSuccess extends TripCutState {
  final List<RouteTripModel> trips;

  TripSearchSuccess({@required this.trips});
  @override
  List<Object> get props => [];
}

class TripSearchLoading extends TripCutState {
  @override
  List<Object> get props => [];
}

class TripSearchFailed extends TripCutState {
  @override
  List<Object> get props => [];
}

class TripSearchNotFound extends TripCutState {
  @override
  List<Object> get props => [];
}

class RoutePointsSearchFound extends TripCutState {
  final RouteModel route;

  RoutePointsSearchFound({@required this.route});
  @override
  List<Object> get props => [];
}


class IsBusy extends TripCutState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends TripCutState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends TripCutState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends TripCutState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends TripCutState {
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
