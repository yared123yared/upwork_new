part of 'complete_product_data.dart';
@freezed
abstract class RealEstateModel with _$RealEstateModel {
  factory RealEstateModel({
    @JsonKey(name:'docid')String docid,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'servicetype')String servicetype,
    @JsonKey(name:'usagetype')String usagetype,
    @JsonKey(name:'propertytype')String propertytype,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'imagelist')List<String> imagelist,
    @JsonKey(name:'constructionstatus')String constructionstatus,
    @JsonKey(name:'saletype')String saletype,
    @JsonKey(name:'discountstartdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime discountstartdate,
    @JsonKey(name:'discountenddate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime discountenddate,
    @JsonKey(name:'occupancytype')String occupancytype,
    @JsonKey(name:'tenantgenderfamilypreference')List<String> tenantgenderfamilypreference,
    @JsonKey(name:'ownershiptype')String ownershiptype,
    @JsonKey(name:'sqfeetarea')int sqfeetarea,
    @JsonKey(name:'numrooms')int numrooms,
    @JsonKey(name:'numbath')int numbath,
    @JsonKey(name:'furnishedstatus')String furnishedstatus,
    @JsonKey(name:'haspowerbackup')bool haspowerbackup,
    @JsonKey(name:'hasclubhouse')bool hasclubhouse,
    @JsonKey(name:'hassecurity')bool hassecurity,
    @JsonKey(name:'has24hrwater')bool has24hrwater,
    @JsonKey(name:'hasgaspipeline')bool hasgaspipeline,
    @JsonKey(name:'hasparking')bool hasparking,
    @JsonKey(name:'hasgreenarea')bool hasgreenarea,
    @JsonKey(name:'hasinternet')bool hasinternet,
    @JsonKey(name:'hasairconditioner')bool hasairconditioner,
    @JsonKey(name:'hascooler')bool hascooler,
    @JsonKey(name:'hasfridge')bool hasfridge,
    @JsonKey(name:'hastv')bool hastv,
    @JsonKey(name:'haslift')bool haslift,
    @JsonKey(name:'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime creationdate,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'description')String description,
    @JsonKey(name:'listingownertype')String listingownertype,
    @JsonKey(name:'price')int price,
    @JsonKey(name:'contactdetails')ContactDetailsModel contactdetails,

  }) = _RealEstateModel;
  factory RealEstateModel.fromJson(Map<String, dynamic> json) => _$RealEstateModelFromJson(json);
//require keysetting
}

@freezed
abstract class EcomVehicleModel with _$EcomVehicleModel {
  factory EcomVehicleModel({
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'docid')String docid,
    @JsonKey(name:'servicetype')String servicetype,
    @JsonKey(name:'vehicletype')String vehicletype,
    @JsonKey(name:'propertytype')String propertytype,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'imagelist')List<String> imagelist,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'description')String description,
    @JsonKey(name:'listingownertype')String listingownertype,
    @JsonKey(name:'contactdetails')ContactDetailsModel contactdetails,
    @JsonKey(name:'make')String make,
    @JsonKey(name:'model')String model,
    @JsonKey(name:'yearbuild')int yearbuild,
    @JsonKey(name:'milage')int milage,
    @JsonKey(name:'exteriorcolor')String exteriorcolor,
    @JsonKey(name:'interiorcolor')String interiorcolor,
    @JsonKey(name:'cylinder')int cylinder,
    @JsonKey(name:'fueltype')String fueltype,
    @JsonKey(name:'bodytype')String bodytype,
    @JsonKey(name:'drivetype')String drivetype,
    @JsonKey(name:'transmission')String transmission,
    @JsonKey(name:'ownershiptransfer')String ownershiptransfer,
    @JsonKey(name:'price')int price,
    @JsonKey(name:'seatingcapacity')int seatingcapacity,
    @JsonKey(name:'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime creationdate,
    @JsonKey(name:'turboengine')bool turboengine,
    @JsonKey(name:'powersteering')bool powersteering,
    @JsonKey(name:'parkingsensors')bool parkingsensors,
    @JsonKey(name:'airbags')bool airbags,
    @JsonKey(name:'cruisecontrol')bool cruisecontrol,
    @JsonKey(name:'keylessentry')bool keylessentry,
    @JsonKey(name:'sunroof')bool sunroof,
    @JsonKey(name:'moonroof')bool moonroof,
    @JsonKey(name:'alloywheels')bool alloywheels,
    @JsonKey(name:'antilockbrakingsystem')bool antilockbrakingsystem,
    @JsonKey(name:'automaticclimatecontrol')bool automaticclimatecontrol,
    @JsonKey(name:'rearacvents')bool rearacvents,
    @JsonKey(name:'remotetrunkopener')bool remotetrunkopener,

  }) = _EcomVehicleModel;
  factory EcomVehicleModel.fromJson(Map<String, dynamic> json) => _$EcomVehicleModelFromJson(json);
