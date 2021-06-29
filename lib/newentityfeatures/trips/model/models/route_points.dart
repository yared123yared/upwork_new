import 'package:cloud_firestore/cloud_firestore.dart';

class RoutePointsModel {
  String docId;
  GeoPoint geoPoint;
  String pointName;
  String shortCode;
  String state;
  String zipCode;
  String town;
  String district;
  String city;
  RoutePointsModel({
    this.shortCode,
    this.docId,
    this.pointName,
    this.geoPoint,
    this.state,
    this.zipCode,
    this.town,
    this.district,
    this.city,
  });
  RoutePointsModel.fromJson(Map<String, dynamic> json, String docId) {
    this.docId = docId;
    this.geoPoint = json['geopoint'];
    this.pointName = json['point'];
    this.shortCode = json['shortcode'];
    this.state = json['state'];
    this.zipCode = json['zipcode'];
    this.town = json['town'];
    this.district = json['district'];
    this.city = json['city'];
  }

  Map<String, dynamic> toJson() {
    /// Properties are saved in lower case so to search for them and therefore no mismatch would
    /// occur.
    final data = Map<String, dynamic>();
    data['state'] = this.state.toLowerCase();
    data['zipcode'] = this.zipCode;
    data['town'] = this.town.toLowerCase();
    data['district'] = this.district.toLowerCase();
    data['city'] = this.city.toLowerCase();
    data['geopoint'] = this.geoPoint;
    data['point'] = this.pointName.toLowerCase();
    data['shortcode'] = this.shortCode;
    return data;
  }

  Map<String, dynamic> toJsonCloud() {
    final data = Map<String, dynamic>();
    data['state'] = this.state.toLowerCase();
    data['zipcode'] = this.zipCode;
    data['town'] = this.town.toLowerCase();
    data['district'] = this.district.toLowerCase();
    data['city'] = this.city.toLowerCase();
    data['lat'] = this.geoPoint.latitude;
    data['long'] = this.geoPoint.longitude;
    data['point'] = this.pointName.toLowerCase();
    data['shortcode'] = this.shortCode;
    return data;
  }

  /// A List of [DocumentSnapShot] is required so to extract the document ID which will make accessing
  /// documents for editing faster.
  static List<RoutePointsModel> listFromJson(List<DocumentSnapshot> json) {
    List<RoutePointsModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(RoutePointsModel.fromJson(j.data(), j.id));
      });
    }
    return _list;
  }
}
