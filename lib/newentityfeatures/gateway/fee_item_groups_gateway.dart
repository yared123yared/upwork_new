import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:meta/meta.dart';

import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';

class FeeItemGroupsGateway {
  static Future<List<FeeItemGroupsModel>> getFeeItemGroupsList({
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FEEITEMGRPS")
          .get()
          .then((x) {
        return FeeItemGroupsModel.listFromJson(
          x.docs.map((d) => d.data).toList(),
        );
      });

  }

  // ignore: missing_return
  static Future<FeeItemGroupsModel> getfeeItemGPRS({
    @required String docId,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .doc(
            "SERVICEPROVIDERINFO/$serviceID/FEEITEMGPRS/$docId",
          )
          .get()
          .then((x) {
        print(x.data);
        return FeeItemGroupsModel.fromJson(x.data());
      });

  }

  static Future<void> removeFeeItemGPRS({
    @required FeeItemGroupsModel feeItemGPRS,
    @required String docId,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .doc("SERVICEPROVIDERINFO/$serviceID/FEEITEMGPRS/$docId")
          .update({
        "data": FieldValue.arrayRemove([feeItemGPRS.toJson()])
      });

  }

  static Future addNewFeeItemGPRS({
    @required FeeItemGroupsModel feeItemGPRS,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection("SERVICEPROVIDERINFO/$serviceID/FEEITEMGRPS")
          .doc(feeItemGPRS.scheduleName)
          .set(feeItemGPRS.toJson());

  }

  static Future updateFeeItemGPRS({
    @required FeeItemGroupsModel feeItemGPRS,
    @required String serviceID,
  }) async {

      return await FirebaseFirestore.instance
          .collection(
              "SERVICEPROVIDERINFO/${serviceID}/FEEITEMGPRS")
          .doc(feeItemGPRS.scheduleName)
          .update(feeItemGPRS.toJson());

  }
}
