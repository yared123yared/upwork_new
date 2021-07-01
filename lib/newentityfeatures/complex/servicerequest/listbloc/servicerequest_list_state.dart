part of 'bloc.dart';

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
  final List<ServiceRequestModel> listdata;
  final bool isStaff;

  IsListDataLoaded({@required this.listdata, @required this.isStaff});
  @override
  List<Object> get props => [listdata, isStaff];
}

class IsDeleted extends ServiceRequestModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}
