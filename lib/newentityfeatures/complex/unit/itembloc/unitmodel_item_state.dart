part of 'bloc.dart';

class UnitModelState extends Equatable {
  const UnitModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends UnitModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends UnitModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends UnitModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends UnitModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends UnitModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.isOwner,
    @required this.isManager,
    @required this.buildingList,
    @required this.btnState,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final bool isManager;
  final bool isOwner;
  final List /* <BuildingModel> */ buildingList;
  final btnState;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        isOwner,
        isManager,
        buildingList,
        btnState,
      ];
}
