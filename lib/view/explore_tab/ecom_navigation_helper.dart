import 'package:complex/application/explore/ecom/product_list/product_list_bloc.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/view/explore_tab/owner_view/owner_product_list_page.dart';
import 'package:complex/view/job_pages/job_detail_page.dart';
import 'package:complex/view/pet_pages/pets_detail_page.dart';
import 'package:complex/view/property_pages/property_detail_page.dart';
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
    @required EcomProductType type,
  }) async {
    Logger().i(type.toString());
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => OwnerProductListPage(type: type)));

    await Future.delayed(Duration(milliseconds: 100));

    BlocProvider.of<ProductListBloc>(context)
        .add(ProductListEvent.get(type: type));
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
}
