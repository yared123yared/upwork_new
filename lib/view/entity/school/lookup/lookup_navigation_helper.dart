import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/domain/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/feeitems/presentation/feeItem_listview.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/offerings/presentation/offerings_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LookupNavigationHelper {
  LookupNavigationHelper._();
  static void toListPage(
      {@required LookupType type,
      @required BuildContext context,
      @required String entityType,
      @required String entityID}) {
    // Looku
    // Get.to(page);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => type.map(
            feeItem: (feeItem) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            offering: (offering) => OfferingsFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            grade: (grade) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            rooms: (rooms) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            examTerm: (examTerm) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            sessionTerm: (sessionTerm) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            classPeriod: (classPeriod) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            paymentPeriod: (paymentPeriod) => FeeItemFormList(
                  entityid: entityID,
                  entitytype: entityType,
                ))));

    BlocProvider.of<LookupBloc>(context).add(GetListData(
        entityid: entityID, entitytype: entityType, lookupType: type));
  }
}
