import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class UnitModel extends Equatable {
  String address;
  String buildingName;
  String channel;
  num floorNum;
  num numFixedParking;
  num numVisitorParking;
  num version;
  String unitID;
  bool hasOwner;
  bool hasResident;

  UnitModel({
    this.version,
    this.buildingName,
    this.unitID,
    this.hasResident = false,
    this.address,
    this.hasOwner = false,
    this.channel,
    this.floorNum,
    this.numFixedParking,
    this.numVisitorParking,
  });

  @override
  List<Object> get props => [
        version,
        buildingName,
        address,
        channel,
        floorNum,
        numFixedParking,
        numVisitorParking,
        unitID
      ];

  UnitModel copyWith({
    String address,
    String buildingName,
    String channel,
    num floorNum,
    num numFixedParking,
    num numVisitorParking,
    num version,
    bool hasOwner,
  }) {
    return UnitModel(
        hasOwner: hasOwner ?? this.hasOwner,
        address: address ?? this.address,
        buildingName: buildingName ?? this.buildingName,
        channel: channel ?? this.channel,
        floorNum: floorNum ?? this.floorNum,
        numFixedParking: numFixedParking ?? this.numFixedParking,
        numVisitorParking: numVisitorParking ?? this.numVisitorParking,
        version: version ?? this.version);
  }

  UnitModel.fromJson(Map<String, dynamic> json, String docID) {
    this.unitID = docID;
    address = json['address'];
    buildingName = json['buildingname'];
    channel = json['channel'];
    floorNum = json['floornum'];
    numFixedParking = json['numfixedparking'];
    numVisitorParking = json['numvisitorparking'];
    version = json['version'];
    hasOwner = false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = new Map<String, dynamic>();

    json['address'] = this.address;
    json['buildingname'] = this.buildingName;
    json['channel'] = this.channel;
    json['floornum'] = this.floorNum;
    json['numfixedparking'] = this.numFixedParking;
    json['numvisitorparking'] = this.numVisitorParking;
    json['version'] = this.version;
    return json;
  }

  static List<UnitModel> listFromJson(List<dynamic> json, List<String> docID) {
    List<UnitModel> _list = [];
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(UnitModel.fromJson(j(), docID[index]));
      });
    }
    return _list;
  }
}
