part of 'lookup_bloc.dart';

@freezed
abstract class LookupEvent with _$LookupEvent {
  const factory LookupEvent.getListData(
      {@required String entityid,
      @required String entitytype,
      @required LookupType lookupType}) = GetListData;

  const factory LookupEvent.deleteItemWithData({
    @required Lookup item,
    @required String entityid,
    @required String entitytype,
  }) = DeleteItemWithData;
  const factory LookupEvent.createItemData({
    @required Lookup item,
    @required String entityid,
    @required String entitytype,
  }) = CreateItem;
}

@freezed
abstract class LookupType with _$LookupType {
  const factory LookupType.feeItem() = _FeeItem;
  const factory LookupType.offering() = _Offering;
  const factory LookupType.grade() = _Grade;
  const factory LookupType.rooms() = _Rooms;
  const factory LookupType.examTerm() = _ExamTerm;
  const factory LookupType.sessionTerm() = _SessionTerm;
  const factory LookupType.classPeriod() = _ClassPeriod;
  const factory LookupType.paymentPeriod() = _PaymentPeriod;
}
