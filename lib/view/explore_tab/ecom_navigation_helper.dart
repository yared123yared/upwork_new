import 'package:complex/application/explore/ecom/product_list/product_list_bloc.dart';
import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/domain/explore/ecom/product/limited_product/limited_product_data.dart';
import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/feeitems/presentation/feeItem_listview.dart';
import 'package:complex/view/entity/school/lookup/fee_item_list_page.dart';
import 'package:complex/view/entity/school/lookup/grade_list_page.dart';
import 'package:complex/view/entity/school/lookup/offering_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class EcomNavigationHelper {
  EcomNavigationHelper._();
  static void toListPage({
    @required LimitedDataType type,
    @required BuildContext context,
  }) async {
    // Looku
    // Get.to(page);
    Logger().i(type.toString());
    // Navigator.of(context).push(MaterialPageRoute(
    //     builder: (context) => type.map(
    //         feeItem: (feeItem) => FeeItemListPage(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         offering: (offering) => OfferingListPage(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         grade: (grade) => GradeListPage(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         rooms: (rooms) => FeeItemFormList(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         examTerm: (examTerm) => FeeItemFormList(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         sessionTerm: (sessionTerm) => FeeItemFormList(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         classPeriod: (classPeriod) => FeeItemFormList(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ),
    //         paymentPeriod: (paymentPeriod) => FeeItemFormList(
    //               entityid: entityID,
    //               entitytype: entityType,
    //             ))));

    await Future.delayed(Duration(milliseconds: 100));

    BlocProvider.of<ProductListBloc>(context)
        .add(ProductListEvent.get(type: type));
  }
}
