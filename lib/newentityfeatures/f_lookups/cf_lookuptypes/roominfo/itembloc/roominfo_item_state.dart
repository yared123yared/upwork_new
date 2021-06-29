part of 'bloc.dart';

class RoomInfoState extends Equatable {
  const RoomInfoState();
  @override
  List<Object> get props => [];
}



class IsBusy extends RoomInfoState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends RoomInfoState {
  const IsSaved();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends RoomInfoState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RoomInfoState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}



// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends RoomInfoState {
    IsReadyForDetailsPage({@required this.entityid,@required this.entitytype,@required this.detailstype});
 
   
   final String detailstype; //create or update
   final String entityid;
   final String entitytype;   
   @override
   List<Object> get props => [entityid, entitytype,detailstype];
}




