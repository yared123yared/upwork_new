part of 'product_owner_bloc.dart';

@freezed
abstract class ProductOwnerEvent with _$ProductOwnerEvent {
  const factory ProductOwnerEvent.get({@required EcomProductType type}) =
      _GetProductList;

  const factory ProductOwnerEvent.add(
      {@required CompleteProductData productData}) = _AddProduct;

  const factory ProductOwnerEvent.update(
      {@required CompleteProductData productData}) = _UpdateProduct;
}
