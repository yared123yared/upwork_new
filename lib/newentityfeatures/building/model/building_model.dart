import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class BuildingModel extends Equatable {
  List<String> attachedGate;
  String buildingID;
  String buildingName;
  String address;
  double latitude;
  double longitude;
  num version;

  BuildingModel({
    this.address,
    this.version,
    this.buildingID,
    this.attachedGate,
    this.buildingName,
    this.latitude,
    this.longitude,
  });

  @override
  List<Object> get props => [
        address,
        version,
        attachedGate,
        buildingName,
        latitude,
        longitude,
        buildingID,
      ];

  BuildingModel copyWith({
    List<String> attachedGate,
    String address,
    String buildingName,
    String latitude,
    String longitude,
    num version,
  }) {
    return BuildingModel(
      address: address ?? this.address,
      buildingName: buildingName ?? this.buildingName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      version: version ?? this.version,
      attachedGate: attachedGate ?? this.attachedGate,
    );
  }

  BuildingModel.fromJson(Map<String, dynamic> json, String docID) {
    buildingName = json['buildingname'];
    buildingID = docID;
    address = json['address'];
    if (json['attachedgate'] != null) {
      json['attachedgate'].forEach((v) {
        attachedGate.add(v);
      });
    } else {
      attachedGate = [];
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (attachedGate != null) {
      data['attachedgate'] = attachedGate;
    }
    data['address'] = this.address;
    data['buildingname'] = this.buildingName;
    data['latitude'] = this.latitude;

    data['longitude'] = this.longitude;
    data['version'] = this.version;

    return data;
  }

  static List<BuildingModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<BuildingModel> _list;
    if (json != null) {
      json.asMap().forEach((index, j) {
        _list.add(BuildingModel.fromJson(j(), docID[index]));
      });
    } else {
      _list = [];
    }
    return _list;
  }
}
