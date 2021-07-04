import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/views/categories/service_categories.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/cathalog_card.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/products_search.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../filters/products_filter.dart';
import '../cart/cart_view.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({Key key}) : super(key: key);

  @override
  _ProductsListViewState createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CartBloc>().add(FetchedCartEvent());
    });
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent - 20 &&
          !Get.context.read<ProductBloc>().state.loading) {
        Get.context.read<ProductBloc>().add(FetchedMoreFilterResultStores());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
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
                      searchTitle: 'Explore Services. Grocery, Plumber etc',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.category_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'Category',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: 10,
                                color: Theme.of(context).primaryColor,
                              ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ServiceCategoriesView(),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.filter_alt_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          'Filter',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                                fontSize: 10,
                                color: Theme.of(context).primaryColor,
                              ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProductsFilter(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  if (state.hasError) {
                    return EcommerceErrorWidget(
                      errorText: state.error,
                    );
                  }
                  final products =
                      state.productFilterResultModel?.docwithdata1 ?? [];
                  if (state.loading && products.length == 0)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  return ListView.builder(
                    padding: EdgeInsets.all(20),
                    itemCount: products.length + 1,
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      if (index == products.length) {
                        if (state.loading && products.length > 0)
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        else
                          return Container();
                      }
                      return CathalogCard(
                        productData: products[index],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.shop_outlined,
        ),
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: context.read<CartBloc>(),
            child: CartView(),
          ),
        )),
      ),
    );
  }
}
