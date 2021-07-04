import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/service/service_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsSearch extends StatelessWidget {
  final String searchTitle;
  final bool isService;
  final Function(String) customSubmitFunction;

  const ProductsSearch({
    Key key,
    this.searchTitle,
    this.isService: false,
    this.customSubmitFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.only(
        left: 12,
        right: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: searchTitle,
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
          onSubmitted: customSubmitFunction ??
              (query) {
                if (isService) {
                  Get.context
                      .read<ServiceBloc>()
                      .add(SearchedServiceEvent(query));
                } else
                  Get.context.read<ProductBloc>().add(
                        SearchedProductsEvent(query),
                      );
              },
        ),
      ),
    );
  }
}
