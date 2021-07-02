import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ProductsFilter extends StatefulWidget {
  ProductsFilter({Key key}) : super(key: key);

  @override
  _ProductsFilterState createState() => _ProductsFilterState();
}

class _ProductsFilterState extends State<ProductsFilter> {
  Map<String, List<DimItem>> selectedFilters = {};
  Map<String, String> queries = {};

  int itemsCount = 0;

  void submitFilter() async {
    Get.context.read<ProductBloc>().add(
          UpdateProductFilterModel(
            Get.context.read<ProductBloc>().state.productFilterModel.copyWith(
                  facetparalist: selectedFilters
                      .map(
                        (key, value) => MapEntry(
                          key,
                          FacetParaFilter(
                            paraname: key,
                            fieldvalues:
                                value.map((e) => e.fieldvalue).toList(),
                          ),
                        ),
                      )
                      .values
                      .toList(),
                ),
          ),
        );
    Navigator.pop(context);
  }

  void switchFilter(String name, DimItem e) => setState(() {
        if (selectedFilters.isEmpty ||
            selectedFilters.values
                    .where((element) => element.length > 0)
                    .length ==
                0) itemsCount = 0;
        if (selectedFilters.containsKey(name) &&
            selectedFilters[name].contains(e)) {
          itemsCount -= e.count;
          selectedFilters.containsKey(name) && selectedFilters[name].remove(e);
        } else {
          if (!selectedFilters.containsKey(name)) {
            selectedFilters[name] = [];
          }
          itemsCount += e.count;
          selectedFilters[name].add(e);
        }
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (selectedFilters.isEmpty ||
              selectedFilters.values
                      .where((element) => element.length > 0)
                      .length ==
                  0) {
            itemsCount = state.productFilterResultModel.totalcount;
          }

          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        'Filters',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.productFilterResultModel.diminfo.length,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemBuilder: (context, index) {
                      final item =
                          state.productFilterResultModel.diminfo[index];
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: StatefulBuilder(
                          builder: (context, smallSetState) {
                            return ExpansionTile(
                              title: Text(item.dimname),
                              backgroundColor: Color(0xffEFEFEF),
                              childrenPadding: EdgeInsets.only(bottom: 8),
                              children: <Widget>[
                                    Container(
                                      height: 48,
                                      padding: EdgeInsets.only(
                                        left: 12,
                                        right: 4,
                                      ),
                                      margin: EdgeInsets.symmetric(
                                        vertical: 4,
                                        horizontal: 16,
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
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          onChanged: (val) => smallSetState(
                                            () {
                                              queries[item.dimname] = val;
                                              print(val);
                                            },
                                          ),
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.search),
                                            border: InputBorder.none,
                                            hintText:
                                                'Search for ${item.dimname}',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 8),
                                            hintStyle: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ] +
                                  item.fieldvalues
                                      .where(
                                        (element) => element.fieldvalue
                                            .toLowerCase()
                                            .startsWith(
                                              queries[item.dimname]
                                                      ?.toLowerCase() ??
                                                  '',
                                            ),
                                      )
                                      .map(
                                        (e) => Container(
                                          key: Key(e.fieldvalue),
                                          margin: EdgeInsets.symmetric(
                                            vertical: 6,
                                            horizontal: 16,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x220000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: ListTile(
                                            key: Key(e.fieldvalue),
                                            leading: Checkbox(
                                              value: selectedFilters
                                                      .containsKey(
                                                          item.dimname) &&
                                                  selectedFilters[item.dimname]
                                                      .contains(e),
                                              onChanged: (val) =>
                                                  switchFilter(item.dimname, e),
                                            ),
                                            title: Text(e.fieldvalue),
                                            onTap: () =>
                                                switchFilter(item.dimname, e),
                                          ),
                                        ),
                                      )
                                      .toList(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: submitFilter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 52.0,
                      child: Center(
                        child: Text(
                          'VIEW $itemsCount ITEMS',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
