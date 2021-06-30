import 'package:complex/data/models/response/user_response/complex_model.dart';
import 'package:complex/data/models/response/user_response/service_model.dart';
import 'package:complex/data/models/response/user_response/user_alerts.dart';
import 'package:complex/data/models/response/user_response/user_channel_model.dart';
import 'package:complex/data/models/response/user_response/user_complex.dart';
import 'package:complex/data/models/response/user_response/user_entity.dart';
import 'package:complex/data/models/response/user_response/user_service.dart';

enum moduleT { none, SCHOOL, ORDERS, APPOINTMENT, TRIP }

class UserModel {
  static String get serviceProviderDocumentId => "kF2P9uwiLfYuhYUQbsGK";
  bool isActive;
  String name;
  String qrCode;
  String qrImgLink;
  bool resetPassword;
  List<UserComplex> complexes;
  List<UserService> services;
  List<IndividualChannels> individualChannels;
  Map<String, dynamic> entityNames;
  String userID;
  UserEntity extendedEntityList;
  UserComplex defaultComplexEntity;
  UserService defaultServiceEntity;
  List<UserAlerts> userAlert;
  entityT defaultType;
  moduleT defaultModule;
  EndUserSelection curEndUserSelection;
  ServiceModel defaultServiceModel;
  ComplexModel defaultComplexModel;
  Map<String, String> complexNames;
  Map<String, String> serviceProviderNames;

  //ServiceModelAddProps defaultServiceProps;
  UserModel({
    this.isActive,
    this.name,
    this.qrCode,
    this.userID,
    this.qrImgLink,
    this.resetPassword,
    this.complexes,
    this.services,
  });

  String getNameForEntity(String entitytype, String entityid) {
    if (entitytype == "c") {
      if (complexNames.containsKey(entityid))
        return complexNames[entityid];
      else
        return "UNKNOWN";
    }

    if (entitytype == "s") {
      if (serviceProviderNames.containsKey(entityid))
        return serviceProviderNames[entityid];
      else
        return "UNKNOWN";
    }
    return "";
  }

  String getNameForEntityOld(String entitytype, String entityid) {
    String result = "UNKNOWN";
    if (entitytype == "c") {
      for (var k in entityNames["c"]) {
        var p = Map<String, dynamic>.from(k);
        if (p['id'] == entityid) result = p['name'];
      }
    } else if (entitytype == "s") {
      for (var k in entityNames["s"]) {
        var p = Map<String, dynamic>.from(k);
        if (p['id'] == entityid) result = p['name'];
      }
    }
    if (result == "UNKNOWN") print("unknow");
    return result;
  }

  ChannelListInfo getChannelList() {
    List totalresult = new List();
    ChannelListInfo clinfo = new ChannelListInfo();

    clinfo.myuserchannelmodellist = new List<UserChannelsModel>();
    clinfo.channelwithname = new Map<String, String>();
    clinfo.entitywithchannellist = Map<String, List<String>>();

    if (services != null) {
      for (UserService service in services) {
        String servname = getNameForEntity("s", service.serviceID);
        clinfo.entitywithchannellist[servname] = new List<String>();
        for (var channel in service.channels) {
          clinfo.myuserchannelmodellist.add(channel);
          clinfo.channelwithname[channel.channel] = servname;
          clinfo.entitywithchannellist[servname].add(channel.channel);
        }
        if (service.channelsCom != null) {
          for (var channel in service.channelsCom) {
            clinfo.myuserchannelmodellist.add(channel);
            clinfo.channelwithname[channel.channel] = servname;
            clinfo.entitywithchannellist[servname].add(channel.channel);
          }
        }
        if (service.channelsVr != null) {
          for (var channel in service.channelsVr) {
            clinfo.myuserchannelmodellist.add(channel);
            clinfo.channelwithname[channel.channel] = servname;
            clinfo.entitywithchannellist[servname].add(channel.channel);
          }
        }
      }
    }
    if (complexes != null) {
      for (UserComplex comp in complexes) {
        String compname = getNameForEntity("c", comp.complexID);
        clinfo.entitywithchannellist[compname] = new List<String>();
        for (var channel in comp.channels) {
          clinfo.myuserchannelmodellist.add(channel);
          clinfo.channelwithname[channel.channel] = compname;
          clinfo.entitywithchannellist[compname].add(channel.channel);
        }
      }
    }
    return clinfo;
  }

