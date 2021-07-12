part of 'complete_product_data.dart';

@freezed
abstract class ProductData with _$ProductData {
  factory ProductData({
    @JsonKey(name: 'productid', defaultValue: '') @required String productid,
    @JsonKey(name: 'title') @required String title,
    @JsonKey(name: 'description') @required String description,
    @JsonKey(name: 'brand') @required String brand,
    @JsonKey(name: 'category') @required String category,
    @JsonKey(name: 'tilephoto', defaultValue: '') @required String tilePhoto,
    @JsonKey(name: 'imagelist') @required List<String> imagelist,
    @JsonKey(name: 'price') @required double price,
    @JsonKey(name: 'discountedprice', defaultValue: 0)
    @required
        double discountedprice,
    @JsonKey(name: 'ptype', defaultValue: 0) @required int ptype,
    @JsonKey(name: 'dynamicproperties', defaultValue: [])
    @required
        List<DynamicProperty> dynamicproperties,
    @JsonKey(name: 'varinattype') @required String varinattype,
    @JsonKey(name: 'nopackagedata') NoPackageData nopackagedata,
    @JsonKey(name: 'packagedata', defaultValue: [])
    @required
        List<PackageData> packagedata,
    @JsonKey(name: 'sizeandcolordata', defaultValue: [])
    @required
        List<SizeAndColorData> sizeandcolordata,
    @JsonKey(name: 'custompackagedata', defaultValue: [])
    @required
        List<CustomPackageData> custompackagedata,
  }) = _ProductData;
  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
//require keysetting
}

@freezed
abstract class NoPackageData with _$NoPackageData {
  factory NoPackageData({
    @JsonKey(name: 'unit', defaultValue: '') @required String unit,
    @JsonKey(name: 'priceperunit') @required double priceperunit,
    @JsonKey(name: 'inventoryunits') @required double inventoryunits,
    @JsonKey(name: 'discountedpriceperunit')
    @required
        double discountedpriceperunit,
  }) = _NoPackageData;
  factory NoPackageData.fromJson(Map<String, dynamic> json) =>
      _$NoPackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class PackageData with _$PackageData {
  factory PackageData({
    @JsonKey(name: 'packageid') @required String packageid,
    @JsonKey(name: 'barcodeid') @required String barcodeid,
    @JsonKey(name: 'title') @required String title,
    @JsonKey(name: 'tileimage') @required String tileimage,
    @JsonKey(name: 'listimages') @required List<String> listimages,
    @JsonKey(name: 'unit', defaultValue: '') @required int unit,
    @JsonKey(name: 'price') @required double price,
    @JsonKey(name: 'discountedprice', defaultValue: 0)
    @required
        double discountedprice,
    @JsonKey(name: 'inventoryunits') @required int inventoryunits,
  }) = _PackageData;
  factory PackageData.fromJson(Map<String, dynamic> json) =>
      _$PackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class SizeAndColorData with _$SizeAndColorData {
  factory SizeAndColorData({
    @JsonKey(name: 'sizecolorid') @required String sizecolorid,
    @JsonKey(name: 'barcodeid') @required String barcodeid,
    @JsonKey(name: 'sizetype', defaultValue: '') @required String sizetype,
    @JsonKey(name: 'size') @required String size,
    @JsonKey(name: 'color') @required String color,
    @JsonKey(name: 'price') @required double price,
    @JsonKey(name: 'discountedprice', defaultValue: 0)
    @required
        double discountedprice,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'listimages') @required List<String> listimages,
    @JsonKey(name: 'unit', defaultValue: '') @required int unit,
    @JsonKey(name: 'inventoryunits') @required int inventoryunits,
  }) = _SizeAndColorData;
  factory SizeAndColorData.fromJson(Map<String, dynamic> json) =>
      _$SizeAndColorDataFromJson(json);
//require keysetting
}

@freezed
abstract class CustomPackageData with _$CustomPackageData {
  factory CustomPackageData({
    @JsonKey(name: 'productid', defaultValue: '') @required String productid,
    @JsonKey(name: 'title') @required String title,
    @JsonKey(name: 'unit', defaultValue: '') @required int unit,
  }) = _CustomPackageData;
  factory CustomPackageData.fromJson(Map<String, dynamic> json) =>
      _$CustomPackageDataFromJson(json);
//require keysetting
}

@freezed
abstract class DynamicProperty with _$DynamicProperty {
  factory DynamicProperty({
    @JsonKey(name: 'propertyname') @required String propertyname,
    @JsonKey(name: 'values') @required List<String> values,
  }) = _DynamicProperty;
  factory DynamicProperty.fromJson(Map<String, dynamic> json) =>
      _$DynamicPropertyFromJson(json);
//require keysetting
}
