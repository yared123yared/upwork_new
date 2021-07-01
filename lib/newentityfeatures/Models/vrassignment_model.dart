import 'package:complex/common/helputil.dart';

import 'VrAssignment_score_n.dart';

class VrAssignmentModel {
  String vrid;
  String assignmentId;
  DateTime endDate;
  String examTermInfo;
  bool hasScore;
  num totalScore;
  String type;
  String grade;
  String offering;
  bool savingAllowed;
  String session;
  bool showSolution;
  DateTime startDate;
  num timeAllowed;
  String topic;
  num totalQuestion;
  String virtualRoom;
  List<String> vrlist;
  bool lockedforwrite;

  // AssignmentModel asm;
  List<AnsweredPaper> answeredPapers;

  VrAssignmentModel({
    this.vrid,
    this.assignmentId,
    this.endDate,
    this.examTermInfo,
    this.grade,
    this.hasScore,
    this.totalScore,
    this.type,
    this.offering,
    this.savingAllowed,
    this.session,
    this.virtualRoom,
    this.vrlist,
    this.showSolution,
    this.startDate,
    this.timeAllowed,
    this.topic,
    this.totalQuestion,
    this.lockedforwrite,
  });

  VrAssignmentModel copyWith({
    String vrid,
    String assignmentId,
    num endDate,
    String examTermInfo,
    String grade,
    String offering,
    bool savingAllowed,
    String session,
    List<String> vrlist,
    bool hasScore,
    bool showSolution,
    num startDate,
    num totalScore,
    String type,
    num timeAllowed,
    String topic,
    num totalQuestion,
    bool lockedforwrite,
  }) {
    return VrAssignmentModel(
      vrid: vrid ?? this.vrid,
      assignmentId: assignmentId ?? this.assignmentId,
      endDate: endDate ?? this.endDate,
      examTermInfo: examTermInfo ?? this.examTermInfo,
      grade: grade ?? this.grade,
      offering: offering ?? this.offering,
      savingAllowed: savingAllowed ?? this.savingAllowed,
      session: session ?? this.session,
      totalScore: totalScore ?? this.totalScore,
      type: type ?? this.type,
      showSolution: showSolution ?? this.showSolution,
      startDate: startDate ?? this.startDate,
      hasScore: hasScore ?? this.hasScore,
      timeAllowed: timeAllowed ?? this.timeAllowed,
      topic: topic ?? this.topic,
      totalQuestion: totalQuestion ?? this.totalQuestion,
      lockedforwrite: lockedforwrite ?? this.lockedforwrite,
      virtualRoom: virtualRoom,
      vrlist: vrlist ?? this.vrlist,
    );
  }

  VrAssignmentModel.fromJson(Map<String, dynamic> json, String id) {
    vrid = id;
    // assignmentId = json['assignmenVrAssignmentModel.fromJsontid'];
    assignmentId = json['assignmentid'];
    endDate = HelpUtil.toDate(timestamp: json['enddate']);
    examTermInfo = json['examterminfo'];
    grade = json['grade'];
    offering = json['offering'];
    savingAllowed = json['savingallowed'];
    session = json['session'];
    hasScore = json['hasscore'];
    totalScore = json["totalscore"];
    type = json["type"];
    virtualRoom = json['virtualroom'];
    showSolution = json['showsolution'];
    startDate = HelpUtil.toDate(timestamp: json['startdate']);
    timeAllowed = json['timeallowed'];
    topic = json['topic'];
    totalQuestion = json['totalquestion'];
    lockedforwrite = json['lockedforwrite'];
    virtualRoom = json['virtualRoom'] ?? id;
    List<String> vrlist = new List<String>();
    if (json['vrlist'] != null) {
      for (String s in json['vrlist']) vrlist.add(s);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();
    json['assignmentid'] = this.assignmentId;
    json['enddate'] = HelpUtil.toTimeStamp(dateTime: this.endDate);
    json['examterminfo'] = this.examTermInfo;
    json['grade'] = this.grade;
    json['offering'] = this.offering;
    json['savingallowed'] = this.savingAllowed;
    json['session'] = this.session;
    json['showsolution'] = this.showSolution;
    json['startdate'] = HelpUtil.toTimeStamp(dateTime: this.startDate);
    json['timeallowed'] = this.timeAllowed;
    json['topic'] = this.topic;
    json['hasscore'] = this.hasScore;
    json['totalquestion'] = this.totalQuestion;
    json['type'] = this.type;
    json['totalscore'] = this.totalScore;
    json['lockedforwrite'] = this.lockedforwrite;
    json['virtualRoom'] = this.virtualRoom;
    if (vrlist != null) {
      List<String> mrlist = new List<String>();
      for (String s in vrlist) mrlist.add(s);
      json['vrlist'] = mrlist;
    } else
      json['vrlist'] = null;

    return json;
  }

  static List<VrAssignmentModel> listFromJson(
    List<dynamic> json,
    List<String> docIDs,
  ) {
    List<VrAssignmentModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, data) {
        _list.add(VrAssignmentModel.fromJson(data(), docIDs[index]));
      });
    }
    return _list;
  }
}
