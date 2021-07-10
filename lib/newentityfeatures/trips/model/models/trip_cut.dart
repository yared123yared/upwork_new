import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/common/helputil.dart';
import 'package:flutter/material.dart';

import '../models.dart';
import 'route_trip.dart';

class TripCut{
  String name;
  String id;
  DateTime startDate;
  DateTime endDate;
  int checkInTime;
  bool isActive;
  List<RouteTripModel> routeTrips;
  String dayOfWeek;
  TripCut(
      {this.name,
      this.startDate,
      this.endDate,
      this.checkInTime,
      this.dayOfWeek,
      this.isActive = false,
      this.routeTrips});

  TripCut.fromJson(
      {@required Map<String, dynamic> json, @required String docId}) {
    this.id = docId;
    this.name = json['tripcutname'];
    this.startDate = HelpUtil.toDate(timestamp: json['startdate']);
    this.endDate = HelpUtil.toDate(timestamp: json['enddate']);
    this.checkInTime = json['checkintime'];
    this.isActive = json['isactive'];
    List<RouteTripModel> trips = [];
    if (json['routetrips'] != null) {
      json['routetrips'].forEach((routeTrip) => trips.add(
          RouteTripModel.fromJson(
              json: routeTrip, docId: routeTrip['tripname'])));
    }
    this.dayOfWeek = json['dayofweek'];
    this.routeTrips = trips;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['tripcutname'] = this.name.toLowerCase();
    data['startdate'] =
        HelpUtil.toTimeStamp(dateTime: this.startDate).toInt();
    data['enddate'] =
        HelpUtil.toTimeStamp(dateTime: this.endDate).toInt();
    data['checkintime'] = this.checkInTime;
    data['isactive'] = this.isActive;
    var routeTrips = List.generate(
        this.routeTrips.length, (index) => this.routeTrips[index].toJson());
    data['routetrips'] = routeTrips;
    data['dayofweek'] = this.dayOfWeek;
    return data;
  }

  static List<TripCut> listFromJson(List<DocumentSnapshot> json) {
    List<TripCut> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(TripCut.fromJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}
