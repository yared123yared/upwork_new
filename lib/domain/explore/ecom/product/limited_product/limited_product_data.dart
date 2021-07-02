import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/property/property_detail_page.dart';
import 'package:complex/view/vehicle/vehicle_detail_page.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/route_manager.dart';

part 'limited_product_data.freezed.dart';
part 'limited_product_data.g.dart';

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
