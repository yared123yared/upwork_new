import 'package:cloud_firestore/cloud_firestore.dart';
import 'check_in_model.dart';
import 'home_visit_model.dart';
import 'reg_apt_model.dart';

class SlotConfigurationModel {
  String slotConfigurationId;
  String slotype; //perStaff or PEREMPLOYEE

  RegAptModel regApt;
  CheckInModel checkIn;
  HomeVisitModel homeVisit;
  DateTime unavailabilitystartdate;
  DateTime unavailablityenddate;
  Map<int,List<String>> checkinperiods;
  Map<int,List<String>> homevisitslots;
  Map<int,List<String>> regularvisitslots;

  SlotConfigurationModel({
    this.slotConfigurationId,
    this.regApt,
    this.checkIn,
    this.homeVisit,
  });

  factory SlotConfigurationModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();
    SlotConfigurationModel sv = SlotConfigurationModel(
      slotConfigurationId: doc.id,
      checkIn: CheckInModel.fromJson(data['checkIn'] as Map<String, dynamic>),
      homeVisit:
          HomeVisitModel.fromJson(data['homeVisit'] as Map<String, dynamic>),
      regApt: RegAptModel.fromJson(data['regApt'] as Map<String, dynamic>),



    );
    if (sv.checkIn !=null)
      sv.checkinperiods = sv.checkIn.GetTimeSlotInfoForWeek();
    if (sv.homeVisit !=null)
      sv.homevisitslots = sv.homeVisit.GetTimeSlotInfoForWeek();
    if (sv.regApt !=null)
      sv.regularvisitslots = sv.regApt.GetTimeSlotInfoForWeek();


  return sv;
  }

  Map<String, dynamic> toMap() {
    return {
      'regApt': {
        'monStart': regApt.monStart,
        'monEnd': regApt.monEnd,
        'tueStart': regApt.tueStart,
        'tueEnd': regApt.tueEnd,
        'wedStart': regApt.wedStart,
        'wedEnd': regApt.wedEnd,
        'thuStart': regApt.thuStart,
        'thuEnd': regApt.thuEnd,
        'friStart': regApt.friStart,
        'friEnd': regApt.friEnd,
        'satStart': regApt.satStart,
        'satEnd': regApt.satEnd,
        'sunStart': regApt.sunStart,
        'sunEnd': regApt.sunEnd,
        'monNum': regApt.monNum,
        'tueNum': regApt.tueNum,
        'wedNum': regApt.wedNum,
        'thuNum': regApt.thuNum,
        'friNum': regApt.friNum,
        'satNum': regApt.satNum,
        'sunNum': regApt.sunNum,
        'slotDuration': regApt.slotDuration,
      },
      'checkIn': {
        'slotDuration': checkIn.slotDuration,
        'queueRunningNumber': checkIn.queueRunningNumber,
        'periods': checkIn.periods,
      },
      'homeVisit': {
        'monStart': homeVisit.monStart,
        'monEnd': homeVisit.monEnd,
        'tueStart': homeVisit.tueStart,
        'tueEnd': homeVisit.tueEnd,
        'wedStart': homeVisit.wedStart,
        'wedEnd': homeVisit.wedEnd,
        'thuStart': homeVisit.thuStart,
        'thuEnd': homeVisit.thuEnd,
        'friStart': homeVisit.friStart,
        'friEnd': homeVisit.friEnd,
        'satStart': homeVisit.satStart,
        'satEnd': homeVisit.satEnd,
        'sunStart': homeVisit.sunStart,
        'sunEnd': homeVisit.sunEnd,
        'monNum': homeVisit.monNum,
        'tueNum': homeVisit.tueNum,
        'wedNum': homeVisit.wedNum,
        'thuNum': homeVisit.thuNum,
        'friNum': homeVisit.friNum,
        'satNum': homeVisit.satNum,
        'sunNum': homeVisit.sunNum,
        'slotDuration': homeVisit.slotDuration,
      },
    };
  }
}
