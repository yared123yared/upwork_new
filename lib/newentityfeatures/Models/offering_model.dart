import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

import 'package:complex/newentityfeatures/Models/school_owner_model.dart';


// ignore: must_be_immutable
class OfferingModelGroup extends Equatable {
  String subject;
  String grade;
  String group;
  bool haschannel;
  bool hassameid;
  bool hasattendence;
  bool isindependent;
  String offeringgroupid;

  OfferingModelGroup(
      {this.subject,
      this.grade,
      this.group,
      this.hasattendence,
      this.isindependent,
      this.haschannel,
      this.hassameid});

  @override
  List<Object> get props => [
        subject,
        grade,
        group,
        hasattendence,
        isindependent,
        haschannel,
        hassameid
      ];

  OfferingModelGroup copyWith({
    String subject,
    String grade,
    String group,
    bool hasAttendence,
    bool isindependent,
    bool haschannel,
    bool hassameid,
  }) {
    return OfferingModelGroup(
      subject: subject ?? this.subject,
      grade: grade ?? this.grade,
      group: group ?? this.group,
      hasattendence: hasAttendence ?? this.hasattendence,
      isindependent: isindependent ?? this.isindependent,
      haschannel: hasAttendence ?? this.haschannel,
      hassameid: isindependent ?? this.hassameid,
    );
  }

  OfferingModelGroup.fromJson(json, String docID) {
    offeringgroupid = docID;
    subject = json['subject'];
    grade = json['grade'];
    group = json['group'];
    hasattendence = json['hasattendence'];
    isindependent = json['isindependent'];
    haschannel = json['haschannel'];
    hassameid = json['hassameid'];
  }
//grade2@MATH@V@A@N@N@N
  OfferingModelGroup.fromString(String data) {
    var kd = data.split('@');
    offeringgroupid = data;
    subject = kd[1];
    grade = kd[0];
    group = kd[2];
    hasattendence = kd[3] == 'Y' ? true : false;
    isindependent = kd[4] == 'Y' ? true : false;
    haschannel = kd[5] == 'Y' ? true : false;
    hassameid = kd[6] == 'Y' ? true : false;
  }

  String getKey() {
    if (offeringgroupid == null) {
      var buffer = StringBuffer();
      buffer.write(grade);
      buffer.write("@");
      buffer.write(subject);
      buffer.write("@");
      buffer.write(isindependent ? "O" : "V");
      buffer.write("@");
      buffer.write(isindependent ? group : "A");
      buffer.write("@");
      buffer.write(hasattendence ? "Y" : "N");

      buffer.write("@");
      buffer.write(haschannel ? "Y" : "N");
      buffer.write("@");
      buffer.write(hassameid ? "Y" : "Y");
      return buffer.toString();
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = Map<String, dynamic>();

    json['subject'] = subject;
    json['group'] = group;
    json['grade'] = grade;
    json['hasattendence'] = hasattendence;
    json['isindependent'] = isindependent;
    json['haschannel'] = haschannel;
    json['hassameid'] = hassameid;

    return json;
  }

  static List<OfferingModelGroup> listFromJson(
      List<dynamic> json, List<String> docIDs) {
    List<OfferingModelGroup> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(OfferingModelGroup.fromJson(data(), docIDs[index]));
      });
    }
    return _list;
  }
}

class TeacherOfferingsAssignment {
  String offeringgroupname;
  SchoolOwner primaryOwner;
  List<SchoolOwner> secondaryOwner;
  num version;
  List<String> vrlist;
  String grade;
  String docID;

  static Map<String, dynamic> toUpdateDataOfr(
      TeacherOfferingsAssignment oldData, TeacherOfferingsAssignment newData) {
    return {
      if (SchoolOwner.arelistequal(
        oldData.secondaryOwner,
        newData.secondaryOwner,
      ))
        'secondaryowner':
            SchoolOwner.convertListOfSchoolOwner(newData.secondaryOwner),
      if (SchoolOwner.arememberequal(
          oldData.primaryOwner, newData.primaryOwner))
        'primaryowner': newData.primaryOwner.toData(),
    };
  }

  TeacherOfferingsAssignment(
      {this.version,
      this.primaryOwner,
      this.offeringgroupname,
      this.secondaryOwner,
      this.vrlist,
      this.grade,
      this.docID});

