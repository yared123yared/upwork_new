part of 'bloc.dart';

abstract class ProgressModelEvent extends Equatable {
  const ProgressModelEvent();

  @override
  List<Object> get props => [];
}

class LoadDataEvent extends ProgressModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String virtualRoom;
  final String sessionTerm;
  final String kind;
  final String offeringname;
  final bool isofferingindependent;

  LoadDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.virtualRoom,
    @required this.sessionTerm,
    @required this.kind,
    @required this.offeringname,
    @required this.isofferingindependent,
  });

  @override
  List<Object> get props =>
      [virtualRoom, sessionTerm, kind, offeringname, isofferingindependent];
}

class SubmitDataEvent extends ProgressModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final ProgressModel progressModel;
  final VirtualRoomModel virtualRoomModel;
  final String sessionTermName;

  SubmitDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.progressModel,
    @required this.sessionTermName,
    @required this.virtualRoomModel,
  });

  @override
  List<Object> get props => [progressModel, virtualRoomModel, sessionTermName];
}
