import '../models.dart';

class TripCutCurrentStatus {
  bool isActive;
  double staffLat;
  double staffLong;
  String tripId;
  DateTime tripStartTime;
  String vehicleNumPlate;
  TripCutCurrentStatus({
    this.isActive,
    this.staffLat,
    this.staffLong,
    this.tripId,
    this.tripStartTime,
    this.vehicleNumPlate,
  });

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['isactive'] = this.isActive;
    data['lat_staff'] = this.staffLat;
    data['long_staff'] = this.staffLong;
    data['tripid'] = this.tripId;
    data['tripstarttime'] =
        CommonUIHandler.toTimeStamp(dateTime: this.tripStartTime).toInt();
    data['vehicleNumPlate'] = this.vehicleNumPlate;

    return data;
  }

  TripCutCurrentStatus.fromJson(Map<String, dynamic> json) {
    this.isActive = json['isactive'];
    this.staffLat = json['lat_staff'];
    this.staffLong = json['long_staff'];
    this.tripId = json['tripid'];
    this.tripStartTime = json['tripstarttime'] != null
        ? CommonUIHandler.toDate(timestamp: json['tripstarttime'])
        : null;
    this.vehicleNumPlate = json['vehicleNumPlate'];
  }
}
