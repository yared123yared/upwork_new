import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models.dart';

class RouteTripModel {
  String dayOfWeek;
  bool isActive;
  String id;
  String name;
  String startTime;
  String routeName;
  String managedById;
  String managedByName;
  String maximumAdvancedTicket;
  String routeId;
  String routeType;

  RouteTripModel({
    this.name,
    this.maximumAdvancedTicket,
    this.isActive = false,
    this.dayOfWeek,
    this.routeName,
    this.managedById,
    this.managedByName,
    this.startTime,
    this.id,
    this.routeType,
    this.routeId,
  });

  RouteTripModel copyWith({
    String dayOfWeek,
    String routeId,
    String routeType,
    String routeName,
    bool isActive,
    String maximumAdvancedTicket,
    String id,
    RouteModel route,
    String name,
    String startTime,
    String managedById,
    String managedByName,
  }) {
    return RouteTripModel(
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      isActive: isActive ?? this.isActive,
      id: id ?? this.id,
      routeName: routeName ?? this.routeName,
      routeType: routeType ?? this.routeType,
      routeId: routeId ?? this.routeId,
      startTime: startTime ?? this.startTime,
      name: name ?? this.name,
      maximumAdvancedTicket:
          maximumAdvancedTicket ?? this.maximumAdvancedTicket,
      managedById: managedById ?? this.managedById,
      managedByName: managedByName ?? this.managedByName,
    );
  }

  RouteTripModel.fromJson(
      {@required Map<String, dynamic> json, @required String docId}) {
    // if (json['daysofweek'] != null) {
    //   dayOfWeek = List<String>();
    //   json['daysofweek'].forEach((v) {
    //     dayOfWeek.add(v);
    //   });
    // } else {
    //   dayOfWeek = [];
    // }
    id = docId;
    dayOfWeek = json['dayofweek'];
    name = json['tripname'];
    managedByName = json['managedbyname'];
    managedById = json['managedbyid'];
    isActive = json['isactive'];
    routeName = json['routename'];
    startTime = json['starttime'];
    maximumAdvancedTicket = json['maximumadvancedticket'];
    routeId = json['routeid'];
    routeType = json['routetype'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    // List<String> dayOfWeek = [];
    // this.dayOfWeek.forEach((element) {
    //   dayOfWeek.add(element);
    // });
    data['dayofweek'] = this.dayOfWeek;
    data['tripname'] =
        this.routeName + '@' + this.startTime + '@' + this.dayOfWeek;
    data['isactive'] = this.isActive;
    data['managedbyname'] = this.managedByName;
    data['managedbyid'] = this.managedById;
    data['routename'] = this.routeName;
    data['starttime'] = this.startTime;
    data['maximumadvancedticket'] = this.maximumAdvancedTicket;
    data['routeid'] = this.routeId;
    data['routetype'] = this.routeType;
    return data;
  }

  static List<RouteTripModel> listFromJson(List<DocumentSnapshot> json) {
    List<RouteTripModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(RouteTripModel.fromJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}

class ManagedTrip {
  String managedById;
  String managedByName;
  String docId;

  ManagedTrip({this.managedById, this.managedByName, this.docId});

  ManagedTrip.fromJson(
      {@required Map<String, dynamic> json, @required String docId}) {
    this.managedByName = json['serviceprovidername'];
    this.managedById = json['serviceproviderid'];
    this.docId = docId;
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['serviceprovidername'] = this.managedByName;
    data['serviceproviderid'] = this.managedById;

    return data;
  }

  static List<ManagedTrip> listFromJson(List<DocumentSnapshot> json) {
    List<ManagedTrip> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(ManagedTrip.fromJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}

class DayOfWeek {
  String dayOfWeek;
  bool isSelected;

  DayOfWeek({this.dayOfWeek, this.isSelected});

  DayOfWeek copyWith({String dayOfWeek, bool isSelected}) {
    return DayOfWeek(
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        isSelected: isSelected ?? this.isSelected);
  }

// DaysOfWeek.fromData(Map<String, dynamic> data) {
//   dayOfWeek = data["daysofweek"];
// }
// Map<String, dynamic> toData() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['daysofweek'] = this.dayOfWeek;
//   return data;
// }
}
//
// class Relation extends Equatable {
//   String relation;
//
//   Relation({
//     this.relation,
//   });
//
//   Relation copyWith({
//     String relation,
//   }) {
//     return Relation(
//       relation: relation ?? this.relation,
//     );
//   }
//
//   @override
//   List<Object> get props => [relation];
//   Relation.fromData(Map<String, dynamic> data) {
//     relation = data["relation"];
//   }
//   Map<String, dynamic> toData() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['relation'] = this.relation;
//     return data;
//   }
// }
