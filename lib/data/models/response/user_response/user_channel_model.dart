class UserChannelsModel {
  String rights;
  String channel;
  String chType;
  String vrRoomName;
  String offering;
  String ofrKey;
  List<String> offeringSameVirtualRoom;
  bool consolidated;
  bool isp;
  String sessionTerm;
  String customerUserId;
  String displayName;

  UserChannelsModel(
      {this.rights,
      this.channel,
      this.chType,
      this.displayName,
      this.isp,
      this.offering,
      this.ofrKey,
      this.sessionTerm,
      this.customerUserId,
      this.vrRoomName});

  UserChannelsModel.fromData(Map<String, dynamic> data, String recchtype) {
    rights = data.containsKey('rights') ? data['rights'] : null;
    channel = data.containsKey('channel') ? data['channel'] : null;
    consolidated = false;
    chType = recchtype;
    customerUserId = data.containsKey('id') ? data['id'] : null;
    ofrKey = data.containsKey('ofr') ? data['ofr'] : null;
    isp = data.containsKey('isp') ? data['isp'] : null;
    vrRoomName = data.containsKey('vr') ? data['vr'] : null;
    sessionTerm = data.containsKey('st') ? data['st'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['rights'] = this.rights;
    data['channel'] = this.channel;
    return data;
  }
}
