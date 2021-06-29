part of 'bloc.dart';

class PointOfInterestState extends Equatable {
  const PointOfInterestState();
  @override
  List<Object> get props => [];
}

class IsBusy extends PointOfInterestState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends PointOfInterestState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends PointOfInterestState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends PointOfInterestState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends PointOfInterestState {
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
