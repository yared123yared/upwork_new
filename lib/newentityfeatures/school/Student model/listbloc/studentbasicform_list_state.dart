part of 'bloc.dart';

class StudentBasicFormModelListState extends Equatable {
  const StudentBasicFormModelListState();
  @override
  List<Object> get props => [];
}

class IsBusy extends StudentBasicFormModelListState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends StudentBasicFormModelListState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends StudentBasicFormModelListState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class IsListDataLoaded extends StudentBasicFormModelListState {
  IsListDataLoaded({@required this.listdata});

  final List<UserRegistrationModel> listdata;
  @override
  List<Object> get props => [listdata];
}

class IsDeleted extends StudentBasicFormModelListState {
  const IsDeleted();
  @override
  List<Object> get props => [];
}

class IsSearchParaLoaded extends StudentBasicFormModelListState {
  IsSearchParaLoaded(
      {@required this.gradelist,
      @required this.sessiontermlist,
      @required this.offeringModelGroupfunc});
  final List<String> gradelist;
  final List<String> sessiontermlist;
  final Future<List<String>> Function(String, String) offeringModelGroupfunc;
  @override
  List<Object> get props =>
      [gradelist, sessiontermlist, offeringModelGroupfunc];
}

class StudentSearchState extends StudentBasicFormModelListState {
  final List<UserRegistrationModel> user;
  final String card;
  final String phone;
  final String guardianPhone;

  const StudentSearchState({
    this.user,
    this.card,
    this.phone,
    this.guardianPhone,
  });
}

class StudentSearchSuccessfullState extends StudentBasicFormModelListState {
  final List<UserRegistrationModel> user;

  const StudentSearchSuccessfullState({
    this.user,
  });
}
