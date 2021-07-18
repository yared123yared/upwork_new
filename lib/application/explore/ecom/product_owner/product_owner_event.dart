part of 'product_owner_bloc.dart';

@freezed
abstract class ProductOwnerEvent with _$ProductOwnerEvent {
  const factory ProductOwnerEvent.get({@required EcomProductType type,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,@required int limit,@required String lastdocumentid}) =
  _GetProductList;

  const factory ProductOwnerEvent.add(
      {@required CompleteProductData productData,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) = _AddProduct;

  const factory ProductOwnerEvent.update(
      {@required CompleteProductData productData,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) = _UpdateProduct;


  const factory ProductOwnerEvent.getProductSuggestion(
      {@required String texttosearch,@required EcomProductType type,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,int offset}) = _GetProductSuggestion;

  const factory ProductOwnerEvent.getProductById(
      {@required String productid,@required EcomProductType type,@required String entitytype,@required String entityid,@required bool isservice,@required int origin,int offset}) = _GetProductById;


  const factory ProductOwnerEvent.delete(
      {@required CompleteProductData productData,@required String entitytype,@required String entityid,@required bool isservice,@required int origin}) = _DeleteProduct;

}