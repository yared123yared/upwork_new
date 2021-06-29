import 'dart:convert';

import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';

class DeliveryTrip {
  String tripId;
  bool ready;
  bool isStaffVendor;
  String assignedToId;
  String assignedToName;
  List<orderinfomodel> assignedorders;
  DeliveryTrip({
    this.tripId,
    this.ready: false,
    this.isStaffVendor: false,
    this.assignedToId,
    this.assignedToName,
    this.assignedorders,
  });

  DeliveryTrip copyWith({
    String tripId,
    bool ready,
    bool isStaffVendor,
    String assignedToId,
    String assignedToName,
    List<orderinfomodel> assignedorders,
  }) {
    return DeliveryTrip(
      tripId: tripId ?? this.tripId,
      ready: ready ?? this.ready,
      isStaffVendor: isStaffVendor ?? this.isStaffVendor,
      assignedToId: assignedToId ?? this.assignedToId,
      assignedToName: assignedToName ?? this.assignedToName,
      assignedorders: assignedorders ?? this.assignedorders,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tripId': tripId,
      'ready': ready,
      'isStaffVendor': isStaffVendor,
      'assignedToId': assignedToId,
      'assignedToName': assignedToName,
      'assignedorders': assignedorders?.map((x) => x.toJson())?.toList(),
    };
  }

  factory DeliveryTrip.fromMap(Map<String, dynamic> map) {
    return DeliveryTrip(
      tripId: map['tripId'],
      ready: map['ready'],
      isStaffVendor: map['isStaffVendor'],
      assignedToId: map['assignedToId'],
      assignedToName: map['assignedToName'],
      assignedorders: List<orderinfomodel>.from(
          map['assignedorders']?.map((x) => orderinfomodel.fromJson(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory DeliveryTrip.fromJson(String source) =>
      DeliveryTrip.fromMap(json.decode(source));
}
