import 'package:meta/meta.dart';

class ParentInteractionSingleValueListModel {
  String keyname;
  List<NameValue> data;
  ParentInteractionSingleValueListModel({this.keyname, this.data});

  ParentInteractionSingleValueListModel copyWith({
    String curdate,
    List<NameValue> data,
  }) {
    return ParentInteractionSingleValueListModel(
        keyname: curdate ?? this.keyname, data: data ?? this.data);
  }

  ParentInteractionSingleValueListModel.fromJson(
      {@required Map<String, dynamic> json}) {
    {
      for (String s1 in json.keys) {
        keyname = s1; //json['key'];
        keyname = keyname.replaceAll("f_", "");
        data = [];
        if (json['value'] != null) {
          data = <NameValue>[];
          json['value'].forEach((v) {
            data.add(NameValue.fromJson(json: Map<String, dynamic>.from(v)));
          });
        }
      }
    }
  }
}

class NameValue {
  String name;
  String value;
  NameValue({this.name, this.value});

  NameValue copyWith({
    String name,
    String value,
  }) {
    return NameValue(name: name ?? this.name, value: value ?? this.value);
  }

  NameValue.fromJson({@required Map<String, dynamic> json}) {
    for (String s in json.keys) {
      name = s; //json['name'];
      value = json[s]; //json['value'];
      name = name.replaceAll("f_", "");
    }
  }
}
