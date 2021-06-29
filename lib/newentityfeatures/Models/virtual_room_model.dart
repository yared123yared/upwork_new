import 'package:complex/newentityfeatures/Models/registered_id_model.dart';
import 'package:complex/newentityfeatures/Models/school_owner_model.dart';
//todo remove this
@deprecated
class VirtualRoomModel {
  String associatedChatRoomId;
  String associatedRoom;
  String attendenceType;
  String channelId;
  String channelType;
  String chatRoomId;
  String chatRoomType;
  String classRoomType;
  List<String> listOfOfferings;
  List<RegisteredIdModel> listOfRegisteredId;
  int numOfStudent;
  int runningNumber;
  String scheduleType;
  List<SchoolOwner> secondaryOwnerV;
  SchoolOwner primaryOwner;
  String sessionTermName;
  String virtualRoomCategory;
  String virtualRoomName;
  String grade;
  num version;

  VirtualRoomModel({
    this.associatedChatRoomId,
    this.associatedRoom,
    this.attendenceType,
    this.version,
    this.channelId,
    this.channelType,
    this.chatRoomId,
    this.chatRoomType,
    this.classRoomType,
    this.listOfOfferings,
    this.listOfRegisteredId,
    this.numOfStudent,
    this.runningNumber,
    this.scheduleType,
    this.secondaryOwnerV,
    this.primaryOwner,
//      this.serverSideTimeStamp,
    this.sessionTermName,
    this.virtualRoomName,
    this.virtualRoomCategory,
    this.grade,
  });

  VirtualRoomModel copyWith({
    String associatedChatRoomId,
    String associatedRoom,
    String attendenceType,
    String channelId,
    String channelType,
    String chatRoomId,
    num version,
    String chatRoomType,
    String classRoomType,
    List<String> listOfOfferings,
    List<RegisteredIdModel> listOfRegisteredId,
    num numOfStudent,
    List<String> runningNumber,
    String scheduleType,
    List<SchoolOwner> secondaryOwnerV,
    DateTime serverSideTimeStamp,
    String sessionTermName,
    String virtualRoomCategory,
    String virtualRoomName,
    String grade,
  }) {
    return VirtualRoomModel(
        associatedChatRoomId: associatedRoom ?? this.associatedChatRoomId,
        associatedRoom: associatedRoom ?? this.associatedRoom,
        attendenceType: attendenceType ?? this.attendenceType,
        channelId: channelId ?? this.channelId,
        channelType: channelType ?? this.channelType,
        chatRoomId: chatRoomId ?? this.chatRoomId,
        chatRoomType: chatRoomType ?? this.chatRoomType,
        classRoomType: classRoomType ?? this.classRoomType,
        listOfOfferings: listOfOfferings ?? this.listOfOfferings,
        version: version ?? this.version,
        listOfRegisteredId: listOfRegisteredId ?? this.listOfRegisteredId,
        numOfStudent: numOfStudent ?? this.numOfStudent,
        runningNumber: runningNumber ?? this.runningNumber,
        scheduleType: scheduleType ?? this.scheduleType,
        secondaryOwnerV: secondaryOwnerV ?? this.secondaryOwnerV,
        grade: grade ?? this.grade,
//        serverSideTimeStamp: serverSideTimeStamp ?? this.serverSideTimeStamp,
        sessionTermName: sessionTermName ?? this.sessionTermName);
  }

  VirtualRoomModel.fromJson(Map<String, dynamic> json, String roomName) {
    associatedChatRoomId = json['associatedchatroomid'];
    associatedRoom = json['associatedroom'];
    attendenceType = json['attendencetype'];
    chatRoomType = json['chatroomtype'];
    classRoomType = json['classroomtype'];
    version = json['version'];
    numOfStudent = json['numofstudents'];
    runningNumber = json['runningnumber'];
    scheduleType = json['scheduletype'];
    // secondaryOwner = json['secondaryowner'];
//    serverSideTimeStamp = json['serversidetimestamp'];
    sessionTermName = json['sessiontermname'];
    virtualRoomName = roomName ?? json['virtualroomname'];
    virtualRoomCategory = json['virtualroomcategory'];
    if (json['secondaryowner'] != null) {
//      print("vError ${json['secondaryowner'].runtimeType}");

      secondaryOwnerV = List<SchoolOwner>();
      json['secondaryowner'].forEach((v) {
        secondaryOwnerV.add(SchoolOwner.fromData(v));
      });
    } else {
      secondaryOwnerV = [];
    }

    if (json['listofregisterid'] != null) {
//      print("vError ${json['listofregisterid'].runtimeType}");

      listOfRegisteredId = List<RegisteredIdModel>();
      json['listofregisterid'].forEach((v) {
        listOfRegisteredId.add(RegisteredIdModel.fromData(data: v));
      });
    } else {
      listOfRegisteredId = [];
    }
//    print("vError ${listOfRegisteredId.length}");

    channelId = json['channelid'];
    channelType = json['channeltype'];

    if (json['listofofferings'] != null) {
      listOfOfferings = List<String>();
      json['listofofferings'].forEach((v) {
        listOfOfferings.add(v);
      });
    } else {
      listOfOfferings = [];
    }

    chatRoomId = json['chatroomid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['associatedchatroomid'] = this.associatedChatRoomId;
    data['associatedroom'] = this.associatedRoom;
    data['attendencetype'] = this.attendenceType;
    data['chatroomtype'] = this.chatRoomType;
    data['classroomtype'] = this.classRoomType;
    data['numofstudents'] = this.numOfStudent;
    data['runningnumber'] = this.runningNumber;
    data['scheduletype'] = this.scheduleType;
    data['sessiontermname'] = this.sessionTermName;
    data['channelid'] = this.channelId;
    data['channeltype'] = this.channelType;
    data['chatroomid'] = this.chatRoomId;
    data['virtualroomname'] = this.virtualRoomName;
    data['virtualroomcategory'] = this.virtualRoomCategory;
    data['grade'] = this.grade;

    // this.listOfOfferings.forEach((element) {
    //   listOfOfferings.add(element);
    // });
    // this.listOfRegisteredId.forEach((element) {
    //   listOfRegisteredId.add(element.toData());
    // });

    return data;
  }

  static List<VirtualRoomModel> listFromJson(List<Map> json, List<String> id) {
    List<VirtualRoomModel> _list = [];
    if (json != null) {
      for (var i = 0; i < json.length; i++) {
        _list.add(VirtualRoomModel.fromJson(json[i], id[i]));
      }
    }
    return _list;
  }
}
