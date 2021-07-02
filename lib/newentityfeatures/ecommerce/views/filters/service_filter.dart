import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/views/filters/categories_filter.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/jobs_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/pets_grid_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/products_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/realestates_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/vehicles_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/services/services_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ServiceFilterView extends StatefulWidget {
  final ServiceTypeFilterData filterData;
  const ServiceFilterView({Key key, this.filterData}) : super(key: key);

  @override
  _ServiceFilterViewState createState() => _ServiceFilterViewState();
}

class _ServiceFilterViewState extends State<ServiceFilterView> {
  void openServices() {
    final state = Get.context.read<ProductBloc>().state;
    final type = state.serviceGroups[state.selected].type;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => type == 'shop'
            ? ServiceListView()
            : BlocProvider(
                create: (_) => CartBloc(),
                child: type == 'vehicle'
                    ? VehiclesListView()
                    : type == 'realestate'
                        ? RealEstatesListView()
                        : type == 'job'
                            ? JobsListView()
                            : type == 'pet'
                                ? PetsGridView()
                                : ProductsListView(),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20.0),
          children: [
            CategoriesFilter(
              filterData: widget.filterData,
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if ((state.productSearchInformationConfig?.servicesselected
                            ?.length ??
                        0) >
                    0)
                  return InkWell(
                    onTap: openServices,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      child: Center(
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
