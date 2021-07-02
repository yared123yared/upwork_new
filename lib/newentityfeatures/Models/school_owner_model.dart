import 'package:equatable/equatable.dart';

class SchoolOwner extends Equatable {
  String display;
  String id;

  SchoolOwner({this.display, this.id});
  static List<Map> convertListOfSchoolOwner(List<SchoolOwner> secondaryOwnerV) {
    if (secondaryOwnerV != null) {
      List<Map> secowner = [];
      secondaryOwnerV.forEach((element) {
        secowner.add(element.toData());
      });
      return secowner;
    } else
      return null;
  }

  static bool arememberequal(SchoolOwner mem1, SchoolOwner mem2) {
    if (mem1 == null && mem2 != null) {
      return false;
    } else if (mem2 == null && mem1 != null) {
      return false;
    } else if (mem1 == null && mem2 == null) {
      return true;
    } else {
      if (mem1.id == mem2.id)
        return true;
      else
        return false;
    }
    return false;
  }

  static bool arelistequal(List<SchoolOwner> mem1, List<SchoolOwner> mem2) {
    if (mem1 == null && mem2 != null) {
      return false;
    } else if (mem2 == null && mem1 != null) {
      return false;
    } else if (mem1 == null && mem2 == null) {
      return true;
    } else if (mem1.length == mem2.length) {
      for (int i = 0; i < mem1.length; i++) {
        if (mem1[i] != mem2[i]) {
          return false;
        }
        return true;
      }
    } else {
      return false;
    }
  }

  SchoolOwner copyWith({
    String display,
    String id,
  }) {
    return SchoolOwner(
      display: display ?? this.display,
      id: id ?? this.id,
    );
  }

  @override
  List<Object> get props => [
        display,
        id,
      ];

  SchoolOwner.fromData(Map<String, dynamic> data) {
    display = data['display'];
    id = data['id'];
  }

  Map<String, dynamic> toData() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['display'] = this.display;
    data['id'] = this.id;

    return data;
  }
}