  TeacherOfferingsAssignment copyWith(
      {String offeringgroupname,
      String roomName,
      SchoolOwner primaryOwner,
      List<SchoolOwner> secondaryOwner,
      num version,
      List<String> vrlist,
      String grade,
      String docID}) {
    return TeacherOfferingsAssignment(
        offeringgroupname: offeringgroupname ?? this.offeringgroupname,
        version: version ?? this.version,
        primaryOwner: primaryOwner ?? this.primaryOwner,
        secondaryOwner: secondaryOwner ?? this.secondaryOwner,
        vrlist: vrlist ?? this.vrlist,
        grade: grade ?? this.grade,
        docID: docID ?? this.docID);
  }

  factory TeacherOfferingsAssignment.fromJson(
    Map<String, dynamic> json,
    String docID,
  ) {
    return TeacherOfferingsAssignment(
      offeringgroupname: json['ofrgid'],
      version: json['version'],
      docID: docID,
      vrlist:
          json['vrlist'] != null ? (json['vrlist'] as List).cast<String>() : [],
      grade: json['grade'],
      primaryOwner: json['primaryowner'] != null
          ? SchoolOwner.fromData(json['primaryowner'])
          : null,
      secondaryOwner: json['secondaryowner'] != null
          ? (json['secondaryowner'] as List)
              .map((e) => SchoolOwner.fromData(e))
              .toList()
          : [],
      // if (json['vrlist'] != null) {
      //   vrlist = [];
      //   json['vrlist'].forEach((v) {
      //     vrlist.add(v);
      //   });
      // }
      // if (json['primaryowner'] != null) {
      //   primaryOwner = SchoolOwner.fromData(json['primaryowner']);
      // }

      // if (json['secondaryowner'] != null) {
      //   secondaryOwner = List<SchoolOwner>();
      //   json['secondaryowner'].forEach((v) {
      //     secondaryOwner.add(SchoolOwner.fromData(v));
      //   });
      // } else {
      //   secondaryOwner = [];
      // }
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    List<String> listOfvirtualroom = [];
    List<Map> listOfsecondaryowner = [];
    if (secondaryOwner != null) listOfsecondaryowner = <Map>[];
    secondaryOwner.forEach((element) {
      listOfsecondaryowner.add(element.toData());
    });

    if (vrlist != null) listOfvirtualroom = [];
    vrlist.forEach((element) {
      listOfvirtualroom.add(element);
    });
    data['secondaryowner'] = listOfsecondaryowner;
    data['vrlist'] = listOfvirtualroom;
    data['ofrgid'] = this.offeringgroupname;

    data['version'] = this.version;
    data['grade'] = this.grade;
    data['primaryowner'] = primaryOwner.toData();

    return data;
  }

  static Map<String, dynamic> toUpdateDataVrMod(
      TeacherOfferingsAssignment oldData, TeacherOfferingsAssignment newData) {
    return {
      if (SchoolOwner.arelistequal(
          oldData.secondaryOwner, newData.secondaryOwner))
        'secondaryowner':
            SchoolOwner.convertListOfSchoolOwner(newData.secondaryOwner),
      if (SchoolOwner.arememberequal(
          oldData.primaryOwner, newData.primaryOwner))
        'primaryowner': newData.primaryOwner.toData(),
      if (ListEquality().equals(oldData.vrlist, newData.vrlist))
        'associatedRoom': newData.vrlist
    };
  }

  static List<TeacherOfferingsAssignment> listFromJson(
      List<dynamic> json, List<String> docIDs) {
    List<TeacherOfferingsAssignment> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(TeacherOfferingsAssignment.fromJson(data(), docIDs[index]));
      });
    }
    return _list;
  }
}

class OfferingWeeklySchedule {
  String offeringgroupid;
  String grade;
  List<String> vrlist;
  SchoolOwner primaryOwner;
  String priodtype;
  String roomname;
  int mon;
  int tue;
  int wed;
  int thu;
  int fri;
  int sat;
  int sun;
  num version;

  OfferingWeeklySchedule({
    this.offeringgroupid,
    this.vrlist,
    this.primaryOwner,
    this.priodtype,
    this.roomname,
    this.grade,
    this.mon,
    this.tue,
    this.wed,
    this.thu,
    this.fri,
    this.sat,
    this.sun,
  });

