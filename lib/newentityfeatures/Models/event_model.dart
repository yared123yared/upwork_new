import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class EventModel extends Equatable {
  num date;
  List<HomeWork> homeWork;

  EventModel({this.date, this.homeWork});

  @override
  List<Object> get props => [date, homeWork];

  EventModel copyWith({num date, List<HomeWork> homeWork}) {
    return EventModel(
        date: date ?? this.date, homeWork: homeWork ?? this.homeWork);
  }

  EventModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['hw'] != null) {
      homeWork = <HomeWork>[];
      json['hw'].forEach((v) {
        homeWork.add(HomeWork.fromData(v));
      });
    } else {
      homeWork = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    return data;
  }

  static List<EventModel> listFromJson(List<dynamic> json) {
    List<EventModel> _list = [];
    if (json != null) {
      json.forEach((j) {
        _list.add(EventModel.fromJson(j));
      });
    }
    return _list;
  }
}

// ignore: must_be_immutable
class HomeWork extends Equatable {
  String info;
  String ofr;

  HomeWork({this.info, this.ofr});

  HomeWork copyWith({String info, num ofr}) {
    return HomeWork(info: info ?? this.info, ofr: ofr ?? this.ofr);
  }

  @override
  List<Object> get props => [info, ofr];

  HomeWork.fromData(Map<String, dynamic> data) {
    info = data["info"];
    ofr = data["ofr"];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["info"] = info;
    data["ofr"] = ofr;

    return data;
  }
}
