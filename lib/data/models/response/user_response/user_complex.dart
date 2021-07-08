import 'package:complex/data/models/response/user_response/residential_unit.dart';
import 'package:complex/data/models/response/user_response/user_channel_model.dart';

class UserComplex {
  List<UserChannelsModel> channels;
  String name;
  List<String> roles;
  bool isActive;
  String complexID;
  List<ResidentUnits> ownerunits;
  List<UserChannelsModel> channelsOc;
  bool isEmployee;
  bool isEndUser;
  List<ResidentUnits> residentunits;

  List<String> getUnitList()
  {
    List<String> st = [];
    if(residentunits !=null)
    {
      for(var k in residentunits)
        st.add(k.rd);
      return st;
    }
    return st;
  }
  UserComplex({
    this.channels,
    this.name,
    this.complexID,
    this.roles,
    this.isActive,
    this.ownerunits,
    this.channelsOc,
    this.isEmployee,
    this.residentunits,
  });

  UserComplex.fromData(Map<String, dynamic> data, String key) {
    complexID = key;
    if (data['channels'] != null) {
      channels = [];
      data['channels'].forEach((v) {
        channels.add(UserChannelsModel.fromData(v, "base"));
      });
    }
    roles = data['roles'] != null ? data['roles'].cast<String>() : [];
    isActive = data['isactive'];
    if (data['ownerunits'] != null) {
      ownerunits = [];
      data['ownerunits'].forEach((v) {
        ownerunits.add(ResidentUnits.fromData(v));
      });
    } else {
      ownerunits = ownerunits ?? [];
    }
    if (data['residentunits'] != null) {
      residentunits = [];
      data['residentunits'].forEach((v) {
        residentunits.add(ResidentUnits.fromData(v));
      });
    } else {
      residentunits = [];
    }
    if (data['ename'] != null)
      name = data['ename'];
    else {
      name = "default_" + key;
    }

    // if (data['residentunits'] != null) {
    //   ownerunits = List<ResidentUnits>();
    //   data['residentunits'].forEach((v) {
    //     ownerunits.add(ResidentUnits.fromData(v));
    //   });
    // } else {
    //   ownerunits = ownerunits ?? [];
    // }
    if (data['channels_oc'] != null) {
      channelsOc = [];
      data['channels_oc'].forEach((v) {
        channelsOc.add(UserChannelsModel.fromData(v, "oc"));
      });
    }
    isEmployee = data['isemployee'];

    print("resident ${residentunits.length}");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.channels != null) {
      data['channels'] = this.channels.map((v) => v.toJson()).toList();
    }
    if (this.channelsOc != null) {
      data['channels_oc'] = this.channels.map((v) => v.toJson()).toList();
    }
    data['roles'] = this.roles;
    data['isactive'] = this.isActive;
    data['ownerunits'] = this.ownerunits;
    data['isemployee'] = this.isEmployee;
    return data;
  }
}
