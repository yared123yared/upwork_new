//import 'package:complex/features/channels/bloc/bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/jobs_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/pets_grid_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/products_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/realestates_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/products/vehicles_list_view.dart';
import 'package:complex/newentityfeatures/ecommerce/views/services/services_list.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../views/filters/service_filter.dart';

class ServiceTypesGridItem extends StatelessWidget {
  final ServiceType serviceType;
  const ServiceTypesGridItem({Key key, @required this.serviceType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Get.context.read<ProductBloc>().state;
    final type = state.serviceGroups[state.selected].type;

    return FadeInDown(
      key: Key(serviceType.servicetype),
      duration: Duration(milliseconds: 400),
      child: InkWell(
        onTap: () {
          final _bloc = Get.context.read<ProductBloc>();
          if (type != 'shop') {
            _bloc.add(
              ServiceSelected(
                null,
              ),
            );
          }
          _bloc.add(
            ServiceTypeSelected(
              serviceType,
            ),
          );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => serviceType.filterdata != null
                  ? ServiceFilterView(filterData: serviceType.filterdata)
                  : type == 'shop'
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
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(serviceType.icon),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: Text(
                  serviceType.servicetype,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
