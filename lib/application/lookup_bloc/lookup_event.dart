part of 'lookup_bloc.dart';

@freezed
abstract class LookupEvent with _$LookupEvent {
  const factory LookupEvent.getListData(
      {@required String entityid,
      @required String entitytype,
      @required String fieldname}) = GetListData;
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
