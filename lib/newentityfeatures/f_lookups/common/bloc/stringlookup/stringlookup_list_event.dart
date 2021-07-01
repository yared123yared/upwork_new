part of 'bloc.dart';

@freezed
abstract class StringListEvent with _$StringListEvent {
  const factory StringListEvent.getListData(
      {@required String entityid,
      @required String entitytype,
      @required String fieldname}) = GetListData;
  const factory StringListEvent.deleteItemWithData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = DeleteItemWithData;
  const factory StringListEvent.createItemData(
      {@required String item,
      @required String entityid,
      @required String entitytype,
      @required String fieldname}) = CreateItem;
}
