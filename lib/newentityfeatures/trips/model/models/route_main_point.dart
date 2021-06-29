import 'package:cloud_firestore/cloud_firestore.dart';

class RouteMainPoints {
  double distance;
  GeoPoint geoPoint;
  String pointName;
  double timeOffset;

  RouteMainPoints({
    this.pointName,
    this.geoPoint,
    this.distance,
    this.timeOffset,
  });

  RouteMainPoints copyWith({
    int distance,
    GeoPoint geoPoint,
    String pointName,
    int timeOfSet,
  }) {
    return RouteMainPoints(
      distance: distance ?? this.distance,
      geoPoint: geoPoint ?? this.geoPoint,
      pointName: pointName ?? this.pointName,
      timeOffset: timeOfSet ?? this.timeOffset,
    );
  }

  RouteMainPoints.fromJson(Map<String, dynamic> data) {
    this.distance = double.parse(data["distance"].toString());
    this.pointName = data["pointName"];
    this.geoPoint = data['geopoint'];
    this.timeOffset = data["timeoffset"];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data["distance"] = this.distance;
    data["pointName"] = this.pointName;
    data['geopoint'] = this.geoPoint;
    data["timeoffset"] = this.timeOffset;
    return data;
  }
}
