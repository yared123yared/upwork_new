import 'package:meta/meta.dart';
import 'package:complex/common/helputil.dart';
import 'package:complex/newentityfeatures/Models/virtual_room_model.dart';
import 'package:complex/newentityfeatures/Models/registered_id_model.dart';
class ProgressModel{
  DateTime date;
  String kind;
  int totalScore;
  List<ProgressInfo> progressList;

  String virtualrooname;
  String offeringname;
  String atttype;

  ProgressModel({
    this.date,
    this.kind,
    this.progressList,
    this.virtualrooname,
    this.offeringname,
    this.atttype,
    this.totalScore,
  });

  ProgressModel copyWith({
    num date,
    String kind,
    String virtualrooname,
    String offeringname,
    String atttype,
    List<ProgressInfo> progressInfo,
    num totalScore,
  }) {
    return ProgressModel(
      date: date ?? this.date,
      kind: kind ?? this.kind,
      progressList: progressInfo ?? this.progressList,
      totalScore: totalScore ?? this.totalScore,
      virtualrooname: virtualrooname ?? this.virtualrooname,
      offeringname: offeringname ?? this.offeringname,
      atttype: atttype ?? this.atttype,
    );
  }

  ProgressModel.fromJson(
      {@required Map<String, dynamic> json,
      @required VirtualRoomModel virtualRoom}) {
    date = json['date'] != null
        ? HelpUtil.formattedStringToDate(json['date'], DateTimeMode.DATE)
        : DateTime.now();
    kind = json['kind'];
    totalScore = json['totalscore'];
    if (virtualRoom.listOfRegisteredId != null) {
      progressList = List<ProgressInfo>();
      virtualRoom.listOfRegisteredId.forEach((v) {
        progressList.add(ProgressInfo.fromData(data: json, registeredID: v));
      });
    } else {
      progressList = [];
    }
  }

  ProgressModel.fromDBJson(
      {@required Map<String, dynamic> json,
      @required String virtualRoom,
      @required String offeringna,
      @required String atype}) {
    kind = json['kind'];
    date = json['date'] != null
        ? HelpUtil.formattedStringToDate(json['date'], DateTimeMode.DATE)
        : DateTime.now();
    if (json['sti'] != null) {
      progressList = List<ProgressInfo>();
      json['sti'].forEach((v) {
        progressList.add(ProgressInfo.fromData(data: json, registeredID: v));
      });
      virtualrooname = virtualRoom;
      offeringname = offeringna;
      atttype = atype;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }

  static List<ProgressModel> listFromJson(
      List<dynamic> json, VirtualRoomModel virtualRoom) {
    List<ProgressModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(ProgressModel.fromJson(json: j, virtualRoom: virtualRoom));
      });
    }
    return _list;
  }
}

class ProgressInfo{
  int progress;
  String studentID;
  String name;
  String vr;

  ProgressInfo({this.progress, this.studentID, this.vr, this.name});

  ProgressInfo copyWith({num progress, num studentID, String vr}) {
    return ProgressInfo(
        progress: progress ?? this.progress,
        studentID: studentID ?? this.studentID,
        vr: vr ?? this.vr);
  }


  ProgressInfo.fromData(
      {@required Map<String, dynamic> data,
      @required RegisteredIdModel registeredID}) {
    progress =
        data["${registeredID.id}"] != null ? data["${registeredID.id}"] : 0;
    studentID = registeredID.id;
    vr = registeredID.vr;
    name = registeredID.name;
  }

  ProgressInfo.fromJson({@required Map<String, dynamic> data}) {
    studentID = data['id'];
    vr = data.containsKey('vr') ? data['vr'] : null;
    progress =
        (!data.containsKey('val') || data['val'] == null || data['val'] == 'C')
            ? 0
            : data['val'];
    name = data.containsKey('name') ? data['name'] : studentID;
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["val"] = progress;
    data['id'] = studentID;
    if (vr != null) data['vr'] = vr;
    return data;
  }
}
