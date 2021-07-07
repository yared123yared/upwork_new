part of 'product_owner_bloc.dart';

@freezed
abstract class ProductOwnerState with _$ProductOwnerState {
  const factory ProductOwnerState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required String message,
    @required CompleteProductDataList listData,
  }) = _ProductListState;

  factory ProductOwnerState.initial() => _ProductListState(
      failure: none(),
      isLoading: false,
      listData: CompleteProductDataList.empty(),
      workDone: false,
      message: '');
}
