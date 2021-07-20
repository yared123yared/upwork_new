import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/common/widgets/custom_floating_action.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/view/explore_tab/owner_view/owner_product_card.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../ecom_navigation_helper.dart';

class OwnerProductListPage extends StatelessWidget {
  final EcomProductType type;
  final String entitytype;
  final String entityid;
  final bool isService;
  final int origin;
  const OwnerProductListPage(
      {Key key,
      @required this.type,
      @required String this.entitytype,
      @required String this.entityid,
      @required this.isService,
      @required this.origin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductOwnerBloc, ProductOwnerState>(
      listener: (context, state) {
        state.failure.fold(() {
          if (state.isLoading) {
            EasyLoading.show(status: 'Loading..');
          } else if (state.message.isNotEmpty) {
            EasyLoading.showInfo(state.message);
          } else {
            EasyLoading.dismiss();
          }
        }, (a) {
          EasyLoading.dismiss();

          showDialog(
              context: context,
              builder: (context) => ErrorDialogue(failure: a));
        });
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: CustomFloatingButton(
            onTap: () {
              EcomNavigationHelper.of(context).toContactFormPage(type: type,  isService: isService, entityid: entityid, entitytype: entitytype, origin: origin);

            },
            text: "Add New",
          ),
          appBar: AppBar(
            title: Text(type.map(
                pet: (_) => 'Pet List',
                vehicle: (_) => 'Vehicle List',
                realEstate: (_) => 'RealEstate List',
                job: (_) => 'Jobs List',
                product: (_) => 'Products List')),
            centerTitle: true,
          ),
          body: state.listData.map(pet: (pet) {
            return ListView.builder(
                itemCount: pet.pets.length,
                itemBuilder: (context, index) =>
                    OwnerProductCard.fromCompleteData(
                        data: pet.pets[index],
                        entitytype: entitytype,
                        entityid: entityid,
                        isService: isService,
                        origin: origin));
          }, vehicle: (vehicle) {
            return ListView.builder(
                itemCount: vehicle.vehicles.length,
                itemBuilder: (context, index) =>
                    OwnerProductCard.fromCompleteData(
                        data: vehicle.vehicles[index],
                        entitytype: entitytype,
                        entityid: entityid,
                        isService: isService,
                        origin: origin));
          }, realEstate: (realEstate) {
            return ListView.builder(
                itemCount: realEstate.properties.length,
                itemBuilder: (context, index) =>
                    OwnerProductCard.fromCompleteData(
                        data: realEstate.properties[index],
                        entitytype: entitytype,
                        entityid: entityid,
                        isService: isService,
                        origin: origin));
          }, job: (job) {
            return ListView.builder(
                itemCount: job.jobs.length,
                itemBuilder: (context, index) =>
                    OwnerProductCard.fromCompleteData(
                        data: job.jobs[index],
                        entitytype: entitytype,
                        entityid: entityid,
                        isService: isService,
                        origin: origin));
          }, product: (product) {
            return ListView.builder(
                itemCount: product.products.length,
                itemBuilder: (context, index) =>
                    OwnerProductCard.fromCompleteData(
                        data: product.products[index],
                        entitytype: entitytype,
                        entityid: entityid,
                        isService: isService,
                        origin: origin));
          }, empty: (empty) {
            return Center(
              child: Text('Empty'),
            );
          }),
        );
      },
    );
  }
}
