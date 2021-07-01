import 'package:complex/data/models/response/user_response/user_channel_model.dart';

class UserService {
  List<UserChannelsModel> channels;
  List<UserChannelsModel> channelsVr;
  List<UserChannelsModel> channelsOfr;
  List<UserChannelsModel> channelsCom;
  List<UserChannelsModel> channelsVen;
  List<String> moduleTypesReq;
  List<String> roles;
  String name;
  String serviceID;
  bool isActive;
  bool isEmployee;
  bool isEndUser;

  UserService(
      {this.channels,
      this.roles,
      this.serviceID,
      this.isActive,
      this.isEmployee,
      this.isEndUser});

  List<String> getIdCardNumbers() {
    List<String> _idNumbers = [];
    {
      if (channelsVr != null) {
        channelsVr.forEach((vr) {
          if (vr.customerUserId != null) _idNumbers.add(vr.customerUserId);
        });
      }
    }
    ;
    return _idNumbers;
  }

  List<String> getSessionTerms() {
    List<String> _idNumbers = [];
    {
      if (channelsVr != null) {
        channelsVr.forEach((vr) {
          if (vr.sessionTerm != null) _idNumbers.add(vr.sessionTerm);
        });
      }
    }
    ;
    return _idNumbers;
  }

  List<String> getVirtualRooms() {
    List<String> _idNumbers = [];
    {
      if (channelsVr != null) {
        channelsVr.forEach((vr) {
          if (vr.vrRoomName != null) _idNumbers.add(vr.vrRoomName);
        });
      }
    }
    ;
    return _idNumbers;
  }

  UserService.fromData(Map<String, dynamic> data, String key) {
    serviceID = key;
    channels = [];
    channelsVr = [];
    channelsOfr = [];
    moduleTypesReq = [];
    moduleTypesReq.add('SCHOOL');
    moduleTypesReq.add('ORDER');
    moduleTypesReq.add('APT');
    moduleTypesReq.add('TRIP');
    if (data['ename'] != null)
      name = data['ename'];
    else {
      name = "default_" + key;
    }
    if (data['channels'] != null) {
      data['channels'].forEach((v) {
        channels.add(UserChannelsModel.fromData(v, "base"));
      });
    }
    if (data['channels_vr'] != null) {
      data['channels_vr'].forEach((v) {
        channelsVr.add(UserChannelsModel.fromData(v, "vr"));
      });
    }
    if (data['channels_oc'] != null) {
      data['channels_oc'].forEach((v) {
        channelsOfr.add(UserChannelsModel.fromData(v, "oc"));
      });
    }
    if (data['channels_com'] != null) {
      channelsCom = [];
      data['channels_com'].forEach((v) {
        channelsCom.add(UserChannelsModel.fromData(v, "com"));
      });
    }
    if (data['channels_ven'] != null) {
      channelsVen = [];
      data['channels_ven'].forEach((v) {
        channelsVen.add(UserChannelsModel.fromData(v, "com"));
      });
    }

    roles = data['roles'] != null ? data['roles'].cast<String>() : [];
    roles.add("manager");
    isActive = data['isactive'];
    isEmployee = data['isemployee'];
    isEmployee = true;
  }

  void consolidateChannelsForVirtualRoom() {
    for (UserChannelsModel ucm in channelsVr) {
      UserChannelsModel matched = null;
      for (UserChannelsModel ucmCon in channelsOfr) {
        if (ucmCon.channel == ucm.channel) {
          ucmCon.consolidated = true;
          break;
        }
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.channels != null) {
      data['channels'] = this.channels.map((v) => v.toJson()).toList();
    }
    data['roles'] = this.roles;
    data['isactive'] = this.isActive;
    data['isemployee'] = this.isEmployee;
    return data;
  }
}
