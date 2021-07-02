import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/product/product_bloc.dart';
import 'service_group_item.dart';

class ServiceGroupHorizontalList extends StatelessWidget {
  const ServiceGroupHorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 192,
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.hasError) {
            return EcommerceErrorWidget(
              errorText: state.error,
            );
          }

          if (state.loading) return Center(child: CircularProgressIndicator());
          state.serviceGroups.sort(
            (a, b) => a.ordernum.compareTo(b.ordernum),
          );

          return ListView.builder(
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.horizontal,
            itemCount: state.serviceGroups.length,
            itemBuilder: (context, index) {
              ServiceGroup group = state.serviceGroups[index];
              return ServiceGroupItem(
                key: Key(group.sectionname),
                serviceGroup: group,
                selected: state.selected,
                index: index,
              );
            },
          );
        },
      ),
    );
  }
}
