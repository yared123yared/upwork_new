import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';

mixin EntryLogGateway {
  static Future<List<EntryLogModel>> getEntryLogListGateway({
    @required String entitytype,
    @required String entityid,
  }) async {
    return await FirebaseFirestore.instance
        .collection("$entitytype/$entityid/ENTRYLOGS")
        .get()
        .then((x) {
      return EntryLogModel.listFromJson(
          x.docs.map((d) => d.data).toList(), x.docs.map((d) => d.id).toList());
    });
  }

  static Future addNewEntryLog(
      {@required EntryLogModel entryLog,
      @required String entitytype,
      String entityid}) async {
    try {
      return await FirebaseFirestore.instance
          .collection("${entitytype}/${entityid}/ENTRYLOGS")
          .doc()
          .set(entryLog.toJson());
    } catch (e) {
      print(e);
    }
  }
}
