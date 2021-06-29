import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models.dart';

class Relation {
  String id;
  String name;
  TripCutShort tripCut;
  Vehicle vehicleModel;
  RegisteredUser staff1;
  RegisteredUser staff2;
  DateTime startDate;
  DateTime endDate;
  bool isActive;
  String dayOfWeek;
  DateTime lastCheckInDateStaff1;
  DateTime lastCheckInDateStaff2;

  Relation({
    this.id,
    this.lastCheckInDateStaff1,
    this.lastCheckInDateStaff2,
    this.name,
    this.tripCut,
    this.vehicleModel,
    this.staff1,
    this.staff2,
    this.startDate,
    this.dayOfWeek,
    this.endDate,
    this.isActive = false,
  });

  Relation.fromJson(
      {@required Map<String, dynamic> json, @required String docId}) {
    this.id = docId;
    this.tripCut = TripCutShort.fromJson(
      json: json['tripcut'],
    );
    this.vehicleModel = Vehicle.fromJson(json: json['vehicle']);
    this.staff1 = RegisteredUser.fromJson(json['staff1']);
    this.staff2 = RegisteredUser.fromJson(json['staff2']);
    this.isActive = json['isactive'];
    this.startDate = CommonUIHandler.toDate(
      timestamp: json['startdate'],
    );
    this.endDate = CommonUIHandler.toDate(timestamp: json['enddate']);
    this.name = json['name'];
    this.dayOfWeek = json['dayofweek'];
    this.lastCheckInDateStaff1 = json['lastcheckindatestaff1'] != null
        ? CommonUIHandler.toDate(timestamp: json['lastcheckindatestaff1'])
        : null;
    this.lastCheckInDateStaff2 = json['lastcheckindatestaff2'] != null
        ? CommonUIHandler.toDate(timestamp: json['lastcheckindatestaff2'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['isactive'] = this.isActive;
    data['tripcut'] = this.tripCut.toJson();
    data['vehicle'] = this.vehicleModel.toJson();
    data['staff1'] = this.staff1.toJson();
    data['staff2'] = this.staff2.toJson();
    data['startdate'] =
        CommonUIHandler.toTimeStamp(dateTime: this.startDate).toInt();
    data['enddate'] =
        CommonUIHandler.toTimeStamp(dateTime: this.endDate).toInt();
    data['name'] = this.name;
    data['dayofweek'] = this.tripCut.dayOfWeek;
    data['lastcheckindatestaff1'] = this.lastCheckInDateStaff1 != null
        ? CommonUIHandler.toTimeStamp(dateTime: this.lastCheckInDateStaff1)
            .toInt()
        : null;
    data['lastcheckindatestaff2'] = this.lastCheckInDateStaff2 != null
        ? CommonUIHandler.toTimeStamp(dateTime: this.lastCheckInDateStaff2)
            .toInt()
        : null;
    return data;
  }

  static List<Relation> listFromJson(List<DocumentSnapshot> json) {
    List<Relation> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(Relation.fromJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}

// class Staff extends Equatable {
//   String name;
//   String id;

//   Staff({@required this.name, @required this.id});
//   Staff.fromJson({@required Map<String, dynamic> json}) {
//     this.id = json['appuserid'];
//     this.name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final data = Map<String, dynamic>();
//     data['name'] = this.name;
//     data['appuserid'] = this.id;
//     return data;
//   }

//   static List<Staff> listFromJson(List<DocumentSnapshot> json) {
//     List<Staff> _list = [];
//     if (json != null) {
//       json.forEach((j) {
//         _list.add(Staff.fromJson(json: j.data()));
//       });
//     }
//     return _list;
//   }

//   @override
//   List<Object> get props => [this.name, this.id];
// }

class Vehicle {
  String docId;
  String numberPlate;

  Vehicle.fromJson({@required Map<String, dynamic> json}) {
    this.docId = json['id'];
    this.numberPlate = json['Numberplate'];
  }

  Vehicle.fromSearchJson({@required Map<String, dynamic> json, String docId}) {
    this.docId = docId;
    this.numberPlate = json['Numberplate'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = this.docId;
    data['Numberplate'] = this.numberPlate;
    return data;
  }

  static List<Vehicle> listFromJson(List<DocumentSnapshot> json) {
    List<Vehicle> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(Vehicle.fromSearchJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}

class TripCutShort {
  String docId;
  String name;
  String dayOfWeek;

  TripCutShort.fromJson({@required Map<String, dynamic> json}) {
    this.docId = json['id'];
    this.name = json['tripcutname'];
    this.dayOfWeek = json['dayofweek'];
  }

  TripCutShort.fromSearchJson(
      {@required Map<String, dynamic> json, String docId}) {
    this.docId = docId;
    this.name = json['tripcutname'];
    this.dayOfWeek = json['dayofweek'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = this.docId;
    data['tripcutname'] = this.name;
    data['dayofweek'] = this.dayOfWeek;
    return data;
  }

  static List<TripCutShort> listFromJson(List<DocumentSnapshot> json) {
    List<TripCutShort> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(TripCutShort.fromSearchJson(json: j.data(), docId: j.id));
      });
    }
    return _list;
  }
}
