import 'package:complex/common/helputil.dart';
import 'package:complex/data/repositories/user_repository.dart';
import 'package:complex/newentityfeatures/Models/CommonGenericModel.dart';
import 'package:complex/newentityfeatures/gateway/entry_log_gateway.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:complex/newentityfeatures/Models/entry_logs_model.dart';
import 'package:complex/newentityfeatures/commonrepo/complex_repository.dart';

// import 'package:complex/newentityfeatures/Models/user_model.dart';
import 'package:complex/data/models/response/user_response/user_model.dart';
// import 'package:complex/newentityfeatures/complex/repository/repo/user_repository.dart';

import 'package:get/get.dart';

class EntryLogsRepositoryReturnData {
  List<EntryLogModel> itemlist;
  EntryLogModel item;
  String id;
  int errortype;
  String error;
  List<String> searchparavalues;
  EntryLogsRepositoryReturnData() {
    errortype = 2;
    error = "Not Implemented";
  }
}

class EntryLogsRepository {
  UserRepository _userRepository = HelpUtil.getUserRepository();
  UserModel get _user => _userRepository.getUser();

  Future<EntryLogsRepositoryReturnData> getAllEntryLogss(
      String entitytype, String entityid) async {
    EntryLogsRepositoryReturnData myreturn = EntryLogsRepositoryReturnData();

    //Need to restrict it
    myreturn.itemlist = await EntryLogGateway.getEntryLogListGateway(
      entitytype: entitytype,
      entityid: entityid,
    );
    // myreturn.itemlist = await _complexRepository.getQrModel(
    //   entitytype: entitytype,
    //   entityid: entityid,
    //   qrcode: qrcode,
    // );
    myreturn.errortype=-1;

    return myreturn;
  }

  Future<GenericLookUpDataUsedForRegistration> getListFormPreLoadData(
      String entitytype, String entityid) async {
    GenericLookUpDataUsedForRegistration grerror =
        new GenericLookUpDataUsedForRegistration();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      GenericLookUpDataUsedForRegistration gr =
          new GenericLookUpDataUsedForRegistration();
      gr.errortype = -1;
      return gr;
    } catch (ex) {
      grerror.errortype = -2;
      print(ex.toString());
      grerror.error = "UNknown exception has occured";
    }
    return grerror;
  }

  Future<EntryLogsEntryData> getItemFormNewEntryData(
      String entitytype, String entityid) async {
    EntryLogsEntryData grerror = EntryLogsEntryData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      bool haveAccess = true;
      String userId = _user.userID;
      EntryLogsEntryData gr = EntryLogsEntryData();

      gr.userId = userId;
      gr.haveAccess = haveAccess;
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<EntryLogsRepositoryReturnData> getEntryLogsWithOfferingSearch(
      String entitytype,
      String entityid,
      String sessionterm,
      String offeringgroup) async {
    EntryLogsRepositoryReturnData grerror = EntryLogsRepositoryReturnData();
    grerror.errortype = -2;
    grerror.error = "UNknown exception has occured";

    try {
      //Please put your code here
      EntryLogsRepositoryReturnData gr = EntryLogsRepositoryReturnData();
      gr.errortype = -1;
      return gr;
    } catch (ex) {}
    return grerror;
  }

  Future<EntryLogsRepositoryReturnData> createEntryLogs(
      EntryLogModel item, String entitytype, String entityid) async {
    EntryLogsRepositoryReturnData myreturn = EntryLogsRepositoryReturnData();
    myreturn.errortype = -1;
    await EntryLogGateway.addNewEntryLog(
      entitytype: entitytype,
      entityid: entityid,
      entryLog: item,
    );
    return myreturn;
  }

  Future<EntryLogsRepositoryReturnData> updateEntryLogs(
      EntryLogModel item, String entitytype, String entityid) async {
    EntryLogsRepositoryReturnData myreturn = EntryLogsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<EntryLogsRepositoryReturnData> updateEntryLogsWithDiff(
      EntryLogModel newitem,
      EntryLogModel olditem,
      String entitytype,
      String entityid) async {
    return null;
  }

  Future<EntryLogsRepositoryReturnData> deleteEntryLogsWithData(
      EntryLogModel item, String entitytype, String entityid) async {
    EntryLogsRepositoryReturnData myreturn = EntryLogsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }

  Future<EntryLogsRepositoryReturnData> getInitialData(
      String entitytype, String entityid) async {
    EntryLogsRepositoryReturnData myreturn = EntryLogsRepositoryReturnData();
    myreturn.errortype = -1;
    return myreturn;
  }
}

class EntryLogsEntryData {
  String error;
  int errortype;

  String userId;
  bool haveAccess;
}

      // Future<bool> _haveAccess() async {
      //todo do have access method
      // return false;
      // if (event.model != null) {
      //   String _unitID = event.model.unitaddress;
      //
      //   return await _complexRepository.units
      //       .getUnitList(complex: _complexModel, user: _user)
      //       .then(
      //         (units) => units
      //             .map(
      //               (unit) => unit.unitID,
      //             )
      //             .toList()
      //             .contains(_unitID),
      //       );
      // } else {
      //   return false;
      // }
      // }