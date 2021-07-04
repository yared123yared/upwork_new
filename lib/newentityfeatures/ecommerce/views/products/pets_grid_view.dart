import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/pet_card.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/products_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../filters/products_filter.dart';

class PetsGridView extends StatefulWidget {
  const PetsGridView({Key key}) : super(key: key);

  @override
  _PetsGridViewState createState() => _PetsGridViewState();
}

class _PetsGridViewState extends State<PetsGridView> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
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
                        searchTitle: 'Search for Animals',
                      ),
                    ),
                    InkWell(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.filter_alt_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text(
                            'Filter',
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
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
                child: GridView.builder(
                  key: Key('animals_grid'),
                  itemCount: context
                      .watch<ProductBloc>()
                      .state
                      .productFilterResultModel
                      .docwithdata5
                      .length,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    return PetCard(
                      key: Key(index.toString()),
                      petModel: context
                          .watch<ProductBloc>()
                          .state
                          .productFilterResultModel
                          .docwithdata5[index],
                    );
                  },
                  padding: EdgeInsets.all(20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.shop_outlined,
      //   ),
      //   onPressed: () => Navigator.of(context).push(MaterialPageRoute(
      //     builder: (_) => BlocProvider.value(
      //       value: context.read<CartBloc>(),
      //       child: CartView(),
      //     ),
      //   )),
      // ),
    );
  }
}