  List<Object> get props => [
        offeringgroupid,
        grade,
        vrlist,
        primaryOwner,
        priodtype,
        roomname,
        mon,
        tue,
        wed,
        thu,
        fri,
        sat,
        sun
      ];

  OfferingWeeklySchedule copyWith(
      {String offeringgroupid,
      List<String> vrlist,
      SchoolOwner primaryOwner,
      String priodtype,
      String roomname,
      String grade,
      int mon,
      int tue,
      int wed,
      int thu,
      int fri,
      int sat,
      int sun}) {
    return OfferingWeeklySchedule(
      offeringgroupid: offeringgroupid ?? this.offeringgroupid,
      vrlist: vrlist ?? this.vrlist,
      primaryOwner: primaryOwner ?? this.primaryOwner,
      priodtype: priodtype ?? this.priodtype,
      roomname: roomname ?? this.roomname,
      grade: grade ?? this.grade,
      mon: mon ?? this.mon,
      tue: tue ?? this.tue,
      wed: wed ?? this.wed,
      thu: thu ?? this.thu,
      fri: fri ?? this.fri,
      sat: sat ?? this.sat,
      sun: sun ?? this.sun,
    );
  }

  OfferingWeeklySchedule.fromJson(Map<String, dynamic> json, String docID) {
    if (json['vrlist'] != null) {
      vrlist = [];
      json['vrlist'].forEach((v) {
        vrlist.add(v);
      });
    }
    offeringgroupid = json['offeringgroupid'];
    if (json['primaryowner'] != null) {
      primaryOwner = SchoolOwner.fromData(json['primaryowner']);
    }

    grade = json['grade'];
    priodtype = json['periodtype'];
    roomname = json['roomname'];
    version = json['version'];
    mon = json['mon'];
    tue = json['tue'];
    wed = json['wed'];
    thu = json['thu'];
    fri = json['fri'];
    sat = json['sat'];
    sun = json['sun'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();


    List<String> listOfvirtualroom = [];
    if (vrlist != null) {
      listOfvirtualroom = [];
      vrlist.forEach((element) {
        listOfvirtualroom.add(element);
      });
    }
    data['vrlist'] = listOfvirtualroom;
    data['offeringgroupid'] = this.offeringgroupid;
    data['version'] = 1;
    data['roomname'] = this.roomname;
    data['grade'] = this.grade;
    data['periodtype'] = this.priodtype;
    data['primaryowner'] = primaryOwner.toData();
    data['mon'] = mon;
    data['tue'] = tue;
    data['wed'] = wed;
    data['thu'] = thu;
    data['fri'] = fri;
    data['sat'] = sat;
    data['sun'] = sun;
    return data;
  }

  static List<OfferingWeeklySchedule> listFromJson(
      List<dynamic> json, List<String> docIDs) {
    List<OfferingWeeklySchedule> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(OfferingWeeklySchedule.fromJson(data(), docIDs[index]));
      });
    }
    return _list;
  }
}

class VirtualRoomModelNewFormat {
  String associatedRoom;
  String attendenceType;
  String chatRoomType;

  int numOfStudent;
  List<SchoolOwner> secondaryOwnerV;
  SchoolOwner primaryOwner;
  String grade;
  num version;
  String virtualRoomName;
  String sectionname;

  VirtualRoomModelNewFormat({
    this.associatedRoom,
    this.attendenceType,
    this.version,
    this.chatRoomType,
    this.numOfStudent,
    this.secondaryOwnerV,
    this.primaryOwner,
    this.virtualRoomName,
    this.sectionname,
    this.grade,
  });

  VirtualRoomModelNewFormat copyWith({
    String associatedRoom,
    String attendenceType,
    String chatRoomType,
    int numOfStudent,
    List<SchoolOwner> secondaryOwnerV,
    SchoolOwner primaryOwner,
    String grade,
    num version,
    String sectionname,
  }) {
    return VirtualRoomModelNewFormat(
        associatedRoom: associatedRoom ?? this.associatedRoom,
        attendenceType: attendenceType ?? this.attendenceType,
        version: version ?? this.version,
        chatRoomType: chatRoomType ?? this.chatRoomType,
        numOfStudent: numOfStudent ?? this.numOfStudent,
        secondaryOwnerV: secondaryOwnerV ?? this.secondaryOwnerV,
        primaryOwner: primaryOwner ?? this.primaryOwner,
        virtualRoomName: virtualRoomName ?? this.virtualRoomName,
        grade: grade ?? this.grade,
        sectionname: sectionname ?? this.sectionname);
  }

