import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/newentityfeatures/Models/offering_schedule_model.dart';



import 'package:complex/newentityfeatures/gateway/session_term_gateway.dart';

import 'package:flutter/cupertino.dart';

@Deprecated('this is no longer used')
class OfferingScheduleRepository {


  OfferingScheduleRepository();

  Map<String, Map<String, List<OfferingsScheduleModel>>> _offeringsSchedule =
      {};

  Future<void> setOfferingsSchedule({@required String serviceID}) async {
    try {


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
