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
