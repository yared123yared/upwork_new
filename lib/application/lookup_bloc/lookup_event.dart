part of 'lookup_bloc.dart';

@freezed
abstract class LookupEvent with _$LookupEvent {
  const factory LookupEvent.getListData(
      {@required String entityid,
      @required String entitytype,
      @required LookupType lookupType}) = GetListData;

  const factory LookupEvent.deleteItemWithData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = DeleteItemWithData;
  const factory LookupEvent.createItemData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = CreateItem;
}

@freezed
abstract class LookupType with _$LookupType {
  const factory LookupType.feeItem() = _FeeItem;
}
