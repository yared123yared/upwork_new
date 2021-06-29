part of 'bloc.dart';

class FeePaymentEvent extends Equatable {
  const FeePaymentEvent();
  @override
  List<Object> get props => [];
}

// PaymentDetails

class AddPaymentDetails extends FeePaymentEvent {
  final UserRegFeeCollectionModel item;
  final PaymentDetails paymentDetails;
  final String entityid;
  final String entitytype;
  const AddPaymentDetails({
    @required this.item,
    @required this.paymentDetails,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class UpdatePaymentDetailsWithDiff extends FeePaymentEvent {
  final UserRegFeeCollectionModel item;
  final PaymentDetails newPaymentDetails;
  final PaymentDetails oldPaymentDetails;
  final String entityid;
  final String entitytype;
  const UpdatePaymentDetailsWithDiff({
    @required this.item,
    @required this.newPaymentDetails,
    @required this.oldPaymentDetails,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

// 

class createItem extends FeePaymentEvent {
  final UserRegFeeCollectionModel item;
  // final PaymentDetails paymentDetails;
  final String entityid;
  final String entitytype;
  const createItem({
    @required this.item,
    // @required this.paymentDetails,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItem extends FeePaymentEvent {
  final UserRegFeeCollectionModel item;
  final String entityid;
  final String entitytype;
  const updateItem({
    @required this.item,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [item, entityid, entitytype];
}

class updateItemWithDiff extends FeePaymentEvent {
  final UserRegFeeCollectionModel newitem;
  final UserRegFeeCollectionModel olditem;
  final String entityid;
  final String entitytype;
  const updateItemWithDiff({
    @required this.newitem,
    @required this.olditem,
    @required this.entityid,
    @required this.entitytype,
  });
  List<Object> get() => [newitem, olditem, entityid, entitytype];
}

//We want to go to details form -  item is selected and we dont have the complete itemdata available , we just have id of the item ,
//we will call this event, this will load complete item data + any other data needed (may be we have some dropdowns which needs to be populated) ,
class getAdditionalDataEntryIDAvailable extends FeePaymentEvent {
  final String id;
  final String entityid;
  final String entitytype;
  const getAdditionalDataEntryIDAvailable(
      {@required this.id, @required this.entityid, @required this.entitytype});
  List<Object> get() => [id, entityid, entitytype];
}

//We want to add a new item , it will load any other data needed (may be we have some dropdowns which needs to be populated) , -- for new addition in form which has drop downs
class getForNewEntry extends FeePaymentEvent {
  final String entityid;
  final String entitytype;
  final UserRegFeeCollectionModel userRegFeeCollectionModel;
  const getForNewEntry({
    @required this.entityid,
    @required this.entitytype,
    @required this.userRegFeeCollectionModel,
  });

  List<Object> get() => [
        entityid,
        entitytype,
        this.userRegFeeCollectionModel,
      ];
}
