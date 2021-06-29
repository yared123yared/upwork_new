part of 'bloc.dart';



@freezed
class VrAssignmentModelListState extends Equatable {
  const VrAssignmentModelListState();
  @override
  List<Object> get props => [];
}






class IsBusy extends VrAssignmentModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends VrAssignmentModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VrAssignmentModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

 class IsListDataLoaded extends VrAssignmentModelListState {
   IsListDataLoaded({@required this.listdata});
 
   final List<VrAssignmentModel> listdata;
   @override
   List<Object> get props => [listdata];
 }
 
 


class IsDeleted extends VrAssignmentModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}


class IsSearchParaLoaded extends VrAssignmentModelListState {
  IsSearchParaLoaded({@required this.gradelist,@required this.sessiontermlist,@required this.offeringModelGroupfunc});
  final List<String> gradelist;
  final List<String> sessiontermlist;
  final Future<List<String>> Function(String,String) offeringModelGroupfunc;
  @override
  List<Object> get props => [gradelist,sessiontermlist,offeringModelGroupfunc];
}

