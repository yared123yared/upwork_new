import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';
enum Attendancetype { Ofr, Vr }

// ignore: must_be_immutable
class AttendanceModel extends Equatable {
  DateTime date;
  String kind;
  String virtualrooname;
  String offeringname;
  String atttype;
  List<AttendanceInfo> attendanceList;

  AttendanceModel(
      {this.date,
      this.kind,
      this.virtualrooname,
      this.offeringname,
      this.atttype,
      this.attendanceList});

  @override
  List<Object> get props =>
      [date, kind, virtualrooname, offeringname, atttype, attendanceList];

  AttendanceModel copyWith(
      {num date,
      String kind,
      String virtualrooname,
      String offeringname,
      String atttype,
      List<AttendanceInfo> attendanceInfo,
      List<AttendanceInfo> attendanceInfoOfr}) {
    return AttendanceModel(
        date: date ?? this.date,
        kind: kind ?? this.kind,
        virtualrooname: virtualrooname ?? this.virtualrooname,
        offeringname: offeringname ?? this.offeringname,
        atttype: atttype ?? this.atttype,
        attendanceList: attendanceInfo ?? this.attendanceList);
  }

  AttendanceModel.fromDBJson(
      {@required Map<String, dynamic> json,
      @required String virtualRoom,
      @required String offeringna,
      @required String atttype}) {
    kind = json['kind'];
    date = json['date'] != null
        ? HelpUtil.formattedStringToDate(json['date'], DateTimeMode.DATE)
        : DateTime.now();
    if (json['sti'] != null) {
      attendanceList = List<AttendanceInfo>();
      json['sti'].forEach((v) {
        attendanceList
            .add(AttendanceInfo.fromData(data: json, registeredID: v));
      });
    }
  }

  AttendanceModel.fromJson(
      {@required Map<String, dynamic> json,
      @required VirtualRoomModel virtualRoom}) {
    date = json['date'] != null
        ? HelpUtil.formattedStringToDate(json['date'], DateTimeMode.DATE)
        : DateTime.now();
    kind = json['kind'];
    if (virtualRoom.listOfRegisteredId != null) {
      attendanceList = List<AttendanceInfo>();
      virtualRoom.listOfRegisteredId.forEach((v) {
        attendanceList
            .add(AttendanceInfo.fromData(data: json, registeredID: v));
      });
    } else {
      attendanceList = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }

  static List<AttendanceModel> listFromJson(
      List<dynamic> json, VirtualRoomModel virtualRoom) {
    List<AttendanceModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(AttendanceModel.fromJson(json: j, virtualRoom: virtualRoom));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class AttendanceInfo extends Equatable {
  bool attendance;
  String studentID;
  String name;
  String vr;
  String attendenceval;

  AttendanceInfo(
      {this.attendance,
      this.studentID,
      this.vr,
      this.name,
      this.attendenceval});

  AttendanceInfo copyWith(
      {bool attendance,
      String name,
      int studentID,
      String vr,
      int attendenceval}) {
    return AttendanceInfo(
        attendance: attendance ?? this.attendance,
        studentID: studentID ?? this.studentID,
        vr: vr ?? this.vr,
        name: name ?? this.name,
        attendenceval: attendenceval ?? this.attendenceval);
  }

  @override
  List<Object> get props => [attendance, studentID, vr];
  AttendanceInfo.fromDataDB({@required Map<String, dynamic> data}) {
    attendenceval = data.containsKey('val') ? data['val'] : 'C';
    studentID = data['id'];
    vr = data.containsKey('vr') ? data['vr'] : null;
    attendance = attendenceval == "P" ? true : false;
    name = data.containsKey('name') ? data['name'] : studentID;
  }

  AttendanceInfo.fromData(
      {@required Map<String, dynamic> data,
      @required RegisteredIdModel registeredID}) {
    attendance = data["${registeredID.id}"] != null
        ? stringToAttendance(data: data["${registeredID.id}"])
        : false;
    studentID = registeredID.id;
    vr = registeredID.vr;
    name = registeredID.name;
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = studentID;
    data["val"] = attendance ? 'P' : 'A';
    if (vr != null) data['vr'] = vr;
    return data;
  }

  bool stringToAttendance({@required String data}) {
    if (data == 'A') {
      return false;
    } else if (data == 'P') {
      return true;
    } else {
      return false;
    }
  }
}

// ignore: must_be_immutable
class PersonalizedAttendanceModel extends Equatable {
  DateTime date;
  String kind;
  List<AttendanceInfo> attendanceList;
  List<AttendanceInfo> attendanceInfoOfr;

  PersonalizedAttendanceModel(
      {this.date, this.kind, this.attendanceList, this.attendanceInfoOfr});

  @override
  List<Object> get props => [date, kind, attendanceList, attendanceInfoOfr];

  PersonalizedAttendanceModel copyWith(
      {num date,
      String kind,
      List<AttendanceInfo> attendanceInfo,
      List<AttendanceInfo> attendanceInfoOfr}) {
    return PersonalizedAttendanceModel(
        date: date ?? this.date,
        kind: kind ?? this.kind,
        attendanceList: attendanceInfo ?? this.attendanceList,
        attendanceInfoOfr: attendanceInfoOfr ?? this.attendanceInfoOfr);
  }

  PersonalizedAttendanceModel.fromJson(
      {@required Map<String, dynamic> json,
      @required VirtualRoomModel virtualRoom}) {
    date = json['date'] != null
        ? HelpUtil.formattedStringToDate(json['date'], DateTimeMode.DATE)
        : DateTime.now();
    kind = json['kind'];
    if (virtualRoom.listOfRegisteredId != null) {
      attendanceList = List<AttendanceInfo>();
      virtualRoom.listOfRegisteredId.forEach((v) {
        attendanceList
            .add(AttendanceInfo.fromData(data: json, registeredID: v));
      });
    } else {
      attendanceList = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }

  static List<PersonalizedAttendanceModel> listFromJson(
      List<dynamic> json, VirtualRoomModel virtualRoom) {
    List<PersonalizedAttendanceModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(PersonalizedAttendanceModel.fromJson(
            json: j, virtualRoom: virtualRoom));
      });
    }
    return _list;
  }
}
