import 'dart:convert';

class VendorModel {
  String vendorId;
  String name;
  String image;
  String personName;
  String contact;
  String email;
  String address;
  List<String> services;
  VendorModel({
    this.vendorId,
    this.name,
    this.image,
    this.personName,
    this.contact,
    this.email,
    this.address,
    this.services,
  });

  VendorModel copyWith({
    String vendorId,
    String name,
    String image,
    String personName,
    String contact,
    String email,
    String address,
    List<String> services,
  }) {
    return VendorModel(
      vendorId: vendorId ?? this.vendorId,
      name: name ?? this.name,
      image: image ?? this.image,
      personName: personName ?? this.personName,
      contact: contact ?? this.contact,
      email: email ?? this.email,
      address: address ?? this.address,
      services: services ?? this.services,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'vendorId': vendorId,
      'name': name,
      'image': image,
      'personName': personName,
      'contact': contact,
      'email': email,
      'address': address,
      'services': services,
    };
  }

  factory VendorModel.fromMap(Map<String, dynamic> map) {
    return VendorModel(
      vendorId: map['vendorId'],
      name: map['name'],
      image: map['image'],
      personName: map['personName'],
      contact: map['contact'],
      email: map['email'],
      address: map['address'],
      services: List<String>.from(map['services']),
    );
  }

  String toJson() => json.encode(toMap());

  factory VendorModel.fromJson(String source) =>
      VendorModel.fromMap(json.decode(source));
}
