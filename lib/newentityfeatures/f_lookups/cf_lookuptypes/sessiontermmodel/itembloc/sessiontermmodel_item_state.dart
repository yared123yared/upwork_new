part of 'bloc.dart';

class SessionTermModelState extends Equatable {
  const SessionTermModelState();
  @override
  List<Object> get props => [];
}



class IsBusy extends SessionTermModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends SessionTermModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends SessionTermModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends SessionTermModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}



// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends SessionTermModelState {
    IsReadyForDetailsPage({@required this.entityid,@required this.entitytype,@required this.detailstype});
 
   
   final String detailstype; //create or update
   final String entityid;
   final String entitytype;   
   @override
   List<Object> get props => [entityid, entitytype,detailstype];
}




