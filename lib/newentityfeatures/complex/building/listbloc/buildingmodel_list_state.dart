part of 'bloc.dart';

class BuildingModelListState extends Equatable {
  const BuildingModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends BuildingModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends BuildingModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends BuildingModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends BuildingModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<BuildingModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends BuildingModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}
