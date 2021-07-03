part of 'product_list_bloc.dart';

@freezed
abstract class ProductListState with _$ProductListState {
  const factory ProductListState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required String message,
    @required CompleteProductDataList listData,
  }) = _ProductListState;

  factory ProductListState.initial() => _ProductListState(
      failure: none(),
      isLoading: false,
      listData: CompleteProductDataList.empty(),
      workDone: false,
      message: '');
}
