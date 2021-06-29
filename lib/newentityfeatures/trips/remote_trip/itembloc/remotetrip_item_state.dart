part of 'bloc.dart';

class RemoteTripState extends Equatable {
  const RemoteTripState();
  @override
  List<Object> get props => [];
}

class RemoteTripRouteListState extends RemoteTripState {
  final List<String> trip;

  const RemoteTripRouteListState({
    @required this.trip,
  }) : assert(trip != null);

  @override
  List<Object> get props => [trip];
}

//

class IsBusy extends RemoteTripState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RemoteTripState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RemoteTripState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RemoteTripState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RemoteTripState {
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
