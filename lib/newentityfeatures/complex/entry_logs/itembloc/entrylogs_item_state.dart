part of 'bloc.dart';

class EntryLogsState extends Equatable {
  const EntryLogsState();
  @override
  List<Object> get props => [];
}

class IsBusy extends EntryLogsState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends EntryLogsState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends EntryLogsState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends EntryLogsState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends EntryLogsState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.haveAccess,
    @required this.userId,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;

  final bool haveAccess;
  final String userId;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        haveAccess,
        userId,
      ];
}