  List<Object> get props => [isActive, name, qrCode, qrImgLink, resetPassword];

  UserModel copyWith({
    bool isActive,
    String name,
    String qrCode,
    String qrImgLink,
    bool resetPassword,
  }) {
    return UserModel(
      isActive: isActive ?? this.isActive,
      name: name ?? this.name,
      qrCode: qrCode ?? this.qrCode,
      qrImgLink: qrImgLink ?? this.qrImgLink,
      resetPassword: resetPassword ?? this.resetPassword,
    );
  }

  UserModel.fromData(Map<String, dynamic> data, String docID) {
    userID = docID;
    complexes = [];
    services = [];
    isActive = data['isactive'];
    name = data['name'];
    qrCode = data['qrcode'];
    qrImgLink = data['qrimglink'];
    data.forEach((key, value) {
      String _key;
      if (key.startsWith('C_')) {
        if (key.startsWith('C_R_')) {
          _key = key.split('C_R_').last;
          print('user of $key');
          UserComplex ucr = UserComplex.fromData(value, _key);
          ucr.isEndUser = true;
          complexes.add(ucr);
        } else {
          _key = key.split('C_').last;
          UserComplex ucr = UserComplex.fromData(value, _key);
          ucr.isEmployee = true;
          complexes.add(ucr);
        }
      }
    });

    data.forEach((key, value) {
      print("User model $key => $value");
      String _key;
      if (key.startsWith('channels_')) {
        if (individualChannels == null)
          individualChannels = List<IndividualChannels>();
        value.forEach((v) {
          individualChannels.add(new IndividualChannels.fromJson(v));
        });
        print("IndividualChannels length => ${individualChannels.length}");
      }
    });

    data.forEach((key, value) {
      if (key.startsWith('S_')) {
        String _key;
        if (key.startsWith('S_R_')) {
          _key = key.split('S_R_').last;
          print('user of $key');
          UserService us = UserService.fromData(value, _key);
          us.isEndUser = true;
          services.add(us);
        } else {
          _key = key.split('S_').last;
          UserService us = UserService.fromData(value, _key);
          us.isEmployee = true;
          services.add(us);
          print('$key and ${services.length}');
        }
      }
    });
    complexNames = new Map<String, String>();
    serviceProviderNames = new Map<String, String>();
    for (var k in complexes) {
      complexNames[k.complexID] = k.name;
    }
    for (var k in services) {
      serviceProviderNames[k.serviceID] = k.name;
    }
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['isactive'] = this.isActive;
    data['name'] = this.name;
    data['qrcode'] = this.qrCode;
    data['qrimglink'] = this.qrImgLink;

    return data;
  }
}

class SearchInfo {
  String realestatelink;
  String vehclassifierlink;
  String petsclassifierlink;
  String jobsclassifierlink;
  String applianceclassifierlink;
  String furnitureclassifierlink;
  String phoneclassifierlink;
  String serviceprovidersearchlink;
}

class EndUserSelection {
  String currrentSelectedIcon;
  String currentselectedIconType;
  String curselectedServiceProviderId;
  ServiceModel curselectedServiceModel;
}

class ChannelListInfo {
  List<UserChannelsModel> myuserchannelmodellist;
  Map<String, String> channelwithname;
  Map<String, List<String>> entitywithchannellist;
}

class IndividualChannels {
  String rights;
  String channel;
  String cname;
  bool enabled;
  int uId;
  String uniqueid;

  IndividualChannels({
    this.rights,
    this.channel,
    this.cname,
    this.enabled,
    this.uniqueid,
    this.uId,
  });

  IndividualChannels.fromJson(Map<String, dynamic> json) {
    rights = json['rights'];
    channel = json['channel'];
    cname = json['cname'];
    enabled = json['enabled'];
    uniqueid = json['uniqueid'];
    uId = json.containsKey('uid') ? json['uid'] : 1;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rights'] = this.rights;
    data['channel'] = this.channel;
    data['cname'] = this.cname;
    data['enabled'] = this.enabled;
    data['uniqueid'] = this.uniqueid;
    return data;
  }
}
