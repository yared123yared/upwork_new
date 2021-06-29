part of 'bloc.dart';

abstract class EvtModelEvent extends Equatable {
  const EvtModelEvent();

  @override
  List<Object> get props => [];
}

class LoadDataEvent extends EvtModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String virtualRoom;
  final String sessionTerm;
  final String kind;
  final String offeringname;
  final bool isofferingindependent;
  final DateTime date;

  LoadDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.virtualRoom,
    @required this.sessionTerm,
    @required this.kind,
    @required this.offeringname,
    @required this.isofferingindependent,
    this.date,
  });

  @override
  List<Object> get props => [
        virtualRoom,
        sessionTerm,
        kind,
        offeringname,
        isofferingindependent,
        this.date
      ];
}

class SubmitDataEvent extends EvtModelEvent {
  final String entityid;
  final String entitytype;
  final String detailstype;

  final String virtualRoom;
  final String sessionTerm;
  final String kind;
  final String offeringname;
  final bool isofferingindependent;
  final String eventdata;
  final String atttype;
  final DateTime date;
  final List<String> vrlist;

  SubmitDataEvent({
    @required this.entityid,
    @required this.entitytype,
    @required this.detailstype,
    @required this.virtualRoom,
    @required this.sessionTerm,
    @required this.kind,
    @required this.offeringname,
    @required this.isofferingindependent,
    @required this.eventdata,
    @required this.date,
    @required this.atttype,
    @required this.vrlist,
  });

  @override
  List<Object> get props => [
        virtualRoom,
        sessionTerm,
        kind,
        offeringname,
        isofferingindependent,
        eventdata,
        atttype,
        vrlist
      ];
}