  factory VirtualRoomModelNewFormat.fromJson(Map<String, dynamic> json) {
    return VirtualRoomModelNewFormat(
      associatedRoom: json['associatedroom'],
      attendenceType: json['attendencetype'],
      chatRoomType: json['chatRoomType'],
      version: json['version'],
      numOfStudent: json['numofstudents'],
      sectionname: json['sectionname'],
      virtualRoomName: json['virtualroomname'],
      grade: json['grade'],
      primaryOwner: SchoolOwner.fromData(json['primaryowner']),
      secondaryOwnerV: (json['secondaryowner'] != null)
          ? (json['secondaryowner'] as List)
              .map((e) => SchoolOwner.fromData(e))
              .toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();


    data['associatedroom'] = this.associatedRoom;
    data['attendencetype'] = this.attendenceType;
    data['chatRoomType'] = this.chatRoomType;
    data['numofstudents'] = this.numOfStudent;
    data['virtualroomname'] = this.grade + "-" + this.sectionname;
    data['sectionname'] = this.sectionname;
    data['grade'] = this.grade;
    data['primaryowner'] = primaryOwner.toData();
    List<Map> listOfsecondaryowner = [];
    if (secondaryOwnerV != null) {
      listOfsecondaryowner = [];
      secondaryOwnerV.forEach((element) {
        listOfsecondaryowner.add(element.toData());
      });
    }
    data['secondaryowner'] = listOfsecondaryowner;
    return data;
  }

  static Map<String, dynamic> toUpdateDataVrMod(
    VirtualRoomModelNewFormat oldData,
    VirtualRoomModelNewFormat newData,
  ) {
    return {
      if (!SchoolOwner.arelistequal(
          oldData.secondaryOwnerV, newData.secondaryOwnerV))
        'secondaryowner':
            SchoolOwner.convertListOfSchoolOwner(newData.secondaryOwnerV),
      if (!SchoolOwner.arememberequal(
          oldData.primaryOwner, newData.primaryOwner))
        'primaryowner': newData.primaryOwner.toData(),
      if (oldData.associatedRoom != newData.associatedRoom)
        'associatedRoom': newData.associatedRoom
    };
  }

  static List<VirtualRoomModelNewFormat> listFromJson(List<dynamic> json) {
    List<VirtualRoomModelNewFormat> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(VirtualRoomModelNewFormat.fromJson(j));
      });
    }
    return _list;
  }
}

class AttendenceKind {
  OfferingModelGroup offering;
  bool hasoffering;
  bool reqvr;
  List<String> vrlist;
  String kind;
  String selectedvr;
  bool errorincreation;
  String errorstring;
  String offeringstring;
  AttendenceKind.fromString(String k) {
    List<String> m = k.split(';');
//Example for vr data - vr;FIRST;grade2-A
// example of offering attendence data - grade2@HINDI@V@A@N@N@N;grade2-A@
    if (m[0] == 'vr') {
      if (m.length == 3) {
        hasoffering = false;
        kind = m[1];
        vrlist = m[2].replaceAll("@", "").split(',');
        selectedvr = m[2];
        reqvr = true;
      } else {
        errorincreation = true;
        errorstring = "wrong length of vr attendence";
      }
    } else if (m[0] == 'of') {
      if (m.length == 3) {
        hasoffering = true;
        offeringstring = m[1];
        offering = OfferingModelGroup.fromString(m[1]);
        kind = offering.subject;
        vrlist = m[2].replaceAll("@", "").split(',');
        if (offering.isindependent) {
          reqvr = false;
        } else {
          if (vrlist.length == 0 || vrlist.length > 1) {
            errorincreation = true;
            errorstring = "bad offering length";
          }
          reqvr = false;
          selectedvr = vrlist[0];
        }
      } else {
        errorincreation = true;
        errorstring = "wrong length of vr attendence";
      }
    }
  }
}

class EventOfferingKind {
  OfferingModelGroup offering;
  bool hasoffering;
  bool reqvr;
  List<String> vrlist;
  String kind;
  String selectedvr;
  bool errorincreation;
  String errorstring;
  String offeringstring;
  EventOfferingKind();

