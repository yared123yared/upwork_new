import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:complex/common/helputil.dart';

// ignore: must_be_immutable
class SessionTermModel extends Equatable {
  DateTime endDate;
  bool isActive;
  DateTime startDate;
  String termName;

  SessionTermModel({
    this.startDate,
    this.endDate,
    this.isActive,
    this.termName,
  });

  SessionTermModel copyWith({
    String endDate,
    String isActive,
    String startDate,
    String termName,
  }) {
    return SessionTermModel(
        endDate: endDate ?? this.endDate,
        termName: termName ?? this.termName,
        startDate: startDate ?? this.startDate,
        isActive: isActive ?? this.isActive);
  }

  @override
  List<Object> get props => [endDate, startDate, termName, isActive];

  SessionTermModel.fromData(Map<String, dynamic> data) {
    endDate = data["enddate"] != null
        ? HelpUtil.toDate(
            timestamp: data["enddate"],
          )
        : DateTime.now();
    termName = data["termname"];
    startDate = data["startdate"] != null
        ? HelpUtil.toDate(
            timestamp: data["startdate"],
          )
        : DateTime.now();
    isActive = data["isactive"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['enddate'] = HelpUtil.toTimeStamp(
      dateTime: this.endDate,
    );
    data['startdate'] = HelpUtil.toTimeStamp(
      dateTime: this.startDate,
    );
    data["isactive"] = this.isActive;
    data["termname"] = this.termName;
    return data;
  }

  static List<SessionTermModel> listFromData(Map<String, dynamic> data) {
    List<SessionTermModel> sessionTerm;
    if (data['sessionterm'] != null) {
      sessionTerm = List<SessionTermModel>();
      data['sessionterm'].forEach((v) {
        sessionTerm.add(SessionTermModel.fromData(v));
      });
    } else {
      sessionTerm = [];
    }
    return sessionTerm;
  }
}

// ignore: must_be_immutable
class PaymentPeriodInfo extends Equatable {
  String grpName;
  List<PeriodInfo> periodInfo;
  String sessionName;
  bool isfrozen;
  int numperiods;
  PaymentPeriodInfo(
      {this.grpName,
      this.periodInfo,
      this.sessionName,
      this.isfrozen,
      this.numperiods});

  PaymentPeriodInfo copyWith(
      {String grpName,
      List<String> periodInfo,
      String sessionName,
      bool isfrozen,
      int numperiods}) {
    return PaymentPeriodInfo(
      grpName: grpName ?? this.grpName,
      periodInfo: periodInfo ?? this.periodInfo,
      sessionName: sessionName ?? this.sessionName,
      isfrozen: isfrozen ?? this.isfrozen,
      numperiods: numperiods ?? this.numperiods,
    );
  }

  @override
  List<Object> get props => [PaymentPeriodInfo];

  PaymentPeriodInfo.fromData(Map<String, dynamic> data) {
    grpName = data["grpname"];
    isfrozen = data["isfrozen"] == null ? false : data["isfrozen"];
    numperiods = data["numperiods"] == null ? 0 : data["numperiods"];
    periodInfo = [];
    if (data['periodinfo'] != null) {
      periodInfo = [];
      data['periodinfo'].forEach((v) {
        periodInfo.add(PeriodInfo.fromData(v));
      });
    } else {
      periodInfo = [];
    }
    sessionName = data["sessionname"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['grpname'] = this.grpName;
    data['periodinfo'] = this.periodInfo.map((e) => e.toData()).toList();
    data['sessionname'] = this.sessionName;
    data["isfrozen"] = this.isfrozen;
    data["numperiods"] = this.numperiods;
    return data;
  }

  static List<PaymentPeriodInfo> listFromData(List data) {
    List<PaymentPeriodInfo> paymentPeriodInfo;
    if (data != null) {
      // print(data);
      paymentPeriodInfo = <PaymentPeriodInfo>[];
      data.forEach((v) {
        // print(v);
        paymentPeriodInfo.add(PaymentPeriodInfo.fromData(v));
      });
    } else {
      paymentPeriodInfo = [];
    }
    return paymentPeriodInfo;
  }
}

// ignore: must_be_immutable
class PeriodInfo extends Equatable {
  DateTime dueDate;
  DateTime endDate;
  int numDays;
  String paymentPeriodName;
  DateTime startDate;

  PeriodInfo(
      {this.startDate,
      this.endDate,
      this.numDays,
      this.dueDate,
      this.paymentPeriodName});

  PeriodInfo copyWith({
    String dueDate,
    String endDate,
    num numDays,
    String paymentPeriodName,
    String startDate,
  }) {
    return PeriodInfo(
        dueDate: dueDate ?? this.dueDate,
        endDate: endDate ?? this.endDate,
        numDays: numDays ?? this.numDays,
        paymentPeriodName: paymentPeriodName ?? this.paymentPeriodName,
        startDate: startDate ?? this.startDate);
  }

  @override
  List<Object> get props =>
      [dueDate, endDate, numDays, paymentPeriodName, startDate];

  PeriodInfo.fromData(Map<String, dynamic> data) {
    dueDate = data["duedate"] is int
        ? HelpUtil.toDate(timestamp: data["duedate"])
        : DateTime.now();
    endDate = data["duedate"] is int
        ? HelpUtil.toDate(timestamp: data["enddate"])
        : DateTime.now();
    numDays = data["numdays"];
    paymentPeriodName = data["paymentperiodname"];
    startDate = data["duedate"] is int
        ? HelpUtil.toDate(timestamp: data["startdate"])
        : DateTime.now();
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data["duedate"] = HelpUtil.toTimeStamp(dateTime: this.dueDate);
    data["enddate"] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    data["numdays"] = this.numDays;
    data["paymentperiodname"] = this.paymentPeriodName;
    data["startdate"] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    return data;
  }

