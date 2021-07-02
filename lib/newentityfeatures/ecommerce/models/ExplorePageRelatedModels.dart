import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/property/property_detail_page.dart';
import 'package:complex/view/vehicle/vehicle_detail_page.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/route_manager.dart';

part 'ExplorePageRelatedModels.freezed.dart';
part 'ExplorePageRelatedModels.g.dart';

class JsonHelper {
  static DateTime fromJsonTimeStamp(Timestamp val) =>
      DateTime.fromMillisecondsSinceEpoch(val.millisecondsSinceEpoch);
  static Timestamp toJsonTimeStamp(DateTime time) =>
      Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);
}

@freezed
abstract class DimData with _$DimData {
  factory DimData({
    @JsonKey(name: 'dimname') String dimname,
    @JsonKey(name: 'fieldvalues') List<DimItem> fieldvalues,
  }) = _DimData;
  factory DimData.fromJson(Map<String, dynamic> json) =>
      _$DimDataFromJson(json);
//require keysetting
}


@freezed
abstract class DimItem with _$DimItem {
  factory DimItem({
    @JsonKey(name: 'fieldvalue') String fieldvalue,
    @JsonKey(name: 'count') int count,
  }) = _DimItem;
  factory DimItem.fromJson(Map<String, dynamic> json) =>
      _$DimItemFromJson(json);
//require keysetting
}

@freezed
abstract class AreaInfo with _$AreaInfo {
  factory AreaInfo({
    @JsonKey(name: 'state') String state,
    @JsonKey(name: 'district') String district,
    @JsonKey(name: 'areaname') String areaname,
    @JsonKey(name: 'zipcode') int zipcode,
  }) = _AreaInfo;
  factory AreaInfo.fromJson(Map<String, dynamic> json) =>
      _$AreaInfoFromJson(json);
//require keysetting
}

@freezed
abstract class Categoryinfo with _$Categoryinfo {
  factory Categoryinfo({
    @JsonKey(name: 'category') String category,
    @JsonKey(name: 'pricerange') List<int> pricerange,
    @JsonKey(name: 'priceareadependent') bool priceareadependent,
    @JsonKey(name: 'iconpath') String iconpath,
    @JsonKey(name: 'imagepath') String imagepath,
    @JsonKey(name: 'dynamicpropertiesidentifier')
        String dynamicpropertiesidentifier,
    @JsonKey(name: 'childcategory') List<Categoryinfo> childcategory,
  }) = _Categoryinfo;
  factory Categoryinfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryinfoFromJson(json);
//require keysetting
}

@freezed
abstract class productinorder with _$productinorder {
  factory productinorder({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'itemid') String itemid,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'unit') String unit,
    @JsonKey(name: 'unitprice') String unitprice,
    @JsonKey(name: 'qty') double qty,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'discountedprice') double discountedprice,
    @JsonKey(name: 'taxid') String taxid,
    @JsonKey(name: 'totalprice') double totalprice,
  }) = _productinorder;
  factory productinorder.fromJson(Map<String, dynamic> json) =>
      _$productinorderFromJson(json);
//require keysetting
}