  static EventOfferingKind getEventOfferingKindFromAttendenceString(String k) {
    EventOfferingKind mk;
    List<String> m = k.split(';');
    if (m[0] == 'vr') {
      if (m.length == 3) {
        mk = EventOfferingKind();
        mk.hasoffering = false;
        mk.kind = "GENERAL";
        mk.vrlist = m[2].replaceAll("@", "").split(',');
        mk.selectedvr = m[2];
        mk.reqvr = true;
      }
    }
    return mk;
  }

  static EventOfferingKind getEventOfferingKindFromOfferingString(String k) {
    EventOfferingKind mk;
    List<String> m = k.split(';');
    if (m.length == 2) {
      mk = EventOfferingKind();
      mk.offering = OfferingModelGroup.fromString(m[0]);
      mk.vrlist = m[1].split('@');
      mk.kind = mk.offering.subject;
      if (mk.offering.isindependent) {
        mk.reqvr = false;
      }
      mk.reqvr = true;
      mk.selectedvr = mk.vrlist[0];
      mk.offeringstring = m[0];
    }
    return mk;
  }
}

class OfferingKind {
  OfferingModelGroup offering;
  bool hasoffering;
  bool reqvr;
  List<String> vrlist;
  String kind;
  String selectedvr;
  bool errorincreation;
  String errorstring;
  String offeringkindstr;

  OfferingKind.fromString(String k) {
    List<String> m = k.split(';');
    offeringkindstr = m[0];
    if (m.length != 2) {
      errorincreation = true;
      errorstring = "bad offering length";
    } else {
      offering = OfferingModelGroup.fromString(m[0]);
      String modvrlist = m[1].replaceAll('@', '');
      vrlist = modvrlist.split(',');
      kind = offering.subject;
      if (offering.isindependent) {
        reqvr = false;
      } else {
        if (vrlist.length == 0 || vrlist.length > 1) {
          errorincreation = true;
          errorstring = "bad offering length";
        }
        reqvr = true;
        selectedvr = vrlist[0];
      }
    }
  }
}

class InstructorOfferingDataModel {
  List<AttendenceKind> primaryattendlist;
  List<AttendenceKind> secondaryattendlist;
  List<OfferingKind> primarykindlist;
  List<OfferingKind> secondarykindlist;
  List<EventOfferingKind> primaryevtkindlist;
  List<EventOfferingKind> secondaryevtkindlist;
  AttendenceKind activeattendencekind;
  OfferingKind activeofferingkind;

  //Map<String,Map<String,List<String>>> primarygradeofferingtovirtualroom;
  //Map<String,Map<String,List<String>>> secondarygradeofferingtovirtualroom;
  //Map<String,Map<String,List<String>>> primarygradevirtualroomtovirtualroom;

  List<AttendenceKind> getAttendenceKind(String grade, String roletype) {
    List<AttendenceKind> kind = [];
    List<AttendenceKind> datasource;
    if (roletype == "PRIMARY") {
      datasource = primaryattendlist;
    } else {
      datasource = secondaryattendlist;
    }
    //add check , not to iterated error elements
    for (AttendenceKind s in datasource) {
      if (s.hasoffering != null) {
        if (s.hasoffering) {
          if (s.offering.grade == grade) kind.add(s);
        } else {
          if (s.selectedvr.contains(grade)) kind.add(s);
        }
      }
    }

    return kind;
  }

  List<OfferingKind> getSubKind(String grade, String roletype) {
    List<OfferingKind> kind = <OfferingKind>[];
    List<OfferingKind> datasource;
    if (roletype == "PRIMARY") {
      datasource = primarykindlist;
    } else {
      datasource = secondarykindlist;
    }
    for (OfferingKind s in datasource) {
      if (s.offering.grade == grade) {
        kind.add(s);
      }
    }

    return kind;
  }

  List<EventOfferingKind> getEvtKind(String grade, String roletype) {
    print("The Grade is here $grade");
    List<EventOfferingKind> kind = [];
    List<EventOfferingKind> datasource;
    if (roletype == "PRIMARY") {
      // print("IS Grade here? ${primaryevtkindlist[0].offering.grade}");
      datasource = primaryevtkindlist;
    } else {
      datasource = secondaryevtkindlist;
    }
    for (EventOfferingKind s in datasource) {
      print("How's grade $grade");

      if (s.vrlist != null) {
        for (String mvr in s.vrlist) {
          if (mvr.contains(grade)) {
            kind.add(s);
            break;
          }
        }
      }
    }
    return kind;
  }

