import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/views/categories/service_categories.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/jobs_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/products_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/realestates_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/vehicles_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/pets_grid_view.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/products_search.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../widgets/services/service_list_tile.dart';
import '../../bloc/service/service_bloc.dart';

class ServiceListView extends StatefulWidget {
  const ServiceListView({Key key}) : super(key: key);

  @override
  _ServiceListViewState createState() => _ServiceListViewState();
}

class _ServiceListViewState extends State<ServiceListView> {
  bool pushed = false;
  ServiceBloc _bloc;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _bloc = Get.context.read<ServiceBloc>();
      _bloc.add(FetchedServiceEvent());
    });
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent - 20 &&
          !Get.context.read<ServiceBloc>().state.loading) {
        Get.context.read<ServiceBloc>().add(FetchedMoreServices());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) async {
            if (pushed) return;
            if (state.productFilterResultModel != null && !state.loading) {
              pushed = true;
              if (state.productFilterResultModel.totalcount == 0)
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(
                        builder: (_) => ServiceCategoriesView(),
                      ),
                    )
                    .then((value) => pushed = false);
              else {
                final type = context
                    .read<ProductBloc>()
                    .state
                    .productFilterResultModel
                    .topleveltiletype;
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(
                        builder: (_) => BlocProvider(
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
                    )
                    .then((value) => pushed = false);
              }
            }
          },
          builder: (context, state) {
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                child: Icon(Icons.arrow_back_ios),
                                onTap: () => Navigator.of(context).pop(),
                              ),
                            ),
                            Expanded(
                              child: ProductsSearch(
                                searchTitle: 'Search Services..',
                                isService: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: BlocBuilder<ServiceBloc, ServiceState>(
                          builder: (context, state) {
                            if (state.hasError) {
                              return EcommerceErrorWidget(
                                errorText: state.errorMessage,
                              );
                            }
                            if (state.loading &&
                                (state.services?.length ?? 0) == 0)
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            return ListView.builder(
                              controller: _scrollController,
                              itemCount: state.services.length,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              itemBuilder: (context, index) {
                                final serviceModel = state.services[index];
                                if (index == state.services.length - 1)
                                  return Column(
                                    children: [
                                      ServiceListTile(
                                        key: Key(serviceModel.serviceID),
                                        serviceModel: serviceModel,
                                      ),
                                      if (state.loading)
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CircularProgressIndicator(),
                                          ),
                                        )
                                    ],
                                  );

                                return ServiceListTile(
                                  key: Key(serviceModel.serviceID),
                                  serviceModel: serviceModel,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                if (state.loading)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Color(0x44000000),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