@freezed
abstract class orderinfomodel with _$orderinfomodel {
  factory orderinfomodel({
    @JsonKey(name: 'custaddress') Addressmodel custaddress,
    @JsonKey(name: 'customerid') String customerid,
    @JsonKey(name: 'custuserid') String custuserid,
    @JsonKey(name: 'custname') String custname,
    @JsonKey(name: 'advanceamount') double advanceamount,
    @JsonKey(name: 'productlist') List<productinorder> productlist,
    @JsonKey(name: 'totaltax') double totaltax,
    @JsonKey(name: 'totalcalculatedprice') double totalcalculatedprice,
    @JsonKey(name: 'extradiscount') double extradiscount,
    @JsonKey(name: 'askedprice') double askedprice,
    @JsonKey(name: 'orderdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime orderdate,
    @JsonKey(name: 'orderstate') String orderstate,
    @JsonKey(name: 'serviceproviderid') String serviceproviderid,
    @JsonKey(name: 'custphonenum') String custphonenum,
    @JsonKey(name: 'id') String id,
  }) = _orderinfomodel;
  factory orderinfomodel.fromJson(Map<String, dynamic> json) =>
      _$orderinfomodelFromJson(json);
//require keysetting
}

@freezed
abstract class ProductSuggestionData with _$ProductSuggestionData {
  factory ProductSuggestionData({
    @JsonKey(name: 'pid') String pid,
    @JsonKey(name: 'text') String text,
  }) = _ProductSuggestionData;
  factory ProductSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$ProductSuggestionDataFromJson(json);
//require keysetting
}

@freezed
abstract class Sortfielddata with _$Sortfielddata {
  factory Sortfielddata({
    @JsonKey(name: 'fieldname') String fieldname,
    @JsonKey(name: 'desc') bool desc,
  }) = _Sortfielddata;
  factory Sortfielddata.fromJson(Map<String, dynamic> json) =>
      _$SortfielddataFromJson(json);
//require keysetting
}

@freezed
abstract class NumericFilterData with _$NumericFilterData {
  factory NumericFilterData({
    @JsonKey(name: 'fieldname') String fieldname,
    @JsonKey(name: 'minval') double minval,
    @JsonKey(name: 'maxval') double maxval,
  }) = _NumericFilterData;
  factory NumericFilterData.fromJson(Map<String, dynamic> json) =>
      _$NumericFilterDataFromJson(json);
//require keysetting
}

@freezed
abstract class FacetParaFilter with _$FacetParaFilter {
  factory FacetParaFilter({
    @JsonKey(name: 'paraname') String paraname,
    @JsonKey(name: 'fieldvalues') List<String> fieldvalues,
  }) = _FacetParaFilter;
  factory FacetParaFilter.fromJson(Map<String, dynamic> json) =>
      _$FacetParaFilterFromJson(json);
//require keysetting
}

@freezed
abstract class ProductFilterModel with _$ProductFilterModel {
  factory ProductFilterModel({
    @JsonKey(name: 'filtertype') int filtertype,
    @JsonKey(name: 'psc') ProductSearchInformationConfig psc,
    @JsonKey(name: 'categorytype') String categorytype,
    @JsonKey(name: 'reqfacet') bool reqfacet,
    @JsonKey(name: 'offset') int offset,
    @JsonKey(name: 'termquery') String termquery,
    @JsonKey(name: 'sortf') Sortfielddata sortf,
    @JsonKey(name: 'filters') List<NumericFilterData> filters,
    @JsonKey(name: 'facetparalist') List<FacetParaFilter> facetparalist,
  }) = _ProductFilterModel;
  factory ProductFilterModel.fromJson(Map<String, dynamic> json) =>
      _$ProductFilterModelFromJson(json);
//require keysetting
}

@freezed
abstract class LimitedData with _$LimitedData {
  const factory LimitedData.pet({
    String docid,
    @JsonKey(name: 'petclass') String petclass,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'breed') String breed,
    @JsonKey(name: 'gender') String gender,
    @JsonKey(name: 'animalclass') String animalclass,
    @JsonKey(name: 'age') int age,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime postedon,
    @JsonKey(name: 'addressarea') Addressmodel addressarea,
    @JsonKey(name: 'serviceproviderid') String serviceproviderid,
  }) = LimitedPetData;

  const factory LimitedData.package({
    @JsonKey(name: 'itemid') String itemid,
    @JsonKey(name: 'desc') String desc,
    @JsonKey(name: 'origprice') double origprice,
    @JsonKey(name: 'discountedprice') double discountedprice,
  }) = LimitedPackageData;

