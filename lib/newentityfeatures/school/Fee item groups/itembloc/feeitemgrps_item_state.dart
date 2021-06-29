part of 'bloc.dart';

class FeeItemGroupsModelState extends Equatable {
  const FeeItemGroupsModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FeeItemGroupsModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends FeeItemGroupsModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FeeItemGroupsModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FeeItemGroupsModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends FeeItemGroupsModelState {
  IsReadyForDetailsPage(
      {@required this.entityid,
      @required this.entitytype,
      @required this.detailstype,
      @required this.grades});

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> grades;
  @override
  List<Object> get props => [entityid, entitytype, detailstype, grades];
}
