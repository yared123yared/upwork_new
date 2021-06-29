part of 'bloc.dart';

class FamilyMemberState extends Equatable {
  const FamilyMemberState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FamilyMemberState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends FamilyMemberState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FamilyMemberState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FamilyMemberState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends FamilyMemberState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.models,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final List<String> models;
  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        models,
      ];
}
