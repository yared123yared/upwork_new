part of 'bloc.dart';

class OfferingModelGroupState extends Equatable {
  const OfferingModelGroupState();
  @override
  List<Object> get props => [];
}

class IsBusy extends OfferingModelGroupState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends OfferingModelGroupState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends OfferingModelGroupState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends OfferingModelGroupState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends OfferingModelGroupState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.grades,
    @required this.groups,
    @required this.subject,
    // @required this.btnState,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> grades;
  final Future<List<String>> Function(String) groups;
  final List<String> subject;
  // final ButtonState btnState;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        grades,
        groups,
        subject,
        // btnState,
      ];
}
