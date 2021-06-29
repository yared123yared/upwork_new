part of 'bloc.dart';

class StudentBasicFormModelListEvent extends Equatable {
  const StudentBasicFormModelListEvent();
  List<Object> get props => [];
}

class getPreData extends StudentBasicFormModelListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends StudentBasicFormModelListEvent {
  final String entityid;
  final String entitytype;
  getListData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

class getListDataWithSearchParameter extends StudentBasicFormModelListEvent {
  final String entityid;
  final String entitytype;
  final String sessionterm;
  final String offeringmodelgroupname;
  getListDataWithSearchParameter(
      {@required this.entityid,
      @required this.entitytype,
      @required this.sessionterm,
      @required this.offeringmodelgroupname});
  @override
  List<Object> get props =>
      [entityid, entitytype, sessionterm, offeringmodelgroupname];
}

//We want to delete an item , we will call this method (if we have the complete item data )
class deleteItemWithData extends StudentBasicFormModelListEvent {
  final UserRegistrationModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class StudentSearchEvent extends StudentBasicFormModelListEvent {
  final String card;
  final String phone;
  final String guardianPhone;
  final String entityid;
  final String entitytype;

  StudentSearchEvent({
    @required this.card,
    @required this.phone,
    @required this.guardianPhone,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [card, phone, guardianPhone, entityid, entitytype];
}