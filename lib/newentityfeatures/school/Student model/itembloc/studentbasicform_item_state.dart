part of 'bloc.dart';

class StudentBasicFormModelState extends Equatable {
  const StudentBasicFormModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends StudentBasicFormModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends StudentBasicFormModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends StudentBasicFormModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends StudentBasicFormModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends StudentBasicFormModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.formIndex,
    @required this.studentId,
    // @required this.update,
    @required this.availablePlaces,
  });

  final String detailstype;
  final String entityid;
  final String entitytype;
  final String studentId;
  final int formIndex;
  // final bool update;
  final List<Place> availablePlaces;
  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        studentId,
        formIndex,
        // update,
        availablePlaces,
      ];
}