  const factory LimitedData.product({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'reqqty') bool reqqty,
    @JsonKey(name: 'isvegetarian') bool isvegetarian,
    @JsonKey(name: 'spicetype') int spicetype,
    @JsonKey(name: 'ispackage') bool ispackage,
    @JsonKey(name: 'unitmeasure') String unitmeasure,
    @JsonKey(name: 'origprice') double origprice,
    @JsonKey(name: 'discountedprice') double discountedprice,
    @JsonKey(name: 'varianttype') String varianttype,
    @JsonKey(name: 'packdata') List<LimitedPackageData> packdata,
    @JsonKey(name: 'contenttype') String contenttype,
  }) = LimitedProductData;

  const factory LimitedData.vehicle({
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'vehicletype') String vehicletype,
    @JsonKey(name: 'make') String make,
    @JsonKey(name: 'model') String model,
    @JsonKey(name: 'yearmade') int yearmade,
    @JsonKey(name: 'milage') int milage,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime postedon,
    @JsonKey(name: 'addressarea') Addressmodel addressarea,
    @JsonKey(name: 'serviceproviderid') String serviceproviderid,
  }) = LimitedVehicleData;

  const factory LimitedData.realEstate({
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'listingtype') String listingtype,
    @JsonKey(name: 'propertytype') String propertytype,
    @JsonKey(name: 'numbedroom') int numbedroom,
    @JsonKey(name: 'numbathroom') int numbathroom,
    @JsonKey(name: 'sharingallowed') bool sharingallowed,
    @JsonKey(name: 'sqrfootage') int sqrfootage,
    @JsonKey(name: 'floorNumber') int floorNumber,
    @JsonKey(name: 'price') double price,
    @JsonKey(name: 'addressarea') Addressmodel addressarea,
    @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime postedon,
    @JsonKey(name: 'tileimage') String tileimage,
    @JsonKey(name: 'serviceproviderid') String serviceproviderid,
  }) = LimitedRealEstateData;

  const factory LimitedData.job({
    @JsonKey(name: 'productid') String productid,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'companyname') String companyname,
    @JsonKey(name: 'companyicon') String companyicon,
    @JsonKey(name: 'salaryrange') String salaryrange,
    @JsonKey(name: 'addressarea') Addressmodel addressarea,
    @JsonKey(name: 'jobtype') String jobtype,
    @JsonKey(name: 'postedon', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime postedon,
  }) = LimitedJobData;

  factory LimitedData.fromJson(Map<String, dynamic> json) =>
      _$LimitedDataFromJson(json);

  static void toDetailsPage({@required LimitedData data}) {
    data.map(
        pet: (v) => Get.to(() => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5")),
        package: (v) {
          print(v.toString());
        },
        product: (v) {
          print(v.toString());
        },
        vehicle: (v) =>
            Get.to(() => VehicleDetailPage(docId: "6iknU0qt28LnJQYkHOzn")),
        realEstate: (v) =>
            Get.to(() => PropertyDetailPage(docId: "8iH7vo7wtzroFcHRN6Av")),
        job: (v) => Get.to(() => JobDetailPage(docId: "MkWAEblEkuuEnIrNpGlE")));
  }
}

@freezed
abstract class Customerinfo with _$Customerinfo {
  factory Customerinfo({
    @JsonKey(name: 'infotype') int infotype,
    @JsonKey(name: 'customerid') String customerid,
    @JsonKey(name: 'customeruserid') String customeruserid,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'maddr') Addressmodel maddr,
  }) = _Customerinfo;
  factory Customerinfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerinfoFromJson(json);
//require keysetting
}

@freezed
abstract class Addressmodel with _$Addressmodel {
  factory Addressmodel({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'country') String country,
    @JsonKey(name: 'state') String state,
    @JsonKey(name: 'district') String district,
    @JsonKey(name: 'village') String village,
    @JsonKey(name: 'areaname') String areaname,
    @JsonKey(name: 'addressinfo') String addressinfo,
    @JsonKey(name: 'lati') double lati,
    @JsonKey(name: 'longi') double longi,
  }) = _Addressmodel;
  factory Addressmodel.fromJson(Map<String, dynamic> json) =>
      _$AddressmodelFromJson(json);
//require keysetting
}