  static List<PaymentPeriodInfo> listFromData(Map<String, dynamic> data) {
    List<PaymentPeriodInfo> paymentPeriodInfo;
    if (data['paymentperiodinfo'] != null) {
      paymentPeriodInfo = List<PaymentPeriodInfo>();
      data['paymentperiodinfo'].forEach((v) {
        paymentPeriodInfo.add(PaymentPeriodInfo.fromData(v));
      });
    } else {
      paymentPeriodInfo = [];
    }
    return paymentPeriodInfo;
  }
}

// ignore: must_be_immutable
class ClassPeriodInfo extends Equatable {
  List<Schedule> schedule;
  String type;

  ClassPeriodInfo({this.schedule, this.type});

  ClassPeriodInfo copyWith({
    List<String> schedule,
    String type,
  }) {
    return ClassPeriodInfo(
      schedule: schedule ?? this.schedule,
      type: type ?? this.type,
    );
  }

  @override
  List<Object> get props => [schedule, type];

  ClassPeriodInfo.fromData(Map<String, dynamic> data) {
    if (data['schedule'] != null) {
      schedule = List<Schedule>();
      data['schedule'].forEach((v) {
        schedule.add(Schedule.fromData(v));
      });
    } else {
      schedule = [];
    }
    type = data["type"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    List<Map> schedule = [];
    this.schedule.forEach((element) {
      schedule.add(element.toData());
    });
    data['schedule'] = schedule;
    data['type'] = this.type;

    return data;
  }

  static List<ClassPeriodInfo> listFromData(Map<String, dynamic> data) {
    List<ClassPeriodInfo> classPeriodInfo;
    if (data['classperiodinfo'] != null) {
      classPeriodInfo = data['classperiodinfo']
          .map<ClassPeriodInfo>((elem) => ClassPeriodInfo.fromData(elem))
          .toList();
    } else {
      classPeriodInfo = [];
    }
    return classPeriodInfo;
  }
}

// ignore: must_be_immutable
class Schedule extends Equatable {
  String classPeriodName;

  DateTime startTime;
  DateTime endTime;

  Schedule({
    this.classPeriodName,
    this.endTime,
    this.startTime,
  });

  Schedule copyWith({
    String classPeriodName,
    String endTime,
    String startTime,
  }) {
    return Schedule(
      classPeriodName: classPeriodName ?? this.classPeriodName,
      endTime: endTime ?? this.endTime,
      startTime: startTime ?? this.endTime,
    );
  }

  @override
  List<Object> get props => [endTime, classPeriodName, startTime];

  Schedule.fromData(Map<String, dynamic> data) {
    classPeriodName = data["classperiodname"].toString();
    startTime = (data['starttime'] as Timestamp)?.toDate();
    endTime = (data['endtime'] as Timestamp)?.toDate();
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data["endtime"] = this.endTime;
    data["starttime"] = this.startTime;

    data["classperiodname"] = this.classPeriodName;

    return data;
  }
}

// ignore: must_be_immutable
class ExamTermInfo extends Equatable {
  String mainTermName;
  String subTermName;

  String ToString() {
    return mainTermName + "_" + subTermName;
  }

  ExamTermInfo({this.mainTermName, this.subTermName});

  ExamTermInfo copyWith({
    String mainTermName,
    String subTermName,
  }) {
    return ExamTermInfo(
        mainTermName: mainTermName ?? this.mainTermName,
        subTermName: subTermName ?? this.subTermName);
  }

  @override
  List<Object> get props => [mainTermName, subTermName];

  ExamTermInfo.fromData(Map<String, dynamic> data) {
    mainTermName = data["maintermname"];
    subTermName = data["subtermname"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['maintermname'] = this.mainTermName;
    data['subtermname'] = this.subTermName;

    return data;
  }

  static List<ExamTermInfo> listFromData(Map<String, dynamic> data) {
    List<ExamTermInfo> examTermInfo;
    if (data['examterminfo'] != null) {
      examTermInfo = List<ExamTermInfo>();
      data['examterminfo'].forEach((v) {
        examTermInfo.add(ExamTermInfo.fromData(v));
      });
    } else {
      examTermInfo = [];
    }
    return examTermInfo;
  }
}

// ignore: must_be_immutable
class RoomInfo extends Equatable {
  String roomAddr;
  String roomName;

  RoomInfo({this.roomAddr, this.roomName});

  RoomInfo copyWith({
    String roomAddr,
    String roomName,
  }) {
    return RoomInfo(
        roomAddr: roomAddr ?? this.roomAddr,
        roomName: roomName ?? this.roomName);
  }

  @override
  List<Object> get props => [roomAddr, roomName];

  RoomInfo.fromData(Map<String, dynamic> data) {
    roomAddr = data["roomaddr"];
    roomName = data["roomname"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['roomaddr'] = this.roomAddr;
    data['roomname'] = this.roomName;

    return data;
  }

  static List<RoomInfo> listFromData(Map<String, dynamic> data) {
    List<RoomInfo> roomInfo = [];
    if (data['roominfo'] != null) {
      roomInfo =
          (data['roominfo'] as List).map((e) => RoomInfo.fromData(e)).toList();
    } else {
      roomInfo = [];
    }
    return roomInfo;
  }
}
