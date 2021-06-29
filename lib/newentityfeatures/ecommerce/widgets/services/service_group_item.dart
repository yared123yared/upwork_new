import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animate_do/animate_do.dart';

import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:get/get.dart';

class ServiceGroupItem extends StatelessWidget {
  final ServiceGroup serviceGroup;
  final int index;
  final int selected;
  const ServiceGroupItem({
    Key key,
    @required this.serviceGroup,
    this.selected,
    this.index,
  }) : super(key: key);

  void selectProduct(BuildContext context) {
    // if (serviceGroup.type != 'shop') {
    //   Get.context.read<ProductBloc>().add(ServiceSelected(null));
    //   final type = serviceGroup.type;
    //   Navigator.of(context).push(
    //     MaterialPageRoute(
    //       builder: (_) => BlocProvider(
    //         create: (_) => CartBloc(),
    //         child: type == 'vehicle'
    //             ? VehiclesListView()
    //             : type == 'realestate'
    //                 ? RealEstatesListView()
    //                 : type == 'job'
    //                     ? JobsListView()
    //                     : type == 'pet'
    //                         ? PetsGridView()
    //                         : ProductsListView(),
    //       ),
    //     ),
    //   );
    //   return;
    // }
    if (selected != index)
      Get.context.read<ProductBloc>().add(ServiceGroupSelected(index));
  }

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: Duration(milliseconds: 200),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            if (selected == index)
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 8,
              ),
          ],
        ),
        child: GestureDetector(
          onTap: () => selectProduct(context),
          child: ClipRRect(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: 120.0, // + (selected == index ? 4 : 0),
              height: 144.0, // + (selected == index ? 4 : 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: selected == index ? 4 : 0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(serviceGroup.icon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // width: 120,
                        // height: 24.0 - (selected == index ? 4 : 0),
                        color: Theme.of(context).primaryColor,
                        child: Center(
                          child: Text(
                            serviceGroup.sectionname,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
