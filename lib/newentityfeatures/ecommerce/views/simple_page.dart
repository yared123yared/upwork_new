import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../newentityfeatures/ecommerce/views/main.dart';
import 'package:complex/newentityfeatures/ecommerce/cubit/ecommerce_cubit.dart';

import 'package:complex/newentityfeatures/ecommerce/widgets/services/service_types_grid.dart';

class ECommercePage extends StatefulWidget {
  @override
  _ECommercePageState createState() => _ECommercePageState();
}

class _ECommercePageState extends State<ECommercePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EcommerceCubit, EcommerceState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async => false,
          // child: ServiceTypes(),
          child: ECommerceScreen(),
        );
      },
    );
  }
}
