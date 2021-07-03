import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/feeitems/presentation/feeItem_listview.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/offerings/presentation/offerings_listview.dart';
import 'package:complex/view/entity/school/lookup/examTerm_list_page.dart';
import 'package:complex/view/entity/school/lookup/fee_item_list_page.dart';
import 'package:complex/view/entity/school/lookup/grade_list_page.dart';
import 'package:complex/view/entity/school/lookup/offering_list_page.dart';
import 'package:complex/view/entity/school/lookup/room_list_page.dart';
import 'package:complex/view/entity/school/lookup/sessionTerm_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class LookupNavigationHelper {
  LookupNavigationHelper._();
  static void toListPage(
      {@required LookupType type,
      @required BuildContext context,
      @required String entityType,
      @required String entityID}) async {
    // Looku
    // Get.to(page);
    Logger().i(type.toString());
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => type.map(
            feeItem: (feeItem) => FeeItemListPage(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            offering: (offering) => OfferingListPage(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            grade: (grade) => GradeListPage(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            rooms: (rooms) => RoomsListPage(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            examTerm: (examTerm) => ExamTermListPage(
                  entityid: entityID,
                  entitytype: entityType,
                ),
            sessionTerm: (sessionTerm) => SessionTermListPage(
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

    await Future.delayed(Duration(milliseconds: 100));

    BlocProvider.of<LookupBloc>(context).add(GetListData(
        entityid: entityID, entitytype: entityType, lookupType: type));
  }
}
