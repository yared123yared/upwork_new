enum ChannelRights { r, rw }
enum EntityType { Complex, Service }

// ignore: must_be_immutable
class ChannelModel {
  DateTime createTime;
  String metaid;
  String id;
  bool isActive;
  bool markForDeletion;
  List<String> readUsers;
  String roomName;
  String roomOwnerId;
  String roomOwnerType;
  String roomType;
  num version;
  List<String> writeUsers;
  ChannelRights right;
  EntityType entityType;

  ChannelModel({
    this.createTime,
    this.id,
    this.right,
    this.isActive,
    this.markForDeletion,
    this.readUsers,
    this.roomName,
    this.roomOwnerId,
    this.roomOwnerType,
    this.roomType,
    this.version,
    this.writeUsers,
    this.entityType,
  });

  ChannelModel copyWith({
    DateTime createTime,
    String id,
    bool isActive,
    bool markForDeletion,
    List<String> readUsers,
    String roomName,
    String roomOwnerId,
    String roomOwnerType,
    String roomType,
    num version,
    List<String> writeUsers,
  }) {
    return ChannelModel(
        createTime: createTime ?? this.createTime,
        isActive: isActive ?? this.isActive,
        markForDeletion: markForDeletion ?? this.markForDeletion,
        readUsers: readUsers ?? this.readUsers,
        roomName: roomName ?? this.roomName,
        roomOwnerId: roomOwnerId ?? this.roomOwnerId,
        roomOwnerType: roomOwnerType ?? this.roomOwnerType,
        roomType: roomType ?? this.roomType,
        version: version ?? this.version,
        writeUsers: writeUsers ?? this.writeUsers);
  }

  ChannelModel.fromDataForStream(
      Map<String, dynamic> data, String ametaid, String rightData) {
    try {
      metaid = ametaid;
      createTime = data['createtime'];
      id = data['id'];
      isActive = data['isactive'];
      markForDeletion = data['markfordetetion'];
      if (rightData == 'r') {
        right = ChannelRights.r;
      } else if (rightData == 'rw' || rightData == 'w') {
        right = ChannelRights.rw;
      }
      if (data['readusers'] != null) {
        readUsers = [];
        data['readusers'].forEach((v) {
          readUsers.add(v);
        });
      } else {
        readUsers = [];
      }
      this.entityType = entityType;
      roomName = data['roomname'];
      roomOwnerId = data['roomownerid'];
      roomOwnerType = data['roomownertype'];
      roomType = data['roomtype'];
      version = data['version'];
      if (data['writeusers'] != null) {
        writeUsers = [];
        data['writeusers'].forEach((v) {
          writeUsers.add(v);
        });
      } else {
        writeUsers = [];
      }
    } catch (e) {
      print(e);
    }
  }

  static List<ChannelModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<ChannelModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(ChannelModel.fromDataForStream(j(), docID[index], "r"));
      });
    } else {
      _list = [];
    }
    return _list;
  }

  ChannelModel.fromData(
    Map<String, dynamic> data,
    String rightData,
    EntityType entityType,
  ) {
    createTime = data['createtime'];
    id = data['id'];
    isActive = data['isactive'];
    markForDeletion = data['markfordetetion'];
    if (rightData == 'r') {
      right = ChannelRights.r;
    } else if (rightData == 'rw') {
      right = ChannelRights.rw;
    }
    if (data['readusers'] != null) {
      readUsers = [];
      data['readusers'].forEach((v) {
        readUsers.add(v);
      });
    } else {
      readUsers = [];
    }
    this.entityType = entityType;
    roomName = data['roomname'];
    roomOwnerId = data['roomownerid'];
    roomOwnerType = data['roomownertype'];
    roomType = data['roomtype'];
    version = data['version'];
    if (data['writeusers'] != null) {
      writeUsers = [];
      data['writeusers'].forEach((v) {
        writeUsers.add(v);
      });
    } else {
      writeUsers = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    List<String> readUsers = [];
    List<String> writeUsers = [];

    this.readUsers?.forEach((element) {
      readUsers.add(element);
    });
    this.writeUsers?.forEach((element) {
      writeUsers.add(element);
    });

    data['createtime'] = this.createTime;
    data['id'] = this.id;
    data['isactive'] = this.isActive;
    data['markfordetetion'] = this.markForDeletion;
    data['roomname'] = this.roomName;
    data['roomownerid'] = this.roomOwnerId;
    data['roomownertype'] = this.roomOwnerType;
    data['roomtype'] = this.roomType;
    data['version'] = this.version;

    return data;
  }
}
