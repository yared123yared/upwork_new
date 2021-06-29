import 'route_main_point.dart';

class Ticket {
  RouteMainPoints startPoint;
  RouteMainPoints endPoint;
  int adultNum;
  int childNum;
  int luggageWeight;

  Ticket(
      {this.startPoint,
      this.luggageWeight,
      this.endPoint,
      this.adultNum,
      this.childNum});

  Ticket.fromJson(Map<String, dynamic> json) {
    this.startPoint = RouteMainPoints.fromJson(json['startpoint']);
    this.endPoint = RouteMainPoints.fromJson(json['endpoint']);
    this.adultNum = json['adultnum'];
    this.childNum = json['childnum'];
    this.luggageWeight = json['luggageweight'];
  }

  Map<String, dynamic> toJson() {
    return {
      'startpoint': this.startPoint.toJson(),
      'endpoint': this.endPoint.toJson(),
      'adultnum': this.adultNum,
      'childnum': this.childNum,
      'luggageweight': this.luggageWeight
    };
  }
}
