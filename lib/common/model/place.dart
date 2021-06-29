import 'dart:convert' as converter;

import 'package:flutter/services.dart' show rootBundle;

class Place {
  final String zipCode;
  final String district;
  final String state;

  const Place({
    this.zipCode,
    this.district,
    this.state,
  })  : assert(zipCode != null),
        assert(district != null),
        assert(state != null);

  static List<Place> _places;

  static Future<List<Place>> get places async {
    if (_places != null) return _places;
    List codes = await rootBundle
        .loadString('assets/zip_codes.json')
        .then((value) => converter.jsonDecode(value));

    _places = codes.map((e) {
      // print("${e['state']}${e['district']}${e['zipcode']}");
      return Place(
        district: e['district'],
        state: e['state'],
        zipCode: e['zipcode'].toString(),
      );
    }).toList();
    return _places;
  }
}