@freezed
abstract class ProductFilterResultModel with _$ProductFilterResultModel {
  factory ProductFilterResultModel({
    @JsonKey(name: 'totalcount') int totalcount,
    @JsonKey(name: 'serviceproviderid') String serviceproviderid,
    @JsonKey(name: 'docwithdata1') List<LimitedProductData> docwithdata1,
    @JsonKey(name: 'docwithdata2') List<LimitedJobData> docwithdata2,
    @JsonKey(name: 'docwithdata3') List<LimitedRealEstateData> docwithdata3,
    @JsonKey(name: 'docwithdata4') List<LimitedVehicleData> docwithdata4,
    @JsonKey(name: 'docwithdata5') List<LimitedPetData> docwithdata5,
    @JsonKey(name: 'pidlist') List<String> pidlist,
    @JsonKey(name: 'diminfo') List<DimData> diminfo,
    @JsonKey(name: 'catinfo') List<Categoryinfo> catinfo,
    @JsonKey(name: 'topleveltiletype') String topleveltiletype,
    @JsonKey(name: 'hasmoreresults') bool hasmoreresults,
  }) = _ProductFilterResultModel;
  factory ProductFilterResultModel.fromJson(Map<String, dynamic> json) =>
      _$ProductFilterResultModelFromJson(json);
//require keysetting
}

@freezed
abstract class SpatialData with _$SpatialData {
  factory SpatialData({
    @JsonKey(name: 'locationname') List<AreaInfo> locationname,
    @JsonKey(name: 'curstatename') String curStatename,
    @JsonKey(name: 'statename') String statename,
    @JsonKey(name: 'lati') double lati,
    @JsonKey(name: 'longi') double longi,
    @JsonKey(name: 'radius') int radius,
    @JsonKey(name: 'type') int type,
  }) = _SpatialData;
  factory SpatialData.fromJson(Map<String, dynamic> json) =>
      _$SpatialDataFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceFilterParameter with _$ServiceFilterParameter {
  factory ServiceFilterParameter({
    @JsonKey(name: 'serviceofferedselectedvalues')
        ProductSearchInformationConfig serviceofferedselectedvalues,
    @JsonKey(name: 'textsearch') String textsearch,
    @JsonKey(name: 'offset') int offset,
  }) = _ServiceFilterParameter;
  factory ServiceFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$ServiceFilterParameterFromJson(json);
//require keysetting
}

@freezed
abstract class ExplorePageAd with _$ExplorePageAd {
  factory ExplorePageAd({
    @JsonKey(name: 'imagepath') String imagepath,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'lm') LimitedServiceModel lm,
    @JsonKey(name: 'lpd') LimitedProductData lpd,
  }) = _ExplorePageAd;
  factory ExplorePageAd.fromJson(Map<String, dynamic> json) =>
      _$ExplorePageAdFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceFilterResultData with _$ServiceFilterResultData {
  factory ServiceFilterResultData({
    @JsonKey(name: 'smlist') List<LimitedServiceModel> smlist,
    @JsonKey(name: 'smidlist') List<String> smidlist,
    @JsonKey(name: 'totcount') int totcount,
    @JsonKey(name: 'curads') List<ExplorePageAd> curads,
  }) = _ServiceFilterResultData;
  factory ServiceFilterResultData.fromJson(Map<String, dynamic> json) =>
      _$ServiceFilterResultDataFromJson(json);
//require keysetting
}

@freezed
abstract class LimitedServiceModel with _$LimitedServiceModel {
  factory LimitedServiceModel({
    @JsonKey(name: 'phone') List<String> phone,
    @JsonKey(name: 'servicetype') List<String> servicetype,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'photo1') String photo1,
    @JsonKey(name: 'servicename') String serviceName,
    @JsonKey(name: 'timeinfo') String timeinfo,
    @JsonKey(name: 'serviceid') String serviceID,
    @JsonKey(name: 'ratingcount') int ratingcount,
    @JsonKey(name: 'totalratings') int totalratings,
    @JsonKey(name: 'hasapt') bool hasapt,
    @JsonKey(name: 'hasadhoctrips') bool hasadhoctrips,
    @JsonKey(name: 'hasecom') bool hasecom,
    @JsonKey(name: 'hasproductcatalog') bool hasproductcatalog,
    @JsonKey(name: 'lati') double lati,
    @JsonKey(name: 'longi') double longi,
  }) = _LimitedServiceModel;
  factory LimitedServiceModel.fromJson(Map<String, dynamic> json) =>
      _$LimitedServiceModelFromJson(json);
//require keysetting
}

