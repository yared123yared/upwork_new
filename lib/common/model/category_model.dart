// To parse this JSON data, do
//
//     final caregory = caregoryFromJson(jsonString);

import 'dart:convert';

Caregory caregoryFromJson(String str) => Caregory.fromJson(json.decode(str));

String caregoryToJson(Caregory data) => json.encode(data.toJson());

class Caregory {
    Caregory({
        this.categoryinfolist,
        this.dynamicprops,
    });

    List<Categoryinfolist> categoryinfolist;
    dynamic dynamicprops;

    factory Caregory.fromJson(Map<String, dynamic> json) => Caregory(
        categoryinfolist: List<Categoryinfolist>.from(json["categoryinfolist"].map((x) => Categoryinfolist.fromJson(x))),
        dynamicprops: json["dynamicprops"],
    );

    Map<String, dynamic> toJson() => {
        "categoryinfolist": List<dynamic>.from(categoryinfolist.map((x) => x.toJson())),
        "dynamicprops": dynamicprops,
    };
}

class Categoryinfolist {
    Categoryinfolist({
        this.name,
        this.pricerange,
        this.iconpath,
        this.imagepath,
        this.dynamicpropertiesidentifier,
        this.childcategory,
    });

    String name;
    dynamic pricerange;
    dynamic iconpath;
    String imagepath;
    dynamic dynamicpropertiesidentifier;
    List<Childcategory> childcategory;

    factory Categoryinfolist.fromJson(Map<String, dynamic> json) => Categoryinfolist(
        name: json["name"],
        pricerange: json["pricerange"],
        iconpath: json["iconpath"],
        imagepath: json["imagepath"],
        dynamicpropertiesidentifier: json["dynamicpropertiesidentifier"],
        childcategory: json["childcategory"] == null ? null : List<Childcategory>.from(json["childcategory"].map((x) => Childcategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "pricerange": pricerange,
        "iconpath": iconpath,
        "imagepath": imagepath,
        "dynamicpropertiesidentifier": dynamicpropertiesidentifier,
        "childcategory": childcategory == null ? null : List<dynamic>.from(childcategory.map((x) => x.toJson())),
    };
}

class Childcategory {
    Childcategory({
        this.name,
        this.pricerange,
        this.iconpath,
        this.imagepath,
        this.dynamicpropertiesidentifier,
        this.childcategory,
    });

    String name;
    dynamic pricerange;
    dynamic iconpath;
    String imagepath;
    dynamic dynamicpropertiesidentifier;
    List<Childcategory> childcategory;

    factory Childcategory.fromJson(Map<String, dynamic> json) => Childcategory(
        name: json["name"],
        pricerange: json["pricerange"],
        iconpath: json["iconpath"],
        imagepath: json["imagepath"] == null ? null : json["imagepath"],
        dynamicpropertiesidentifier: json["dynamicpropertiesidentifier"],
        childcategory: json["childcategory"] == null ? null : List<Childcategory>.from(json["childcategory"].map((x) => Childcategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "pricerange": pricerange,
        "iconpath": iconpath,
        "imagepath": imagepath == null ? null : imagepath,
        "dynamicpropertiesidentifier": dynamicpropertiesidentifier,
        "childcategory": childcategory == null ? null : List<dynamic>.from(childcategory.map((x) => x.toJson())),
    };
}
