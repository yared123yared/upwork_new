part of 'bloc.dart';

class ExamTermInfoState extends Equatable {
  const ExamTermInfoState();
  @override
  List<Object> get props => [];
}



class IsBusy extends ExamTermInfoState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends ExamTermInfoState {
  const IsSaved();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends ExamTermInfoState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ExamTermInfoState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}



// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends ExamTermInfoState {
    IsReadyForDetailsPage({@required this.entityid,@required this.entitytype,@required this.detailstype});
 
   
   final String detailstype; //create or update
   final String entityid;
   final String entitytype;   
   @override
   List<Object> get props => [entityid, entitytype,detailstype];
}