@freezed
abstract class ProductSearchInformationConfig
    with _$ProductSearchInformationConfig {
  factory ProductSearchInformationConfig({
    @JsonKey(name: 'lsm') LimitedServiceModel lsm,
    @JsonKey(name: 'servicetype') String servicetype,
    @JsonKey(name: 'grouptype') String grouptype,
    @JsonKey(name: 'isshop') bool isshop,
    @JsonKey(name: 'sp') SpatialData sp,
    @JsonKey(name: 'cust') Customerinfo cust,
    @JsonKey(name: 'entrypoint') int entrypoint,
    @JsonKey(name: 'servicesselected') List<String> servicesselected,
    @JsonKey(name: 'spoffset') int spoffset,
  }) = _ProductSearchInformationConfig;
  factory ProductSearchInformationConfig.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchInformationConfigFromJson(json);
//require keysetting
}

@freezed
abstract class SPCustomerModel with _$SPCustomerModel {
  factory SPCustomerModel({
    @JsonKey(name: 'customerid') String customerId,
    @JsonKey(name: 'userid') String userId,
    @JsonKey(name: 'phonenum') String phoneNum,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'names') List<List<CustomerNameAgeIngo>> names,
    @JsonKey(name: 'addressinfolist') List<Addressmodel> addressInfolist,
  }) = _SPCustomerModel;
  factory SPCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$SPCustomerModelFromJson(json);
//require keysetting
}

@freezed
abstract class CustomerNameAgeIngo with _$CustomerNameAgeIngo {
  factory CustomerNameAgeIngo({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'dob', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)
        DateTime dob,
    @JsonKey(name: 'gender') String gender,
  }) = _CustomerNameAgeIngo;
  factory CustomerNameAgeIngo.fromJson(Map<String, dynamic> json) =>
      _$CustomerNameAgeIngoFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceGroup with _$ServiceGroup {
  factory ServiceGroup({
    @JsonKey(name: 'sectionname') String sectionname,
    @JsonKey(name: 'icon') String icon,
    @JsonKey(name: 'displaylist') String displaylist,
    @JsonKey(name: 'ordernum') int ordernum,
    @JsonKey(name: 'type') String type,
    @JsonKey(name: 'servicetypelist') List<ServiceType> servicetypelist,
  }) = _ServiceGroup;
  factory ServiceGroup.fromJson(Map<String, dynamic> json) =>
      _$ServiceGroupFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceType with _$ServiceType {
  factory ServiceType({
    @JsonKey(name: 'servicetype') String servicetype,
    @JsonKey(name: 'querystr') String querystr,
    @JsonKey(name: 'icon') String icon,
    @JsonKey(name: 'displaylist') String displaylist,
    @JsonKey(name: 'ordernum') int ordernum,
    @JsonKey(name: 'childservicetype') List<ServiceType> childservicetype,
    @JsonKey(name: 'filtertype') String filtertype,
    @JsonKey(name: 'filterdata') ServiceTypeFilterData filterdata,
  }) = _ServiceType;
  factory ServiceType.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceTypeFilterData with _$ServiceTypeFilterData {
  factory ServiceTypeFilterData({
    @JsonKey(name: 'filterheading') List<String> filterheading,
    @JsonKey(name: 'depth') int depth,
    @JsonKey(name: 'values') List<ServiceTypeFilterValues> values,
  }) = _ServiceTypeFilterData;
  factory ServiceTypeFilterData.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeFilterDataFromJson(json);
//require keysetting
}

@freezed
abstract class ServiceTypeFilterValues with _$ServiceTypeFilterValues {
  factory ServiceTypeFilterValues({
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'childvalues') List<String> childvalues,
  }) = _ServiceTypeFilterValues;
  factory ServiceTypeFilterValues.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeFilterValuesFromJson(json);
//require keysetting
}

@freezed
abstract class ExplorePageParameters with _$ExplorePageParameters {
  factory ExplorePageParameters({
    @JsonKey(name: 'adlist') List<ExplorePageAd> adlist,
    @JsonKey(name: 'favsplist') List<LimitedServiceModel> favsplist,
  }) = _ExplorePageParameters;
  factory ExplorePageParameters.fromJson(Map<String, dynamic> json) =>
      _$ExplorePageParametersFromJson(json);
//require keysetting
}
