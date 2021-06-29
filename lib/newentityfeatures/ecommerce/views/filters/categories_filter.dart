import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CategoriesFilter extends StatefulWidget {
  final ServiceTypeFilterData filterData;
  const CategoriesFilter({Key key, @required this.filterData})
      : super(key: key);

  @override
  _CategoriesFilterState createState() => _CategoriesFilterState();
}

class _CategoriesFilterState extends State<CategoriesFilter> {
  List<String> selectedCategories = [];
  onSelectCategory(String category) {
    setState(() {
      if (selectedCategories.contains(category))
        selectedCategories.remove(category);
      else
        selectedCategories.add(category);
    });
    ProductBloc _bloc = Get.context.read<ProductBloc>();
    _bloc.add(
      UpdateSearchConfig(
        _bloc.state.productSearchInformationConfig.copyWith(
          servicesselected: selectedCategories,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        initiallyExpanded: true,
        title: Text(widget.filterData.filterheading[0]),
        children: widget.filterData.values
            .map(
              (subCategory) => widget.filterData.depth == 1
                  ? ListTile(
                      onTap: () => onSelectCategory(
                        '${widget.filterData.filterheading[0]}/${subCategory.value}',
                      ),
                      title: Text(subCategory.value),
                    )
                  : ExpansionTile(
                      title: Text(subCategory.value),
                      children: subCategory.childvalues
                          .map(
                            (e) => ListTile(
                              leading: Checkbox(
                                value: selectedCategories.contains(
                                  '${widget.filterData.filterheading[0]}/${subCategory.value}/${e}',
                                ),
                                onChanged: (v) => onSelectCategory(
                                  '${widget.filterData.filterheading[0]}/${subCategory.value}/${e}',
                                ),
                              ),
                              onTap: () => onSelectCategory(
                                '${widget.filterData.filterheading[0]}/${subCategory.value}/${e}',
                              ),
                              title: Text(e),
                            ),
                          )
                          .toList(),
                    ),
            )
            .toList(),
      ),
    );
  }
}