  InstructorOfferingDataModel(
      {this.primaryattendlist,
      this.secondaryattendlist,
      this.primarykindlist,
      this.secondarykindlist,
      this.primaryevtkindlist,
      this.secondaryevtkindlist});

  InstructorOfferingDataModel copyWith({
    List<AttendenceKind> primaryattendlist,
    List<AttendenceKind> secondaryattendlist,
    List<OfferingKind> primarykindlist,
    List<OfferingKind> secondarykindlist,
    List<EventOfferingKind> primaryevtkindlist,
    List<EventOfferingKind> secondaryevtkindlist,
  }) {
    return InstructorOfferingDataModel(
        primaryattendlist: primaryattendlist ?? this.primaryattendlist,
        secondaryattendlist: secondaryattendlist ?? this.secondaryattendlist,
        primarykindlist: primarykindlist ?? this.primarykindlist,
        secondarykindlist: secondarykindlist ?? this.secondarykindlist,
        primaryevtkindlist: primaryevtkindlist ?? this.primaryevtkindlist,
        secondaryevtkindlist:
            secondaryevtkindlist ?? this.secondaryevtkindlist);
  }

  static getListFromElement(dynamic element) {
    List<String> vrlist = [];
    if (element != null) {
      List<String> vrlist = [];
      element.forEach((v) {
        vrlist.add(v);
      });
    }
    return vrlist;
  }

  static List<AttendenceKind> getAttendecListFromElement(dynamic element) {
    List<AttendenceKind> vrlist = [];
    if (element != null) {
      vrlist = [];
      element.forEach((v) {
        vrlist.add(AttendenceKind.fromString(v));
      });
    }
    return vrlist;
  }

  static List<OfferingKind> getOfferingListFromElement(dynamic element) {
    List<OfferingKind> vrlist = [];
    if (element != null) {
      vrlist =[];
      element.forEach((v) {
        vrlist.add(OfferingKind.fromString(v));
      });
    }
    return vrlist;
  }

  static bool checkIfListContainsEventKind(
      EventOfferingKind e, List<EventOfferingKind> elist) {
    for (EventOfferingKind ep in elist) {
      if (ep.kind == e.kind && ListEquality().equals(e.vrlist, ep.vrlist))
        return true;
    }
    return false;
  }

  static void getEventKindListFromElement(
      dynamic element, bool isattendence, List<EventOfferingKind> evtkindlist) {
    if (element != null) {
      element.forEach((v) {
        if (isattendence) {
          EventOfferingKind e =
              EventOfferingKind.getEventOfferingKindFromAttendenceString(v);
          if (e != null && !checkIfListContainsEventKind(e, evtkindlist))
            evtkindlist.add(e);
        } else {
          EventOfferingKind e =
              EventOfferingKind.getEventOfferingKindFromOfferingString(v);
          if (e != null && !checkIfListContainsEventKind(e, evtkindlist))
            evtkindlist.add(e);
        }
      });
    }
  }

  InstructorOfferingDataModel.fromJson(Map<String, dynamic> json) {
    {
      primaryevtkindlist = [];
      secondaryevtkindlist = <EventOfferingKind>[];

      if (json.containsKey('patt')) {
        primaryattendlist = getAttendecListFromElement(json['patt']);
        getEventKindListFromElement(json['patt'], true, primaryevtkindlist);
      } else
        primaryattendlist = [];
      if (json.containsKey('satt')) {
        secondaryattendlist = getAttendecListFromElement(json['satt']);
        getEventKindListFromElement(json['satt'], true, secondaryevtkindlist);
      } else
        secondaryattendlist = [];

      if (json.containsKey('pofr')) {
        primarykindlist = getOfferingListFromElement(json['pofr']);
        getEventKindListFromElement(json['pofr'], false, primaryevtkindlist);
      } else
        primarykindlist = [];
      if (json.containsKey('sofr')) {
        secondarykindlist = getOfferingListFromElement(json['sofr']);
        getEventKindListFromElement(json['sofr'], false, secondaryevtkindlist);
      } else
        secondarykindlist = [];
    }
  }
}
