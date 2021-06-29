part of 'bloc.dart';



@freezed
class ServiceRequestModelListState extends Equatable {
  const ServiceRequestModelListState();
  @override
  List<Object> get props => [];
}






class IsBusy extends ServiceRequestModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}


class HasLogicalFaliur extends ServiceRequestModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends ServiceRequestModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

 class IsListDataLoaded extends ServiceRequestModelListState {
   IsListDataLoaded({@required this.listdata});
 
   final List<ServiceRequestModel> listdata;
   @override
   List<Object> get props => [listdata];
 }
 
 


class IsDeleted extends ServiceRequestModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}



