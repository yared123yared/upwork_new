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
  int numfloor;

  BuildingModel({
    this.address,
    this.version,
    this.buildingID,
    this.attachedGate,
    this.buildingName,
    this.latitude,
    this.longitude,
    this.numfloor,
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
    numfloor,
      ];

  BuildingModel copyWith({
    List<String> attachedGate,
    String address,
    String buildingName,
    String latitude,
    String longitude,
    num version,
    int numfloor,
  }) {
    return BuildingModel(
      address: address ?? this.address,
      buildingName: buildingName ?? this.buildingName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      version: version ?? this.version,
      attachedGate: attachedGate ?? this.attachedGate,
      numfloor :numfloor ?? this.numfloor
    );
  }

  BuildingModel.fromJson(Map<String, dynamic> json, String docID) {
    buildingName = json['buildingname'];
    buildingID = docID;
    address = json['address'];
    if (json['attachedgate'] != null) {
      attachedGate = [];
      json['attachedgate'].forEach((v) {
        attachedGate.add(v);
      });
    } else {
      attachedGate = [];
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
    version = json['version'];
    numfloor =json['numfloor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    if (attachedGate != null) {
      data['attachedgate'] = attachedGate;
    }

    data['address'] = this.address;
    data['buildingname'] = this.buildingName;
    data['latitude'] = this.latitude;

    data['longitude'] = this.longitude;
    data['version'] = this.version;
    data['numfloor']=this.numfloor;

    return data;
  }

  static List<BuildingModel> listFromJson(
      List<dynamic> json, List<String> docID) {
    List<BuildingModel> _list = <BuildingModel>[];
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
