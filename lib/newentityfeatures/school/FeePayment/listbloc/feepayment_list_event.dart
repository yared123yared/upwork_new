part of 'bloc.dart';

class FeePaymentListEvent extends Equatable {
  const FeePaymentListEvent();
  List<Object> get props => [];
}

class getPreData extends FeePaymentListEvent {
  final String entityid;
  final String entitytype;
  getPreData({@required this.entityid, @required this.entitytype});
  @override
  List<Object> get props => [entityid, entitytype];
}

//to get listdata
class getListData extends FeePaymentListEvent {
  final String entityid;
  final String entitytype;
  final String sessionTerm;
  final String cardNum;
  getListData({
    @required this.entityid,
    @required this.entitytype,
    @required this.sessionTerm,
    @required this.cardNum,
  });
  @override
  List<Object> get props => [entityid, entitytype, sessionTerm, cardNum];
}

class getPaymentDetailsListData extends FeePaymentListEvent {
  final String entityid;
  final String entitytype;
  final UserRegFeeCollectionModel userRegFeeCollectionModel;

  getPaymentDetailsListData({
    @required this.entityid,
    @required this.entitytype,
    @required this.userRegFeeCollectionModel,
  });
  @override
  List<Object> get props => [entityid, entitytype, userRegFeeCollectionModel];
} 

class getListDataWithSearchParameter extends FeePaymentListEvent {
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
class deleteItemWithData extends FeePaymentListEvent {
  final UserRegFeeCollectionModel item;
  final String entityid;
  final String entitytype;
  const deleteItemWithData({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class deletePaymentDetailsItemWithData extends FeePaymentListEvent {
  final UserRegFeeCollectionModel item;
  final PaymentDetails paymentDetails;
  final String entityid;
  final String entitytype;
  const deletePaymentDetailsItemWithData({
    @required this.item,
    @required this.paymentDetails,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}
