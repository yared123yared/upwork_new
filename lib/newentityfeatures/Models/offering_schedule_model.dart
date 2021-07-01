import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:complex/newentityfeatures/Models/registered_id_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';

@Deprecated('this is no longer used use [OfferingWeeklySchedule instead]')
class OfferingsScheduleModel {
  String classPeriodName;
  List<String> daysOfWeek;
  String offeringName;
  String periodType;
  String primaryMemberId;
  String roomName;
  SchoolOwner primaryOwner;
  List<SchoolOwner> secondaryOwner;
  List<RegisteredIdModel> listOfRegisteredId;
  String channelId;
  String sessionTermName;
  num version;
  String offeringScheduleID;
  String virtualRoomName;
  String grade;

  OfferingsScheduleModel(
      {this.primaryMemberId,
      this.daysOfWeek,
      this.version,
      this.roomName,
      this.primaryOwner,
      this.sessionTermName,
      this.classPeriodName,
      this.offeringName,
      this.channelId,
      this.periodType,
      this.listOfRegisteredId,
      this.virtualRoomName,
      this.grade});

  OfferingsScheduleModel copyWith(
      {num classPeriodName,
      List<String> daysOfWeek,
      String offeringName,
      String periodType,
      String primaryMemberId,
      String roomName,
      List<SchoolOwner> primaryOwner,
      Timestamp serverSideTimestamp,
      String sessionTermName,
      String channelId,
      List<RegisteredIdModel> listOfRegisteredId,
      num version,
      String virtualRoomName,
      String grade}) {
    return OfferingsScheduleModel(
        primaryMemberId: primaryMemberId ?? this.primaryMemberId,
        daysOfWeek: daysOfWeek ?? this.daysOfWeek,
        classPeriodName: classPeriodName ?? this.classPeriodName,
        offeringName: offeringName ?? this.offeringName,
        periodType: periodType ?? this.periodType,
        roomName: roomName ?? this.roomName,
        sessionTermName: sessionTermName ?? this.sessionTermName,
        version: version ?? this.version,
        primaryOwner: primaryOwner ?? this.primaryOwner,
        channelId: channelId ?? this.channelId,
        listOfRegisteredId: listOfRegisteredId ?? this.listOfRegisteredId,
        virtualRoomName: virtualRoomName ?? this.virtualRoomName,
        grade: grade ?? this.grade);
  }

  OfferingsScheduleModel.fromJsonForSubject(Map<String, dynamic> json) {
    offeringName = json['offeringname'];
  }

  OfferingsScheduleModel.fromJson(Map<String, dynamic> json, String docID) {
    if (json['daysofweek'] != null) {
      daysOfWeek = [];
      json['daysofweek'].forEach((v) {
        daysOfWeek.add(v);
      });
    } else {
      daysOfWeek = [];
    }
    offeringScheduleID = docID;
    offeringName = json['offeringname'];
    classPeriodName = json['classperiodname'].toString();
    periodType = json['periodtype'];
    roomName = json['roomname'];
    sessionTermName = json['sessiontermname'];
    version = json['version'];
    channelId = json['channelid'];
    virtualRoomName = json['virtualroomname'];
    grade = json['grade'];
    if (json['primaryowner'] != null) {
      primaryOwner = SchoolOwner.fromData(json['primaryowner']);
    }

    if (json['secondaryowner'] != null) {
//      print("vError ${json['secondaryowner'].runtimeType}");

      secondaryOwner = List<SchoolOwner>();
      json['secondaryowner'].forEach((v) {
        secondaryOwner.add(SchoolOwner.fromData(v));
      });
    } else {
      secondaryOwner = [];
    }

    if (json['listofregisteredid'] != null) {
//      print("vError ${json['listofregisteredid'].runtimeType}");

      listOfRegisteredId = List<RegisteredIdModel>();
      json['listofregisteredid'].forEach((v) {
        listOfRegisteredId.add(RegisteredIdModel.fromData(data: v));
      });
    } else {
      listOfRegisteredId = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    List<String> daysOfWeek = [];

    // this.daysOfWeek.forEach((element) {
    //   daysOfWeek.add(element);
    // });

    data['primarymemberid'] = this.primaryMemberId;
    data['daysofweek'] = this.daysOfWeek;
    data['offeringname'] = this.offeringName;
    data['classperiodname'] = this.primaryMemberId;
    data['periodtype'] = this.periodType;
    data['roomname'] = this.roomName;
    data['version'] = this.version;
    data['sessiontermname'] = this.sessionTermName;
    data['virtualroomname'] = this.virtualRoomName;

    return data;
  }

  OfferingsScheduleModel.fromSessionRegData(Map<String, dynamic> data) {
    offeringName = data['ofr'];
    offeringScheduleID = data['id'];
  }

  Map<String, dynamic> toSessionRegData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['ofr'] = this.offeringName;
    data['id'] = this.offeringScheduleID;

    return data;
  }

  static List<OfferingsScheduleModel> listFromJson(
      List<dynamic> json, List<String> docIDs) {
    List<OfferingsScheduleModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(OfferingsScheduleModel.fromJson(data(), docIDs[index]));
      });
    }
    return _list;
  }
}