//require keysetting
}

@freezed
abstract class PetModel with _$PetModel {
  factory PetModel({
    @JsonKey(name:'docid')String docid,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'petclass')String petclass,
    @JsonKey(name:'animaltype')String animaltype,
    @JsonKey(name:'age')int age,
    @JsonKey(name:'petname')String petname,
    @JsonKey(name:'gender')String gender,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'imagelist')List<String> imagelist,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'description')String description,
    @JsonKey(name:'listingownertype')String listingownertype,
    @JsonKey(name:'contactdetails')ContactDetailsModel contactdetails,
    @JsonKey(name:'breed')String breed,
    @JsonKey(name:'vaccinated')bool vaccinated,
    @JsonKey(name:'ismilking')bool ismilking,
    @JsonKey(name:'milkqty')int milkqty,
    @JsonKey(name:'price')int price,
    @JsonKey(name:'creationdate', fromJson: JsonHelper.fromJsonTimeStamp, toJson: JsonHelper.toJsonTimeStamp)DateTime creationdate,

  }) = _PetModel;
  factory PetModel.fromJson(Map<String, dynamic> json) => _$PetModelFromJson(json);
//require keysetting
}

@freezed
abstract class JobPosting with _$JobPosting {
  factory JobPosting({
    @JsonKey(name:'docid')String docid,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'description')String description,
    @JsonKey(name:'listingownertype')String listingownertype,
    @JsonKey(name:'contactdetails')ContactDetailsModel contactdetails,
    @JsonKey(name:'companyname')String companyname,
    @JsonKey(name:'companylogo')String companylogo,
    @JsonKey(name:'isparttime')bool isparttime,
    @JsonKey(name:'minsalaryrange')int minsalaryrange,
    @JsonKey(name:'maxsalaryrange')int maxsalaryrange,
    @JsonKey(name:'educationqualification')String educationqualification,
    @JsonKey(name:'arefreshersallowed')bool arefreshersallowed,
    @JsonKey(name:'minyearexperience')int minyearexperience,
    @JsonKey(name:'worktype')String worktype,

  }) = _JobPosting;
  factory JobPosting.fromJson(Map<String, dynamic> json) => _$JobPostingFromJson(json);
//require keysetting
}

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    @JsonKey(name:'docid')String productid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'description')String description,
    @JsonKey(name:'brand')String brand,
    @JsonKey(name:'category')String category,
    @JsonKey(name:'tilephoto')String tilephoto,
    @JsonKey(name:'imagelist')List<String> imagelist,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'discountedprice')double discountedprice,
    @JsonKey(name:'ptype')int ptype,
    @JsonKey(name:'dynamicproperties')List<dynaproperty> dynamicproperties,
    @JsonKey(name:'varinattype')String varinattype,
    @JsonKey(name:'sizetype')String sizetype,
    @JsonKey(name:'nopackagedata')NoPackageModel nopackagedata,
    @JsonKey(name:'packagedata')List<PackageModel> packagedata,
    @JsonKey(name:'sizeandcolordata')List<SizeAndColorModel> sizeandcolordata,
    @JsonKey(name:'custompackagedata')List<CustomPackageModel> custompackagedata,
    @JsonKey(name:'addressarea')ContactDetailsModel addressarea,
    @JsonKey(name:'serviceproviderid')String serviceproviderid,
    @JsonKey(name:'userid')String userid,

  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
//require keysetting
}

