part of 'bloc.dart';

class RouteState extends Equatable {
  const RouteState();
  @override
  List<Object> get props => [];
}
class RoutePointsSearchInitial extends RouteState {
  @override
  List<Object> get props => [];
}

class LoadingRoutePointsSearch extends RouteState {
  @override
  List<Object> get props => [];
}

class RoutePointsSearchSuccess extends RouteState {
  final List<RoutePointsModel> routePoints;

  RoutePointsSearchSuccess({@required this.routePoints});
  @override
  List<Object> get props => [];
}

class RoutePointsSearchNotFound extends RouteState {
  @override
  List<Object> get props => [];
}

class RoutePointsSearchFound extends RouteState {
  final RoutePointsModel routePoint;

  RoutePointsSearchFound({@required this.routePoint});
  @override
  List<Object> get props => [];
}


class IsBusy extends RouteState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RouteState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RouteState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RouteState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RouteState {
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
