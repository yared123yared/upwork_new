part of 'bloc.dart';

class BuildingModelState extends Equatable {
  const BuildingModelState();
  @override
  List<Object> get props => [];
}



class IsBusy extends BuildingModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends BuildingModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends BuildingModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends BuildingModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}



// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends BuildingModelState {
    IsReadyForDetailsPage({@required this.entityid,@required this.entitytype,@required this.detailstype});
 
   
   final String detailstype; //create or update
   final String entityid;
   final String entitytype;   
   @override
   List<Object> get props => [entityid, entitytype,detailstype];
}




