part of 'product_list_bloc.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const factory ProductListState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required String message,
    @required LimitedDataList listData,
  }) = _ProductListState;

  factory ProductListState.initial() => _ProductListState(
      failure: none(),
      isLoading: false,
      listData: LimitedEmptyList(),
      workDone: false,
      message: '');
}
