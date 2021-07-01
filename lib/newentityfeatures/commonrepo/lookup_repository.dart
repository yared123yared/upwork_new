import 'package:complex/newentityfeatures/gateway/lookups_gateway.dart';
import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';

import 'package:complex/newentityfeatures/Models/lookups.dart';
import 'package:flutter/cupertino.dart';

class LookupRepository {
  Map<String, List<SessionTermModel>> _sessionTermsList;
  Map<String, List<String>> _offeringsList;
  Map<String, List<PaymentPeriodInfo>> _paymentPeriodInfoList;
  Map<String, List<String>> _feeItemsList;
  Map<String, List<RoomInfo>> _roomList;
  Map<String, List<ExamTermInfo>> _examtermList = {};
  Map<String, List<String>> _gradeList;

  Future<List<String>> getGradesList({@required String serviceID}) async {
    try {
      _gradeList = _gradeList ?? {};
      if (_gradeList[serviceID] == null || _gradeList[serviceID].length == 0) {
        List<String> _list = await LookupGateway.getGradeList(serviceID);
        _gradeList[serviceID] = _list;
      }
      return _gradeList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> setGradesList({@required String serviceID}) async {
    try {
      List<String> _list = await LookupGateway.getGradeList(serviceID);
      _gradeList[serviceID] = _list;
    } catch (e) {
      print(e);
    }
  }

  Future<void> addGrade({
    @required String serviceID,
    @required String grade,
  }) async {
    try {
      await LookupGateway.addGrade(
        serviceID: serviceID,
        gradeName: grade,
      );

      await setGradesList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addFeeItem({
    @required String serviceID,
    @required String feeItem,
  }) async {
    try {
      await LookupGateway.addFeeItemList(
        serviceID: serviceID,
        feeItem: feeItem
      );


    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteFeeItem({
    @required String serviceID,
    @required String feeItem,
  }) async {
    try {
      await LookupGateway.deleteFeeItemList(
        serviceID: serviceID,
        feeItem: feeItem,
      );
      //await setPaymentPeriodList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteOffering({
    @required String serviceID,
    @required String subject,
  }) async {
    try {
      await LookupGateway.deleteOfferingList(
        serviceID: serviceID,
        subject: subject,
      );
      //await setPaymentPeriodList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }



  //sessionTerm

  Future<void> setSessionTermsList({@required String serviceID}) async {
    try {
      List<SessionTermModel> _list =
          await SessionTermGateway.getSessionTerms(serviceID: serviceID);
      _sessionTermsList[serviceID] = _list;
    } catch (e) {
      print(e);
    }
  }

  Future<void> addSessionTerm(
      {@required String serviceID,
      @required SessionTermModel sessionTerm}) async {
    try {
      await SessionTermGateway.addSessionTerm(
          serviceID: serviceID, sessionTerm: sessionTerm);
      await setSessionTermsList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteSessionTerm(
      {@required String serviceID,
      @required SessionTermModel sessionTerm}) async {
    try {
      await SessionTermGateway.deleteSessionTerm(
          serviceID: serviceID, sessionTerm: sessionTerm);
      await setSessionTermsList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<SessionTermModel>> getSessionTermsList(
      {@required String serviceID}) async {
    try {
      _sessionTermsList = _sessionTermsList ?? {};
      if (_sessionTermsList[serviceID] == null ||
          _sessionTermsList[serviceID].length == 0) {
        await setSessionTermsList(serviceID: serviceID);
      }
      return _sessionTermsList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<List<String>> getSessionStringList({
    @required String serviceID,
  }) async {
    try {
      return await getSessionTermsList(serviceID: serviceID)
          .then((items) => items.map((e) => e.termName).toList());
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addOfferingSubject({
    @required String serviceID,
    @required String subject,
  }) async {
    try {
      await LookupGateway.addOfferingList(
        serviceID: serviceID,
        subject: subject,
      );

      //to update the local list
      await setOfferingsList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> setOfferingsList({@required String serviceID}) async {
    try {
      _offeringsList[serviceID] =
          await LookupGateway.getOfferingsList(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<String>> getOfferingList({@required String serviceID}) async {
    try {
      _offeringsList = _offeringsList ?? {};
      if (_offeringsList[serviceID] == null ||
          _offeringsList[serviceID].length == 0) {
        await setOfferingsList(serviceID: serviceID);
      }
      return _offeringsList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addRoomInfo({
    @required String serviceID,
    @required RoomInfo roomInfo,
  }) async {
    try {
      await LookupGateway.addRoomInfo(
        serviceID: serviceID,
        roomInfo: roomInfo,
      );
      await setRoomList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> setExamTermInfoList({@required String serviceID}) async {
    try {
      List<ExamTermInfo> _list = await LookupGateway.getExamTermInfo(serviceID);
      _examtermList[serviceID] = _list;
    } catch (e) {
      print(e);
    }
  }

  Future<List<ExamTermInfo>> getExamTermsList(
      {@required String serviceID}) async {
    try {
      _examtermList = _examtermList ?? {};
      if (_examtermList[serviceID] == null ||
          _examtermList[serviceID].length == 0) {
        await setExamTermInfoList(serviceID: serviceID);
      }
      return _examtermList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addExamTermInfo({
    @required String serviceID,
    @required ExamTermInfo examTermInfo,
  }) async {
    try {
      await LookupGateway.addExamTermInfo(
        serviceID: serviceID,
        examTermInfo: examTermInfo,
      );
      await setExamTermInfoList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteExamTermInfo(
      {@required String serviceID, @required ExamTermInfo sessionTerm}) async {
    try {
      await LookupGateway.deleteExamTermInfo(
          serviceID: serviceID, examTerm: sessionTerm);
      await setExamTermInfoList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deleteRoomInfo(
      {@required String serviceID, @required RoomInfo roomInfo}) async {
    try {
      await LookupGateway.deleteRoomInfo(
          serviceID: serviceID, roomInfo: roomInfo);
      await setExamTermInfoList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> addClassPeriod({
    @required String serviceID,
    List<ClassPeriodInfo> list,
  }) async {
    try {
      await LookupGateway.setClassPeriodInfo(
        serviceID: serviceID,
        classPeriodInfoList: list,
      );
    } catch (e) {
      print(e);
    }
  }

  //payment period
  Future<void> setPaymentPeriodList({@required String serviceID}) async {
    try {
      _paymentPeriodInfoList[serviceID] =
          await LookupGateway.getPaymentPeriodInfo(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<PaymentPeriodInfo>> getPaymentPeriodInfoList(
      {@required String serviceID}) async {
    try {
      _paymentPeriodInfoList = _paymentPeriodInfoList ?? {};
      if (_paymentPeriodInfoList[serviceID] == null) {
        await setPaymentPeriodList(serviceID: serviceID);
      }
      return _paymentPeriodInfoList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }

  Future<void> addPaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
  }) async {
    try {
      await LookupGateway.addPaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: paymentPeriodInfo,
      );
      await setPaymentPeriodList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> deletePaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
  }) async {
    try {
      await LookupGateway.deletePaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: paymentPeriodInfo,
      );
      await setPaymentPeriodList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> updatePaymentPeriodInfo({
    @required String serviceID,
    @required PaymentPeriodInfo paymentPeriodInfo,
    @required PaymentPeriodInfo oldPaymentPeriodInfo,
  }) async {
    try {
      await LookupGateway.deletePaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: oldPaymentPeriodInfo,
      );
      await LookupGateway.addPaymentPeriodInfo(
        serviceID: serviceID,
        paymentPeriodInfo: paymentPeriodInfo,
      );
      await setPaymentPeriodList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

//fee item
  Future<void> updateFeeItem(
      {@required String serviceID, @required String feeItem}) async {
    try {
      await LookupGateway.addFeeItemList(
          serviceID: serviceID, feeItem: feeItem);
      await setFeeItemsList(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<void> setFeeItemsList({@required String serviceID}) async {
    try {
      _feeItemsList = _feeItemsList ?? {};
      _feeItemsList[serviceID] = await LookupGateway.getFeeItemList(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<String>> getFeeItemsList({@required String serviceID}) async {
    try {
      if (_feeItemsList == null || _feeItemsList.isEmpty) {
        _feeItemsList[serviceID] =
        await LookupGateway.getFeeItemList(serviceID);
        return _feeItemsList[serviceID];
      }
    } catch (e) {
      print(e);
      return e;
    }
  }

  // room
  Future<void> setRoomList({@required String serviceID}) async {
    try {
      _roomList = _roomList ?? {};
      _roomList[serviceID] = await LookupGateway.getRoomsInfo(serviceID);
    } catch (e) {
      print(e);
    }
  }

  Future<List<RoomInfo>> getRoomInfoList({@required String serviceID}) async {
    try {
      if (_roomList == null || _roomList.isEmpty)
        await setRoomList(serviceID: serviceID);
      return _roomList[serviceID];
    } catch (e) {
      print(e);
      return e;
    }
  }
}
