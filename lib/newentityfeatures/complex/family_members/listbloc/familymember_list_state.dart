part of 'bloc.dart';

@freezed
class FamilyMemberListState extends Equatable {
  const FamilyMemberListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends FamilyMemberListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends FamilyMemberListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends FamilyMemberListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends FamilyMemberListState {
  IsListDataLoaded({@required this.listdata});

  final List<FamilyMember> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends FamilyMemberListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends FamilyMemberListState {
  IsSearchParaLoaded({
    @required this.units,
  });
  final List<String> units;

  @override
  List<Object> get props => [units];
}
