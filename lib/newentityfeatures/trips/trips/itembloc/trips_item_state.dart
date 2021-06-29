part of 'bloc.dart';

class RouteTripState extends Equatable {
  const RouteTripState();
  @override
  List<Object> get props => [];
}

class RouteTripSearchInitial extends RouteTripState {
  @override
  List<Object> get props => [];
}

class LoadingRouteTripSearch extends RouteTripState {
  @override
  List<Object> get props => [];
}

class RouteTripSearchSuccess extends RouteTripState {
  final List<RouteModel> routes;

  RouteTripSearchSuccess({@required this.routes});
  @override
  List<Object> get props => [];
}

class RouteTripSearchNotFound extends RouteTripState {
  @override
  List<Object> get props => [];
}

class RoutePointsSearchFound extends RouteTripState {
  final RouteModel route;

  RoutePointsSearchFound({@required this.route});
  @override
  List<Object> get props => [];
}

class IsBusy extends RouteTripState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RouteTripState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RouteTripState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RouteTripState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RouteTripState {
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
