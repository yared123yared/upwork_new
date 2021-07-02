import 'package:complex/newentityfeatures/Models/offering_schedule_model.dart';
import 'package:complex/newentityfeatures/Models/lookups.dart';

import 'package:complex/newentityfeatures/commonrepo/lookup_repository.dart';

import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';

import 'package:flutter/cupertino.dart';

@Deprecated('this is no longer used')
class OfferingScheduleRepository {
  final LookupRepository lookup;

  OfferingScheduleRepository({@required this.lookup});

  Map<String, Map<String, List<OfferingsScheduleModel>>> _offeringsSchedule =
      {};

  Future<void> setOfferingsSchedule({@required String serviceID}) async {
    try {
      List<SessionTermModel> _sessionTermsList =
          await lookup.getSessionTermsList(serviceID: serviceID);
      _offeringsSchedule[serviceID] = {};
      for (SessionTermModel session in _sessionTermsList) {
        List<OfferingsScheduleModel> _tempList =
            await SessionTermGateway.getOfferingDocList(
                serviceID, session.termName);

        _offeringsSchedule[serviceID][session.termName] = _tempList;
        print(_offeringsSchedule);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<Map<String, List<OfferingsScheduleModel>>> getOfferingsSchedule(
      {@required String serviceID}) async {
    try {
      if (_offeringsSchedule[serviceID] == null ||
          _offeringsSchedule[serviceID].length == 0) {
        await setOfferingsSchedule(serviceID: serviceID);
      }
      return _offeringsSchedule[serviceID];
    } catch (e) {
      print(e);
    }
  }

  Future<void> addOfferingSchedule({
    @required String serviceID,
    @required String sessionID,
    @required OfferingsScheduleModel offeringsScheduleModel,
  }) async {
    try {
      await SessionTermGateway.addOfferingSchedule(
        serviceID: serviceID,
        sessionID: sessionID,
        offeringsScheduleModel: offeringsScheduleModel,
      );
      await setOfferingsSchedule(serviceID: serviceID);
    } catch (e) {
      print(e);
    }
  }
}
