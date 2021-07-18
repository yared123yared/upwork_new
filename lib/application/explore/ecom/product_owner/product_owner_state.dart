part of 'product_owner_bloc.dart';

@freezed
abstract class ProductOwnerState with _$ProductOwnerState {
  const factory ProductOwnerState({
    @required bool isLoading,
    @required bool workDone,
    @required Option<Failure> failure,
    @required String message,
    @required int returneddatatype,
    @required CompleteProductDataList listData,

    @required List<LuceneSearchSuggestionData> lucenesuggestiondata

  }) = _ProductListState;

  factory ProductOwnerState.initial() => _ProductListState(
    failure: none(),
    isLoading: false,
    listData: CompleteProductDataList.empty(),
    workDone: false,
    message: '',

    lucenesuggestiondata:null,
    returneddatatype:-1,

  );
}
