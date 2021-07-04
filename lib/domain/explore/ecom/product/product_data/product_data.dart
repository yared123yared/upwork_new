part of 'complete_product_data.dart';

@freezed
abstract class ProductData with _$ProductData {
  factory ProductData({
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'brand') String brand,
    @JsonKey(name: 'category') String category,
    @JsonKey(name: 'tilephoto') String tilephoto,
    @JsonKey(name: 'imagelist') List<String> imagelist,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'discountedprice') double discountedprice,
    @JsonKey(name: 'ptype') int ptype,
    @JsonKey(name: 'dynamicproperties') List<dynaproperty> dynamicproperties,
    @JsonKey(name: 'varinattype') String varinattype,
    @JsonKey(name: 'nopackagedata') NoPackageData nopackagedata,
    @JsonKey(name: 'packagedata') List<PackageData> packagedata,
    @JsonKey(name: 'sizeandcolordata') List<SizeAndColorData> sizeandcolordata,
    @JsonKey(name: 'custompackagedata')
        List<CustomPackageData> custompackagedata,
  }) = _ProductData;
  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
//require keysetting
}

@freezed
abstract class NoPackageData with _$NoPackageData {
  factory NoPackageData({
    @JsonKey(name: 'unit') String unit,
    @JsonKey(name: 'priceperunit') double priceperunit,
    @JsonKey(name: 'inventoryunits') double inventoryunits,
    @JsonKey(name: 'discountedpriceperunit') double discountedpriceperunit,
  }) = _NoPackageData;
  factory NoPackageData.fromJson(Map<String, dynamic> json) =>
      _$NoPackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class PackageData with _$PackageData {
  factory PackageData({
    @JsonKey(name: 'packageid') String packageid,
    @JsonKey(name: 'barcodeid') String barcodeid,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'listimages') List<String> listimages,
    @JsonKey(name: 'unit') int unit,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'discountedprice') double discountedprice,
    @JsonKey(name: 'inventoryunits') int inventoryunits,
  }) = _PackageData;
  factory PackageData.fromJson(Map<String, dynamic> json) =>
      _$PackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class SizeAndColorData with _$SizeAndColorData {
  factory SizeAndColorData({
    @JsonKey(name: 'sizecolorid') String sizecolorid,
    @JsonKey(name: 'barcodeid') String barcodeid,
    @JsonKey(name: 'sizetype') String sizetype,
    @JsonKey(name: 'size') String size,
    @JsonKey(name: 'color') String color,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'discountedprice') double discountedprice,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'listimages') List<String> listimages,
    @JsonKey(name: 'unit') int unit,
    @JsonKey(name: 'inventoryunits') int inventoryunits,
  }) = _SizeAndColorData;
  factory SizeAndColorData.fromJson(Map<String, dynamic> json) =>
      _$SizeAndColorDataFromJson(json);
//require keysetting
}

@freezed
abstract class CustomPackageData with _$CustomPackageData {
  factory CustomPackageData({
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'unit') int unit,
  }) = _CustomPackageData;
  factory CustomPackageData.fromJson(Map<String, dynamic> json) =>
      _$CustomPackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class dynaproperty with _$dynaproperty {
  factory dynaproperty({
    @JsonKey(name: 'propertyname') String propertyname,
    @JsonKey(name: 'values') List<String> values,
  }) = _dynaproperty;
  factory dynaproperty.fromJson(Map<String, dynamic> json) =>
      _$dynapropertyFromJson(json);
//require keysetting
}
