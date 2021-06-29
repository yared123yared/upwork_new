part of 'bloc.dart';

@freezed
class RegistryModelListState extends Equatable {
  const RegistryModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends RegistryModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends RegistryModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends RegistryModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsSearchedListDataLoaded extends RegistryModelListState {
  IsSearchedListDataLoaded({
    @required this.listdata,
    @required this.roles,
    @required this.buildingType,
  });

  final List<RegistryModel> listdata;
  final List<String> roles;
  final String buildingType;
  @override
  List<Object> get props => [listdata, roles, buildingType];
}

class IsListDataLoaded extends RegistryModelListState {
  IsListDataLoaded({
    @required this.listdata,
    @required this.roles,
    @required this.buildingType,
  });

  final List<RegistryModel> listdata;
  final List<String> roles;
  final String buildingType;
  @override
  List<Object> get props => [listdata, roles, buildingType];
}

class IsDeleted extends RegistryModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}
