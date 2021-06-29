part of 'bloc.dart';

class VirtualRoomModelState extends Equatable {
  const VirtualRoomModelState();
  @override
  List<Object> get props => [];
}

class IsBusy extends VirtualRoomModelState {
  const IsBusy();
  @override
  List<Object> get props => [];
}

class IsSaved extends VirtualRoomModelState {
  const IsSaved();
  @override
  List<Object> get props => [];
}

class HasLogicalFaliur extends VirtualRoomModelState {
  HasLogicalFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

class HasExceptionFaliur extends VirtualRoomModelState {
  HasExceptionFaliur({@required this.error});
  final String error;
  @override
  List<Object> get props => [error];
}

// this state marks that entry form is ready to be displayed

class IsReadyForDetailsPage extends VirtualRoomModelState {
  IsReadyForDetailsPage({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.grades,
    @required this.buttonState,
    @required this.rooms,
    @required this.schoolOwners,
  });

  final String detailstype; //create or update
  final String entityid;
  final String entitytype;
  final List<String> grades;
  final ButtonState buttonState;
  final List<String> rooms;
  final List<SchoolOwner> schoolOwners;

  @override
  List<Object> get props => [
        entityid,
        entitytype,
        detailstype,
        grades,
        buttonState,
        rooms,
        schoolOwners,
      ];
}
