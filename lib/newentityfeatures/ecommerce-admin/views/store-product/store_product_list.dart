import 'package:complex/newentityfeatures/ecommerce-admin/bloc/store-product/store_product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/bloc/store-product/store_product_state.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/store-product/store_product_categories.dart';
import 'package:complex/newentityfeatures/ecommerce-admin/views/store-product/store_products_filter.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/views/cart/cart_view.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/cathalog_card.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/job_card.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/pet_card.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/products_search.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/realestate_card.dart';
import 'package:complex/newentityfeatures/ecommerce/widgets/product/vehicle_card.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class StoreProductList extends StatefulWidget {
  final bool hideCart;
  const StoreProductList({
    Key key,
    this.hideCart: false,
  }) : super(key: key);

  @override
  _StoreProductListState createState() => _StoreProductListState();
}

class _StoreProductListState extends State<StoreProductList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.context.read<StoreProductBloc>().add(
            FetchedStoreProducts(),
          );
      _scrollController.addListener(() {
        if (_scrollController.offset >=
                _scrollController.position.maxScrollExtent - 20 &&
            !Get.context.read<StoreProductBloc>().state.loading) {
          Get.context.read<StoreProductBloc>().add(FetchedMoreStoreProducts());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: ProductsSearch(
                            searchTitle: 'Search for products',
                            customSubmitFunction: (query) {
                              Get.context.read<StoreProductBloc>().add(
                                    SearchedStoreProducts(query),
                                  );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (context
                                .watch<StoreProductBloc>()
                                .state
                                .productFilterResultModel
                                ?.topleveltiletype ==
                            'package')
                          InkWell(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.category_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                                Text(
                                  'Category',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        fontSize: 10,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                ),
                              ],
                            ),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => StoreProductCategoriesView(),
                              ),
                            ),
                          )
                        else
                          Container(),
                        InkWell(
                          child: Column(
                            children: [
                              Icon(
                                Icons.filter_alt_rounded,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Filter',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      fontSize: 10,
                                      color: Theme.of(context).primaryColor,
                                    ),
                              ),
                            ],
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => StoreProductsFilter(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<StoreProductBloc, StoreProductState>(
                  builder: (context, state) {
                    if (state.filtering ||
                        (state.loading &&
                            state.productFilterResultModel == null) ||
                        state.productFilterResultModel == null) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state.hasError) {
                      return EcommerceErrorWidget(
                        errorText: state.error,
                      );
                    }
                    if (state.productFilterResultModel.totalcount == 0) {
                      return Center(
                        child: Text(
                          'Please search or filter to get results',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }
                    if (state.productFilterResultModel.topleveltiletype ==
                        'pet') {
                      return GridView.builder(
                        key: Key('animals_grid'),
                        itemCount: context
                            .watch<StoreProductBloc>()
                            .state
                            .productFilterResultModel
                            .docwithdata5
                            .length,
                        padding: EdgeInsets.all(20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          return PetCard(
                            petModel: state
                                .productFilterResultModel.docwithdata5[index],
                          );
                        },
                      );
                    }
                    return ListView.builder(
                      itemCount: state
                                  .productFilterResultModel.topleveltiletype ==
                              'realestate'
                          ? state.productFilterResultModel.docwithdata3.length
                          : state.productFilterResultModel.topleveltiletype ==
                                  'vehicle'
                              ? state
                                  .productFilterResultModel.docwithdata4.length
                              : state.productFilterResultModel
                                          .topleveltiletype ==
                                      'job'
                                  ? state.productFilterResultModel.docwithdata2
                                      .length
                                  : state.productFilterResultModel.docwithdata1
                                      .length,
                      controller: _scrollController,
                      padding: EdgeInsets.all(
                        state.productFilterResultModel.topleveltiletype ==
                                    'vehicle' ||
                                state.productFilterResultModel
                                        .topleveltiletype ==
                                    'realestate' ||
                                state.productFilterResultModel
                                        .topleveltiletype ==
                                    'job'
                            ? 0
                            : 16,
                      ),
                      itemBuilder: (context, index) {
                        if (state.productFilterResultModel.topleveltiletype ==
                            'realestate') {
                          return RealEstateCard(
                            realEstateModel: state
                                .productFilterResultModel.docwithdata3[index],
                          );
                        }
                        if (state.productFilterResultModel.topleveltiletype ==
                            'vehicle') {
                          return VehicleCard(
                            vehicleModel: state
                                .productFilterResultModel.docwithdata4[index],
                          );
                        }
                        if (state.productFilterResultModel.topleveltiletype ==
                            'job') {
                          return JobCard(
                            jobReqModel: state
                                .productFilterResultModel.docwithdata2[index],
                          );
                        }
                        return CathalogCard(
                          productData: state
                              .productFilterResultModel.docwithdata1[index],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: (!widget.hideCart &&
              Get.context
                      .watch<StoreProductBloc>()
                      .state
                      .productFilterResultModel
                      ?.topleveltiletype ==
                  'package'
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => BlocProvider<CartBloc>.value(
                      value: context.read<CartBloc>(),
                      child: CartView(
                        popsCount: 3,
                      ),
                    ),
                  ),
                );
              },
              child: Icon(Icons.shopping_bag),
            )
          : null),
    );
  }
}
