part of 'bloc.dart';



@freezed
class ExamTermInfoListState extends Equatable {
  const ExamTermInfoListState();
  @override
  List<Object> get props => [];
}






class IsBusy extends ExamTermInfoListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends ExamTermInfoListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ExamTermInfoListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

 class IsListDataLoaded extends ExamTermInfoListState {
   IsListDataLoaded({@required this.listdata});
 
   final List<ExamTermInfo> listdata;
   @override
   List<Object> get props => [listdata];
 }
 
 


class IsDeleted extends ExamTermInfoListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}



