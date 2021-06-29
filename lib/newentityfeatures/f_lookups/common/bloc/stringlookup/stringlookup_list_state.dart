part of 'bloc.dart';



@freezed
class StringListState extends Equatable {
  const StringListState();
  @override
  List<Object> get props => [];
}


class IsBusy extends StringListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends StringListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends StringListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

 class IsListDataLoaded extends StringListState {
   IsListDataLoaded({@required this.listdata});
 
   final List<String> listdata;
   @override
   List<Object> get props => [listdata];
 }
 
 
 

class IsDeleted extends StringListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}



class IsSaved extends StringListState {
  const IsSaved();
  @override
  List<Object> get props => [];
}