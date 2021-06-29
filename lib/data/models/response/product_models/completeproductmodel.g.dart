// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'completeproductmodel.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// _$_RealEstateModel _$_$_RealEstateModelFromJson(Map<String, dynamic> json) {
//   return _$_RealEstateModel(
//     docid: json['docid'] as String,
//     serviceproviderid: json['serviceproviderid'] as String,
//     userid: json['userid'] as String,
//     servicetype: json['servicetype'] as String,
//     usagetype: json['usagetype'] as String,
//     propertytype: json['propertytype'] as String,
//     tileimage: json['tileimage'] as String,
//     imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
//     constructionstatus: json['constructionstatus'] as String,
//     saletype: json['saletype'] as String,
//     discountstartdate:
//         JsonHelper.fromJsonTimeStamp(json['discountstartdate'] as Timestamp),
//     discountenddate:
//         JsonHelper.fromJsonTimeStamp(json['discountenddate'] as Timestamp),
//     occupancytype: json['occupancytype'] as String,
//     tenantgenderfamilypreference: (json['tenantgenderfamilypreference'] as List)
//         ?.map((e) => e as String)
//         ?.toList(),
//     ownershiptype: json['ownershiptype'] as String,
//     sqfeetarea: json['sqfeetarea'] as int,
//     numrooms: json['numrooms'] as int,
//     numbath: json['numbath'] as int,
//     furnishedstatus: json['furnishedstatus'] as String,
//     haspowerbackup: json['haspowerbackup'] as bool,
//     hasclubhouse: json['hasclubhouse'] as bool,
//     hassecurity: json['hassecurity'] as bool,
//     has24hrwater: json['has24hrwater'] as bool,
//     hasgaspipeline: json['hasgaspipeline'] as bool,
//     hasparking: json['hasparking'] as bool,
//     hasgreenarea: json['hasgreenarea'] as bool,
//     hasinternet: json['hasinternet'] as bool,
//     hasairconditioner: json['hasairconditioner'] as bool,
//     hascooler: json['hascooler'] as bool,
//     hasfridge: json['hasfridge'] as bool,
//     hastv: json['hastv'] as bool,
//     haslift: json['haslift'] as bool,
//     creationdate:
//         JsonHelper.fromJsonTimeStamp(json['creationdate'] as Timestamp),
//     title: json['title'] as String,
//     description: json['description'] as String,
//     listingownertype: json['listingownertype'] as String,
//     price: json['price'] as int,
//     contactdetails: json['contactdetails'] == null
//         ? null
//         : ContactDetailsModel.fromJson(
//             json['contactdetails'] as Map<String, dynamic>),
//   );
// }
//
// Map<String, dynamic> _$_$_RealEstateModelToJson(_$_RealEstateModel instance) =>
//     <String, dynamic>{
//       'docid': instance.docid,
//       'serviceproviderid': instance.serviceproviderid,
//       'userid': instance.userid,
//       'servicetype': instance.servicetype,
//       'usagetype': instance.usagetype,
//       'propertytype': instance.propertytype,
//       'tileimage': instance.tileimage,
//       'imagelist': instance.imagelist,
//       'constructionstatus': instance.constructionstatus,
//       'saletype': instance.saletype,
//       'discountstartdate':
//           JsonHelper.toJsonTimeStamp(instance.discountstartdate),
//       'discountenddate': JsonHelper.toJsonTimeStamp(instance.discountenddate),
//       'occupancytype': instance.occupancytype,
//       'tenantgenderfamilypreference': instance.tenantgenderfamilypreference,
//       'ownershiptype': instance.ownershiptype,
//       'sqfeetarea': instance.sqfeetarea,
//       'numrooms': instance.numrooms,
//       'numbath': instance.numbath,
//       'furnishedstatus': instance.furnishedstatus,
//       'haspowerbackup': instance.haspowerbackup,
//       'hasclubhouse': instance.hasclubhouse,
//       'hassecurity': instance.hassecurity,
//       'has24hrwater': instance.has24hrwater,
//       'hasgaspipeline': instance.hasgaspipeline,
//       'hasparking': instance.hasparking,
//       'hasgreenarea': instance.hasgreenarea,
//       'hasinternet': instance.hasinternet,
//       'hasairconditioner': instance.hasairconditioner,
//       'hascooler': instance.hascooler,
//       'hasfridge': instance.hasfridge,
//       'hastv': instance.hastv,
//       'haslift': instance.haslift,
//       'creationdate': JsonHelper.toJsonTimeStamp(instance.creationdate),
//       'title': instance.title,
//       'description': instance.description,
//       'listingownertype': instance.listingownertype,
//       'price': instance.price,
//       'contactdetails': instance.contactdetails,
//     };
//
// _$_EcomVehicleModel _$_$_EcomVehicleModelFromJson(Map<String, dynamic> json) {
//   return _$_EcomVehicleModel(
//     serviceproviderid: json['serviceproviderid'] as String,
//     userid: json['userid'] as String,
//     docid: json['docid'] as String,
//     servicetype: json['servicetype'] as String,
//     vehicletype: json['vehicletype'] as String,
//     propertytype: json['propertytype'] as String,
//     tileimage: json['tileimage'] as String,
//     imagelist: json['imagelist'] as String,
//     title: json['title'] as String,
//     description: json['description'] as String,
//     listingownertype: json['listingownertype'] as String,
//     contactdetails: json['contactdetails'] == null
//         ? null
//         : ContactDetailsModel.fromJson(
//             json['contactdetails'] as Map<String, dynamic>),
//     make: json['make'] as String,
//     model: json['model'] as String,
//     yearbuild: json['yearbuild'] as int,
//     milage: json['milage'] as int,
//     exteriorcolor: json['exteriorcolor'] as String,
//     interiorcolor: json['interiorcolor'] as String,
//     cylinder: json['cylinder'] as int,
//     fueltype: json['fueltype'] as String,
//     bodytype: json['bodytype'] as String,
//     drivetype: json['drivetype'] as String,
//     transmission: json['transmission'] as String,
//     ownershiptransfer: json['ownershiptransfer'] as String,
//     price: json['price'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_EcomVehicleModelToJson(
//         _$_EcomVehicleModel instance) =>
//     <String, dynamic>{
//       'serviceproviderid': instance.serviceproviderid,
//       'userid': instance.userid,
//       'docid': instance.docid,
//       'servicetype': instance.servicetype,
//       'vehicletype': instance.vehicletype,
//       'propertytype': instance.propertytype,
//       'tileimage': instance.tileimage,
//       'imagelist': instance.imagelist,
//       'title': instance.title,
//       'description': instance.description,
//       'listingownertype': instance.listingownertype,
//       'contactdetails': instance.contactdetails,
//       'make': instance.make,
//       'model': instance.model,
//       'yearbuild': instance.yearbuild,
//       'milage': instance.milage,
//       'exteriorcolor': instance.exteriorcolor,
//       'interiorcolor': instance.interiorcolor,
//       'cylinder': instance.cylinder,
//       'fueltype': instance.fueltype,
//       'bodytype': instance.bodytype,
//       'drivetype': instance.drivetype,
//       'transmission': instance.transmission,
//       'ownershiptransfer': instance.ownershiptransfer,
//       'price': instance.price,
//     };
//
// _$_PetModel _$_$_PetModelFromJson(Map<String, dynamic> json) {
//   return _$_PetModel(
//     docid: json['docid'] as String,
//     serviceproviderid: json['serviceproviderid'] as String,
//     userid: json['userid'] as String,
//     animaltype: json['animaltype'] as String,
//     age: json['age'] as int,
//     latitude: (json['latitude'] as num)?.toDouble(),
//     longitude: (json['longitude'] as num)?.toDouble(),
//     petname: json['petname'] as String,
//     gender: json['gender'] as String,
//     tileimage: json['tileimage'] as String,
//     imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
//     title: json['title'] as String,
//     description: json['description'] as String,
//     listingownertype: json['listingownertype'] as String,
//     contactdetails: json['contactdetails'] == null
//         ? null
//         : ContactDetailsModel.fromJson(
//             json['contactdetails'] as Map<String, dynamic>),
//     breed: json['breed'] as String,
//     vaccinated: json['vaccinated'] as bool,
//     ismilking: json['ismilking'] as bool,
//     milkqty: json['milkqty'] as int,
//     price: json['price'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_PetModelToJson(_$_PetModel instance) =>
//     <String, dynamic>{
//       'docid': instance.docid,
//       'serviceproviderid': instance.serviceproviderid,
//       'userid': instance.userid,
//       'animaltype': instance.animaltype,
//       'age': instance.age,
//       'latitude': instance.latitude,
//       'longitude': instance.longitude,
//       'petname': instance.petname,
//       'gender': instance.gender,
//       'tileimage': instance.tileimage,
//       'imagelist': instance.imagelist,
//       'title': instance.title,
//       'description': instance.description,
//       'listingownertype': instance.listingownertype,
//       'contactdetails': instance.contactdetails,
//       'breed': instance.breed,
//       'vaccinated': instance.vaccinated,
//       'ismilking': instance.ismilking,
//       'milkqty': instance.milkqty,
//       'price': instance.price,
//     };
//
// _$_JobPosting _$_$_JobPostingFromJson(Map<String, dynamic> json) {
//   return _$_JobPosting(
//     docid: json['docid'] as String,
//     serviceproviderid: json['serviceproviderid'] as String,
//     userid: json['userid'] as String,
//     title: json['title'] as String,
//     description: json['description'] as String,
//     listingownertype: json['listingownertype'] as String,
//     contactdetails: json['contactdetails'] == null
//         ? null
//         : ContactDetailsModel.fromJson(
//             json['contactdetails'] as Map<String, dynamic>),
//     companyname: json['companyname'] as String,
//     companylogo: json['companylogo'] as String,
//     isparttime: json['isparttime'] as bool,
//     minsalaryrange: json['minsalaryrange'] as int,
//     maxsalaryrange: json['maxsalaryrange'] as int,
//     educationqualification: json['educationqualification'] as String,
//     arefreshersallowed: json['arefreshersallowed'] as bool,
//     minyearexperience: json['minyearexperience'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_JobPostingToJson(_$_JobPosting instance) =>
//     <String, dynamic>{
//       'docid': instance.docid,
//       'serviceproviderid': instance.serviceproviderid,
//       'userid': instance.userid,
//       'title': instance.title,
//       'description': instance.description,
//       'listingownertype': instance.listingownertype,
//       'contactdetails': instance.contactdetails,
//       'companyname': instance.companyname,
//       'companylogo': instance.companylogo,
//       'isparttime': instance.isparttime,
//       'minsalaryrange': instance.minsalaryrange,
//       'maxsalaryrange': instance.maxsalaryrange,
//       'educationqualification': instance.educationqualification,
//       'arefreshersallowed': instance.arefreshersallowed,
//       'minyearexperience': instance.minyearexperience,
//     };
//
// _$_ProductModel _$_$_ProductModelFromJson(Map<String, dynamic> json) {
//   return _$_ProductModel(
//     productid: json['productid'] as String,
//     title: json['title'] as String,
//     description: json['description'] as String,
//     brand: json['brand'] as String,
//     category: json['category'] as String,
//     tilephoto: json['tilephoto'] as String,
//     imagelist: (json['imagelist'] as List)?.map((e) => e as String)?.toList(),
//     price: (json['price'] as num)?.toDouble(),
//     discountedprice: (json['discountedprice'] as num)?.toDouble(),
//     ptype: json['ptype'] as int,
//     dynamicproperties: (json['dynamicproperties'] as List)
//         ?.map((e) =>
//             e == null ? null : dynaproperty.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//     varinattype: json['varinattype'] as String,
//     nopackagedata: json['nopackagedata'] == null
//         ? null
//         : NoPackageModel.fromJson(
//             json['nopackagedata'] as Map<String, dynamic>),
//     packagedata: (json['packagedata'] as List)
//         ?.map((e) =>
//             e == null ? null : PackageModel.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//     sizeandcolordata: (json['sizeandcolordata'] as List)
//         ?.map((e) => e == null
//             ? null
//             : SizeAndColorModel.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//     custompackagedata: (json['custompackagedata'] as List)
//         ?.map((e) => e == null
//             ? null
//             : CustomPackageModel.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//   );
// }
//
// Map<String, dynamic> _$_$_ProductModelToJson(_$_ProductModel instance) =>
//     <String, dynamic>{
//       'productid': instance.productid,
//       'title': instance.title,
//       'description': instance.description,
//       'brand': instance.brand,
//       'category': instance.category,
//       'tilephoto': instance.tilephoto,
//       'imagelist': instance.imagelist,
//       'price': instance.price,
//       'discountedprice': instance.discountedprice,
//       'ptype': instance.ptype,
//       'dynamicproperties': instance.dynamicproperties,
//       'varinattype': instance.varinattype,
//       'nopackagedata': instance.nopackagedata,
//       'packagedata': instance.packagedata,
//       'sizeandcolordata': instance.sizeandcolordata,
//       'custompackagedata': instance.custompackagedata,
//     };
//
// _$_NoPackageModel _$_$_NoPackageModelFromJson(Map<String, dynamic> json) {
//   return _$_NoPackageModel(
//     unit: json['unit'] as String,
//     priceperunit: (json['priceperunit'] as num)?.toDouble(),
//     inventoryunits: (json['inventoryunits'] as num)?.toDouble(),
//     discountedpriceperunit: (json['discountedpriceperunit'] as num)?.toDouble(),
//   );
// }
//
// Map<String, dynamic> _$_$_NoPackageModelToJson(_$_NoPackageModel instance) =>
//     <String, dynamic>{
//       'unit': instance.unit,
//       'priceperunit': instance.priceperunit,
//       'inventoryunits': instance.inventoryunits,
//       'discountedpriceperunit': instance.discountedpriceperunit,
//     };
//
// _$_PackageModel _$_$_PackageModelFromJson(Map<String, dynamic> json) {
//   return _$_PackageModel(
//     packageid: json['packageid'] as String,
//     barcodeid: json['barcodeid'] as String,
//     title: json['title'] as String,
//     tileimage: json['tileimage'] as String,
//     listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
//     unit: json['unit'] as int,
//     price: (json['price'] as num)?.toDouble(),
//     discountedprice: (json['discountedprice'] as num)?.toDouble(),
//     inventoryunits: json['inventoryunits'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_PackageModelToJson(_$_PackageModel instance) =>
//     <String, dynamic>{
//       'packageid': instance.packageid,
//       'barcodeid': instance.barcodeid,
//       'title': instance.title,
//       'tileimage': instance.tileimage,
//       'listimages': instance.listimages,
//       'unit': instance.unit,
//       'price': instance.price,
//       'discountedprice': instance.discountedprice,
//       'inventoryunits': instance.inventoryunits,
//     };
//
// _$_SizeAndColorModel _$_$_SizeAndColorModelFromJson(Map<String, dynamic> json) {
//   return _$_SizeAndColorModel(
//     sizecolorid: json['sizecolorid'] as String,
//     barcodeid: json['barcodeid'] as String,
//     sizetype: json['sizetype'] as String,
//     size: json['size'] as String,
//     color: json['color'] as String,
//     price: (json['price'] as num)?.toDouble(),
//     discountedprice: (json['discountedprice'] as num)?.toDouble(),
//     tileimage: json['tileimage'] as String,
//     listimages: (json['listimages'] as List)?.map((e) => e as String)?.toList(),
//     unit: json['unit'] as int,
//     inventoryunits: json['inventoryunits'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_SizeAndColorModelToJson(
//         _$_SizeAndColorModel instance) =>
//     <String, dynamic>{
//       'sizecolorid': instance.sizecolorid,
//       'barcodeid': instance.barcodeid,
//       'sizetype': instance.sizetype,
//       'size': instance.size,
//       'color': instance.color,
//       'price': instance.price,
//       'discountedprice': instance.discountedprice,
//       'tileimage': instance.tileimage,
//       'listimages': instance.listimages,
//       'unit': instance.unit,
//       'inventoryunits': instance.inventoryunits,
//     };
//
// _$_CustomPackageModel _$_$_CustomPackageModelFromJson(
//     Map<String, dynamic> json) {
//   return _$_CustomPackageModel(
//     productid: json['productid'] as String,
//     title: json['title'] as String,
//     unit: json['unit'] as int,
//   );
// }
//
// Map<String, dynamic> _$_$_CustomPackageModelToJson(
//         _$_CustomPackageModel instance) =>
//     <String, dynamic>{
//       'productid': instance.productid,
//       'title': instance.title,
//       'unit': instance.unit,
//     };
//
// _$_dynaproperty _$_$_dynapropertyFromJson(Map<String, dynamic> json) {
//   return _$_dynaproperty(
//     propertyname: json['propertyname'] as String,
//     values: (json['values'] as List)?.map((e) => e as String)?.toList(),
//   );
// }
//
// Map<String, dynamic> _$_$_dynapropertyToJson(_$_dynaproperty instance) =>
//     <String, dynamic>{
//       'propertyname': instance.propertyname,
//       'values': instance.values,
//     };
//
// _$_ContactDetailsModel _$_$_ContactDetailsModelFromJson(
//     Map<String, dynamic> json) {
//   return _$_ContactDetailsModel(
//     name: json['name'] as String,
//     phonenum: json['phonenum'] as String,
//     sharephone: json['sharephone'] as bool,
//     email: json['email'] as String,
//     shareemail: json['shareemail'] as bool,
//     address: json['address'] == null
//         ? null
//         : AddressDataModel.fromJson(json['address'] as Map<String, dynamic>),
//     shareaddress: json['shareaddress'] as bool,
//   );
// }
//
// Map<String, dynamic> _$_$_ContactDetailsModelToJson(
//         _$_ContactDetailsModel instance) =>
//     <String, dynamic>{
//       'name': instance.name,
//       'phonenum': instance.phonenum,
//       'sharephone': instance.sharephone,
//       'email': instance.email,
//       'shareemail': instance.shareemail,
//       'address': instance.address,
//       'shareaddress': instance.shareaddress,
//     };
//
// _$_AddressDataModel _$_$_AddressDataModelFromJson(Map<String, dynamic> json) {
//   return _$_AddressDataModel(
//     country: json['country'] as String,
//     state: json['state'] as String,
//     district: json['district'] as String,
//     town_village: json['town_village'] as String,
//     area_sector: json['area_sector'] as String,
//     societyname: json['societyname'] as String,
//     addressline: json['addressline'] as String,
//     latitude: (json['latitude'] as num)?.toDouble(),
//     longitude: (json['longitude'] as num)?.toDouble(),
//   );
// }
//
// Map<String, dynamic> _$_$_AddressDataModelToJson(
//         _$_AddressDataModel instance) =>
//     <String, dynamic>{
//       'country': instance.country,
//       'state': instance.state,
//       'district': instance.district,
//       'town_village': instance.town_village,
//       'area_sector': instance.area_sector,
//       'societyname': instance.societyname,
//       'addressline': instance.addressline,
//       'latitude': instance.latitude,
//       'longitude': instance.longitude,
//     };
