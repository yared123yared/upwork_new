import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/domain/explore/ecom/contact_details/contact_details.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/view/explore_tab/owner_view/owner_product_list_page.dart';
import 'package:complex/view/job_pages/add_job_page.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/add_pet_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/product_pages/general_contact_details_page.dart';
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
    @required EcomProductType type,@required String entitytype, @required String entityid,@required isService
  }) async {
    Logger().i(type.toString());
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OwnerProductListPage(type: type,entitytype: entitytype,entityid:entityid,isService:isService )));

    await Future.delayed(Duration(milliseconds: 100));

    BlocProvider.of<ProductOwnerBloc>(context)
        .add(ProductOwnerEvent.get(type: type));
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

  void toContactFormPage({@required EcomProductType type}) {
    final Widget page = type.map(
        realEstate: (realEstate) => GeneralContactDetailPage(
              type: EcomProductType.realEstate(),
            ),
        job: (job) => GeneralContactDetailPage(
              type: EcomProductType.job(),
            ),
        pet: (pet) => GeneralContactDetailPage(
              type: EcomProductType.pet(),
            ),
        vehicle: (vehicle) => GeneralContactDetailPage(
              type: EcomProductType.vehicle(),
            ),
        product: (product) => GeneralContactDetailPage(
              type: EcomProductType.product(),
            ));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void fromPrductToContactForm({@required CompleteProductData data}) {
    final Widget page = data.map(
        realEstate: (realEstate) => GeneralContactDetailPage(
              productData: realEstate,
              type: EcomProductType.realEstate(),
            ),
        job: (job) => GeneralContactDetailPage(
              productData: job,
              type: EcomProductType.job(),
            ),
        pet: (pet) => GeneralContactDetailPage(
              productData: pet,
              type: EcomProductType.pet(),
            ),
        vehicle: (vehicle) => GeneralContactDetailPage(
              productData: vehicle,
              type: EcomProductType.vehicle(),
            ),
        product: (product) => GeneralContactDetailPage(
              productData: product,
              type: EcomProductType.product(),
            ));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void fromContactToAddProductPage(
      {@required EcomProductType type,
      @required CompleteProductData data,
      @required bool isService,
      @required String serviceId,
      @required String serviceProviderId,
      @required ContactDetails contactDetails}) {
    final Widget page = type.map(
      pet: (pet) => AddPetPage(
        contactDetails,
        completePet: data,
      ),
      vehicle: (vehicle) =>
          VehicleCreatePage(contactDetails, completeVehicle: data),
      realEstate: (realEstate) => AddPropertyPage(
        contactDetails,
        realEstate: data,
      ),
      job: (job) => AddJobPage(
        contactDetails,
        completeJob: data,
      ),
      product: (product) => SelectProductType(
        contactDetails,
        isService: isService,
        serviceId: serviceId,
        serviceProviderId: serviceProviderId,
      ),
    );
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }
}