@freezed
abstract class NoPackageModel with _$NoPackageModel {
  factory NoPackageModel({
    @JsonKey(name:'unitmeasure')String unitmeasure,
    @JsonKey(name:'qty')int qty,
    @JsonKey(name:'priceperunit')double priceperunit,
    @JsonKey(name:'inventoryunits')double inventoryunits,
    @JsonKey(name:'discountedpriceperunit')double discountedpriceperunit,

  }) = _NoPackageModel;
  factory NoPackageModel.fromJson(Map<String, dynamic> json) => _$NoPackageModelFromJson(json);
//require keysetting
}

@freezed
abstract class PackageModel with _$PackageModel {
  factory PackageModel({
    @JsonKey(name:'packageid')String packageid,
    @JsonKey(name:'barcodeid')String barcodeid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'listimages')List<String> listimages,
    @JsonKey(name:'unit')int unit,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'discountedprice')double discountedprice,
    @JsonKey(name:'inventoryunits')int inventoryunits,

  }) = _PackageModel;
  factory PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);
//require keysetting
}

@freezed
abstract class SizeAndColorModel with _$SizeAndColorModel {
  factory SizeAndColorModel({
    @JsonKey(name:'sizecolorid')String sizecolorid,
    @JsonKey(name:'barcodeid')String barcodeid,
    @JsonKey(name:'sizetype')String sizetype,
    @JsonKey(name:'size')String size,
    @JsonKey(name:'color')String color,
    @JsonKey(name:'price')double price,
    @JsonKey(name:'discountedprice')double discountedprice,
    @JsonKey(name:'tileimage')String tileimage,
    @JsonKey(name:'listimages')List<String> listimages,
    @JsonKey(name:'unit')int unit,
    @JsonKey(name:'inventoryunits')int inventoryunits,

  }) = _SizeAndColorModel;
  factory SizeAndColorModel.fromJson(Map<String, dynamic> json) => _$SizeAndColorModelFromJson(json);
//require keysetting
}

@freezed
abstract class CustomPackageModel with _$CustomPackageModel {
  factory CustomPackageModel({
    @JsonKey(name:'productid')String productid,
    @JsonKey(name:'title')String title,
    @JsonKey(name:'unit')int unit,
    @JsonKey(name:'image1')String image1,

  }) = _CustomPackageModel;
  factory CustomPackageModel.fromJson(Map<String, dynamic> json) => _$CustomPackageModelFromJson(json);
//require keysetting
}

@freezed
abstract class dynaproperty with _$dynaproperty {
  factory dynaproperty({
    @JsonKey(name:'propertyname')String propertyname,
    @JsonKey(name:'values')List<String> values,

  }) = _dynaproperty;
  factory dynaproperty.fromJson(Map<String, dynamic> json) => _$dynapropertyFromJson(json);
//require keysetting
}

@freezed
abstract class ContactDetailsModel with _$ContactDetailsModel {
  factory ContactDetailsModel({
    @JsonKey(name:'name')String name,
    @JsonKey(name:'phonenum')String phonenum,
    @JsonKey(name:'sharephone')bool sharephone,
    @JsonKey(name:'email')String email,
    @JsonKey(name:'shareemail')bool shareemail,
    @JsonKey(name:'address')AddressDataModel address,
    @JsonKey(name:'shareaddress')bool shareaddress,

  }) = _ContactDetailsModel;
  factory ContactDetailsModel.fromJson(Map<String, dynamic> json) => _$ContactDetailsModelFromJson(json);
//require keysetting
}

@freezed
abstract class AddressDataModel with _$AddressDataModel {
  factory AddressDataModel({
    @JsonKey(name:'country')String country,
    @JsonKey(name:'state')String state,
    @JsonKey(name:'district')String district,
    @JsonKey(name:'town_village')String town_village,
    @JsonKey(name:'area_sector')String area_sector,
    @JsonKey(name:'societyname')String societyname,
    @JsonKey(name:'addressline')String addressline,
    @JsonKey(name:'latitude')double latitude,
    @JsonKey(name:'longitude')double longitude,

  }) = _AddressDataModel;
  factory AddressDataModel.fromJson(Map<String, dynamic> json) => _$AddressDataModelFromJson(json);
//require keysetting
}

