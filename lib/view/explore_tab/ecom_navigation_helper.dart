import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';

import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/view/explore_tab/owner_view/owner_product_list_page.dart';
import 'package:complex/view/job_pages/add_job_page.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/add_pet_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/product_pages/general_contact_details_page.dart';
import 'package:complex/view/product_pages/product_properties.dart';
import 'package:complex/view/product_pages/select_product_type.dart';
import 'package:complex/view/property_pages/add_property_page.dart';
import 'package:complex/view/property_pages/property_detail_page.dart';
import 'package:complex/view/vehicle/vehicle_create_page.dart';
import 'package:complex/view/vehicle/vehicle_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class EcomNavigationHelper {
  final BuildContext context;

  EcomNavigationHelper._(this.context);

  factory EcomNavigationHelper.of(BuildContext context) =>
      EcomNavigationHelper._(context);

  void toListPage({
    @required EcomProductType type,@required String entitytype, @required String entityid,@required isService, @required origin
  }) async {
    Logger().i(type.toString());
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OwnerProductListPage(type: type,entitytype: entitytype,entityid:entityid,isService:isService,origin:origin )));

    await Future.delayed(Duration(milliseconds: 100));

    BlocProvider.of<ProductOwnerBloc>(context)
        .add(ProductOwnerEvent.get(type: type,entitytype: entitytype,entityid:entityid,isservice:isService,origin:origin,lastdocumentid: "",limit:20));
  }

  void toDetailsPage({@required LimitedData data}) {
    final Widget page = data.map(
        pet: (v) => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5"),
        product: (v) => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5"),
        vehicle: (v) => VehicleDetailPage(docId: "6iknU0qt28LnJQYkHOzn"),
        realEstate: (v) => PropertyDetailPage(docId: "8iH7vo7wtzroFcHRN6Av"),
        job: (v) => JobDetailPage(docId: "MkWAEblEkuuEnIrNpGlE"),
        package: (value) => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5"));

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void completeToDetailsPage({@required CompleteProductData data}) {
    final Widget page = data.map(
        pet: (v) => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5"),
        product: (v) => PetsDetailPage(docId: "MJtvMr9arqpepKVncqp5"),
        vehicle: (v) => VehicleDetailPage(docId: "6iknU0qt28LnJQYkHOzn"),
        realEstate: (v) => PropertyDetailPage(docId: "8iH7vo7wtzroFcHRN6Av"),
        job: (v) => JobDetailPage(docId: "MkWAEblEkuuEnIrNpGlE"));

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void toContactFormPage({@required EcomProductType type,@required String entitytype, @required String entityid,@required isService, @required origin}) {
    final Widget page = type.map(
        realEstate: (realEstate) => GeneralContactDetailPage(
              type: EcomProductType.realEstate(),productData: null,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ),
        job: (job) => GeneralContactDetailPage(
              type: EcomProductType.job(),productData: null,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ),
        pet: (pet) => GeneralContactDetailPage(
              type: EcomProductType.pet(),productData: null,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ),
        vehicle: (vehicle) => GeneralContactDetailPage(
              type: EcomProductType.vehicle(),productData: null,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ),
        product: (product) => GeneralContactDetailPage(
              type: EcomProductType.product(),productData: null,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void fromPrductToContactForm({@required CompleteProductData data,@required String entitytype, @required String entityid,@required isService, @required origin}) {
    final Widget page = data.map(
        realEstate: (realEstate) => GeneralContactDetailPage(
              productData: realEstate,
              type: EcomProductType.realEstate(),entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ),
        job: (job) => GeneralContactDetailPage(
              productData: job,
              type: EcomProductType.job(),entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin,
            ),
        pet: (pet) => GeneralContactDetailPage(
              productData: pet,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin,
              type: EcomProductType.pet(),
            ),
        vehicle: (vehicle) => GeneralContactDetailPage(
              productData: vehicle,entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin,
              type: EcomProductType.vehicle(),
            ),
        product: (product) => GeneralContactDetailPage(
              productData: product,
              type: EcomProductType.product(),entitytype: entitytype,serviceId:entityid,isService:isService,origintype:origin
            ));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void fromContactToAddProductPage(
      {@required EcomProductType type,
      @required CompleteProductData data,
      @required bool isService,
      @required String serviceId,@required String entitytype, @required int origintype,

      @required ContactDetailsModel contactDetails}) {
    final Widget page = type.map(
      pet: (pet) => AddPetPage(
        contactDetails,
        completePet: data,entitytype: entitytype,entityid: serviceId,isService: isService,origin:origintype ,
      ),
      vehicle: (vehicle) =>
          VehicleCreatePage(contactDetails, completeVehicle: data,entitytype: entitytype,entityid: serviceId,isService: isService,origin:origintype),
      realEstate: (realEstate) => AddPropertyPage(
        contactDetails,
        realEstate: data,entitytype: entitytype,entityid: serviceId,isService: isService,origin:origintype
      ),
      job: (job) => AddJobPage(
        contactDetails,
        completeJob: data,entitytype: entitytype,entityid: serviceId,isService: isService,origin:origintype
      ),
      product: (product) =>
       ProductProperties(
        withUnitPrice: (data as CompleteProduct).data.ptype==1?false:true,
        productType:SelectProductType.fromStringProductType ((data as CompleteProduct).data.varinattype)  ,
        contactDetails: null,
        serviceId: serviceId,
        entitytype: entitytype,
        isService: isService,product:(data as CompleteProduct).data
      )


  ,
    );
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }
}
