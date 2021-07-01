import 'package:cloud_firestore/cloud_firestore.dart';

import '../models.dart';
import 'route_main_point.dart';

enum RouteType { Public, Private }

class RouteModel {
  String description;
  RegisteredUser staff;
  String id;
  List<RouteMainPoints> mainPoints;
  String name;
  RouteType type;
  num version;
  List<String> tripCutIDs;
  bool isRouteReversed;
  String reversedName;
  RouteModel({
    this.version = 1,
    this.tripCutIDs,
    this.isRouteReversed = false,
    this.name,
    this.reversedName,
    this.type,
    this.staff,
    this.mainPoints,
    this.id,
    this.description,
  });

  RouteModel copyWith({
    String description,
    String id,
    List<RouteMainPoints> mainPoints,
    String name,
    String reversedName,
    RegisteredUser staff,
    bool isRouteReversed,
    RouteType type,
    num version,
  }) {
    return RouteModel(
      description: description ?? this.description,
      id: id ?? this.id,
      isRouteReversed: isRouteReversed ?? this.isRouteReversed,
      mainPoints: mainPoints ?? this.mainPoints,
      name: name ?? this.name,
      staff: staff ?? this.staff,
      type: type ?? this.type,
      reversedName: reversedName ?? this.reversedName,
      version: version ?? this.version,
    );
  }

  RouteModel.fromJson(Map<String, dynamic> data, String docId) {
    this.tripCutIDs = data['tripcuts'] == null
        ? []
        : List<String>.from(
            data['tripcuts'].map((tripCutId) => tripCutId).toList());
    description = data['routedescription'];
    id = docId;
    isRouteReversed = data['isreversed'];
    staff = RegisteredUser.fromJson(data['routemanager']);
    if (data['routemaninpoints'] != null) {
      mainPoints = <RouteMainPoints>[];
      data['routemaninpoints']
          .forEach((v) => mainPoints.add(RouteMainPoints.fromJson(v)));
    } else {
      mainPoints = [];
    }
    if (isRouteReversed ?? false) {
      reversedName = data['reversedroutename'];
    }
    name = data['routename'];
    type = data['routetype'] == 'PUBLIC' ? RouteType.Public : RouteType.Private;
    version = data['version'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    List<Map> mainPointsData = [];
    this.mainPoints.forEach(
        (routeMainPoint) => mainPointsData.add(routeMainPoint.toJson()));
    var startPointList = Map<String, bool>();
    this.mainPoints.forEach(
        (mainPoint) => startPointList['${mainPoint.pointName}'] = true);
    data['startpointlist'] = startPointList;
    data['routedescription'] = this.description;
    data['isreversed'] = this.isRouteReversed;
    if (this.isRouteReversed) {
      data['reversedroutename'] = this.reversedName;
    }
    data['routetype'] = this.type == RouteType.Public ? 'PUBLIC' : 'PRIVATE';
    data['version'] = 1;
    data['tripcuts'] = this.tripCutIDs;
    data['routename'] = this.name.toLowerCase();
    data['routemanager'] = this.staff.toJson();
    data['routemaninpoints'] = mainPointsData;
    return data;
  }

  /// Used to create extra route when the route can be reversible.
  Map<String, dynamic> toJsonReversed() {
    final data = Map<String, dynamic>();
    List<Map> mainPointsData = [];
    this.mainPoints.forEach((routeMainPoint) {
      mainPointsData.add(routeMainPoint.toJson());
    });
    var startPointList = Map<String, bool>();
    List<RouteMainPoints> reversedMainPoints = [...this.mainPoints];
    reversedMainPoints.reversed.toList().forEach(
        (mainPoint) => startPointList['${mainPoint.pointName}'] = true);
    data['startpointlist'] = startPointList;
    data['routedescription'] = this.description;
    data['isreversed'] = this.isRouteReversed;
    data['routetype'] = this.type == RouteType.Public ? 'PUBLIC' : 'PRIVATE';
    data['version'] = this.version;
    data['routename'] = this.reversedName;
    data['reversedroutename'] = this.name;
    data['routemanager'] = this.staff.toJson();
    data['routemaninpoints'] = mainPointsData.reversed.toList();
    return data;
  }

  static List<RouteModel> listFromJson(List<DocumentSnapshot> json) {
    List<RouteModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(RouteModel.fromJson(j.data(), j.id));
      });
    }
    return _list;
  }
}
