part of 'bloc.dart';

class RegisteredUsersState extends Equatable {
  const RegisteredUsersState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RegisteredUsersState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RegisteredUsersState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RegisteredUsersState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RegisteredUsersState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RegisteredUsersState {
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
