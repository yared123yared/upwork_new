import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/jobs_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/realestates_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/vehicles_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/pets_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../products/products_list_view.dart';

enum CategoriesView {
  LIST,
  GRID,
}

class ServiceCategoriesView extends StatefulWidget {
  const ServiceCategoriesView({Key key}) : super(key: key);

  @override
  _ServiceCategoriesViewState createState() => _ServiceCategoriesViewState();
}

class _ServiceCategoriesViewState extends State<ServiceCategoriesView> {
  CategoriesView currentView = CategoriesView.GRID;
  List<List<Categoryinfo>> currentGridCategories;
  List<String> currentCategory = [];

  onSelectCategory(Categoryinfo category) async {
    final type = context
        .read<ProductBloc>()
        .state
        .productFilterResultModel
        .topleveltiletype;
    Navigator.of(context).push(
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
    );
  }

  switchView() {
    setState(() {
      currentView = currentView == CategoriesView.LIST
          ? CategoriesView.GRID
          : CategoriesView.LIST;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (currentGridCategories == null)
              currentGridCategories = [state.productFilterResultModel.catinfo];
            String title = 'Categories';
            if (currentView == CategoriesView.GRID &&
                currentCategory.length > 0) {
              title = '';
              for (String cat in currentCategory) title += cat + ' / ';
              title = title.substring(0, title.length - 3);
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                if (currentGridCategories.length > 1) {
                                  setState(() {
                                    currentCategory.removeLast();
                                    currentGridCategories.removeLast();
                                  });
                                } else
                                  Navigator.of(context).pop();
                              },
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Text(
                                  title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: switchView,
                        icon: Icon(
                          currentView == CategoriesView.GRID
                              ? Icons.list
                              : Icons.grid_view,
                        ),
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
                if (currentView == CategoriesView.GRID)
                  Expanded(
                    child: GridView.builder(
                      itemCount: currentGridCategories.last.length,
                      padding: EdgeInsets.all(12),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisExtent:
                            MediaQuery.of(context).size.width / 4 + 24,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        final category = currentGridCategories.last[index];

                        return InkWell(
                          onTap: () => (category.childcategory?.length ?? 0) > 0
                              ? setState(
                                  () {
                                    currentCategory.add(category.category);
                                    currentGridCategories
                                        .add(category.childcategory);
                                  },
                                )
                              : onSelectCategory(category),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(category.imagepath),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Text(
                                category.category,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.productFilterResultModel.catinfo.length,
                      itemBuilder: (context, index) {
                        final category =
                            state.productFilterResultModel.catinfo[index];
                        if ((category.childcategory?.length ?? 0) == 0)
                          return ListTile(
                            onTap: () => onSelectCategory(category),
                            title: Text(category.category),
                          );

                        return ExpansionTile(
                          title: Text(category.category),
                          children: category.childcategory
                              .map(
                                (subCategory) =>
                                    (subCategory.childcategory?.length ?? 0) ==
                                            0
                                        ? ListTile(
                                            onTap: () =>
                                                onSelectCategory(subCategory),
                                            title: Text(subCategory.category),
                                          )
                                        : ExpansionTile(
                                            title: Text(subCategory.category),
                                            children: subCategory.childcategory
                                                .map(
                                                  (e) => ListTile(
                                                    onTap: () =>
                                                        onSelectCategory(e),
                                                    title: Text(e.category),
                                                  ),
                                                )
                                                .toList(),
                                          ),
                              )
                              .toList(),
                        );
                      },
                    ),
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}
