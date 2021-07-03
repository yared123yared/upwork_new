import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/job_card.dart';
import 'package:complex/newentityfeatures/ecommerce/views/explore/ecom/widget/product/products_search.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class JobsListView extends StatefulWidget {
  const JobsListView({Key key}) : super(key: key);

  @override
  _JobsListViewState createState() => _JobsListViewState();
}

class _JobsListViewState extends State<JobsListView> {
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
                        searchTitle: 'Search for Jobs',
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
                        state.productFilterResultModel.docwithdata2;
                    return ListView.builder(
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
                        return JobCard(
                          jobReqModel: products[index],
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
