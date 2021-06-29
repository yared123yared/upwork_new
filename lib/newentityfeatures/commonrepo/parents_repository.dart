import 'package:complex/newentityfeatures/gateway/offering_vr_schedule_gateway.dart';
import 'package:flutter/cupertino.dart';
import 'package:complex/common/helputil.dart';

class ParentsRepository {
  Future<Map<String, Map<String, dynamic>>> getEventForIDCardGaurdian(
          {@required String virtualroomname,
          @required String sessionterm,
          @required DateTime startdate,
          @required DateTime enddate,
          @required String entityid}) async =>
      await OfferingsVrManagementGateway.getEventForIDCardGaurdian(
          virtualroomname: virtualroomname,
          sessionterm: sessionterm,
          startdate: HelpUtil.toTimeStamp(dateTime: startdate),
          enddate: HelpUtil.toTimeStamp(dateTime: enddate),
          entitytype: "SERVICEPROVIDERINFO",
          entityid: entityid);

  Future<Map<String, Map<String, dynamic>>> getAttendenceForIDCardGaurdian(
          {@required String idCardNumber,
          @required String sessionterm,
          @required DateTime startdate,
          @required DateTime enddate,
          @required String entityid}) async =>
      await OfferingsVrManagementGateway.getAttendenceForIDCardGaurdian(
          idcardnum: idCardNumber,
          sessionterm: sessionterm,
          startdate: HelpUtil.toTimeStamp(dateTime: startdate),
          enddate: HelpUtil.toTimeStamp(dateTime: enddate),
          entitytype: "SERVICEPROVIDERINFO",
          entityid: entityid);

  Future<Map<String, Map<String, dynamic>>> getProgressForGaurdian({
    @required String idCardNumber,
    @required String sessionterm,
    @required String entityid,
  }) async =>
      await OfferingsVrManagementGateway.getProgressForGaurdian(
        idcardnum: idCardNumber,
        sessionterm: sessionterm,
        entitytype: "SERVICEPROVIDERINFO",
        entityid: entityid,
      );
}
