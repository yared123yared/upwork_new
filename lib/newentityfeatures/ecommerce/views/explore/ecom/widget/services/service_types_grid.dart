import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animate_do/animate_do.dart';

import 'service_types_grid_item.dart';

class ServiceTypesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.hasError) {
          return EcommerceErrorWidget(
            errorText: state.error,
          );
        }
        if (state.loading)
          return Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(),
            ),
          );

        state.serviceGroups[state.selected].servicetypelist.sort(
          (a, b) => a.ordernum.compareTo(b.ordernum),
        );

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              FadeIn(
                duration: Duration(milliseconds: 400),
                key: Key(state.serviceGroups[state.selected].sectionname),
                child: Container(
                  margin: EdgeInsets.only(bottom: 4, top: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        state.serviceGroups[state.selected].sectionname,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              state.serviceGroups[state.selected].displaylist == 'double'
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state
                          .serviceGroups[state.selected].servicetypelist.length,
                      itemBuilder: (context, index) {
                        final serviceType = state.serviceGroups[state.selected]
                            .servicetypelist[index];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Text(
                                serviceType.servicetype,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            GridView(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: .75,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 8,
                              ),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              children: serviceType.childservicetype
                                  .map(
                                    (e) => ServiceTypesGridItem(
                                      serviceType: e,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        );
                      },
                    )
                  : GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: .75,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 8,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children:
                          state.serviceGroups[state.selected].servicetypelist
                              .map(
                                (e) => ServiceTypesGridItem(
                                  serviceType: e,
                                ),
                              )
                              .toList(),
                    ),
            ],
          ),
        );
      },
    );
  }
}
