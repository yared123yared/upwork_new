import 'dart:typed_data';
import 'dart:math';



class districtAreaList
{
  String state;
  String district;
  List<String> areaname;
}

class georecorddata
{
  int curprecision;
  List<String> documentlist;
}

class HelperGeoFunctions
{
  static String getGeoHash(double longitude, double latitude,int precision)
  {
    return GeoHasher().encode(longitude, latitude, precision: precision);
  }

  // ignore: missing_return
  static List<String> getGeoHashUpperLowerBount(double longitude, double latitude,int precision, int distanceinmeters)
  {
    List<String> result = new List<String>();
    double coef = distanceinmeters * 0.0000089;
    double longcoef =cos(latitude * 0.018);
    double new_lat1 = latitude + coef;

    // pi / 180 = 0.018
    double new_long1 = longitude + longcoef;

    double new_lat2 = latitude - coef;

    // pi / 180 = 0.018
    double new_long2 = longitude - longcoef;


    String s1 = GeoHasher().encode(new_long1, new_lat1, precision: precision);

    String s2 =GeoHasher().encode(new_long2, new_lat2, precision: precision);
    int r = s1.compareTo(s2);
    if (r <= 0)
    {
      result.add(s1);
      result.add(s2);
    }
    else
    {
      result.add(s2);
      result.add(s1);

    }

  }


}

/// A list of possible directions of neighboring geohash.
enum Direction {
  NORTH,
  NORTHEAST,
  EAST,
  SOUTHEAST,
  SOUTH,
  SOUTHWEST,
  WEST,
  NORTHWEST,
  CENTRAL
}
class GeoHasher {
  static String _baseSequence = '0123456789bcdefghjkmnpqrstuvwxyz';

  /// Creates a Map of available characters for a geohash
  Map<String, int> _base32Map =
  Map.fromIterable(_baseSequence.split(""), key: (key) {
    return key;
  }, value: (value) {
    return _baseSequence.indexOf(value);
  });

  /// Creates a reversed Map of available characters for a geohash
  Map<int, String> _base32MapR =
  Map.fromIterable(_baseSequence.split(""), key: (key) {
    return _baseSequence.indexOf(key);
  }, value: (value) {
    return value;
  });

  /// Converts a List<int> of bits into a double for Longitude and Latitude
  double _bitsToDouble(
      {List<int> bits,
        double lower = -90.0,
        double middle = 0.0,
        double upper = 90.0}) {
    bits.forEach((bit) {
      if (bit == 1) {
        lower = middle;
      } else {
        upper = middle;
      }
      middle = (upper + lower) / 2.0;
    });
    return middle;
  }

  /// Converts a double value Longitude or Latitude to a List<int> of bits
  List<int> _doubleToBits(
      {double value,
        double lower = -90.0,
        double middle = 0.0,
        double upper = 90.0,
        int length = 15}) {
    List<int> ret = List<int>();

    for (int i = 0; i < length; i++) {
      if (value >= middle) {
        lower = middle;
        ret.add(1);
      } else {
        upper = middle;
        ret.add(0);
      }
      middle = (upper + lower) / 2;
    }

    return ret;
  }

  /// Converts a List<int> bits into a String geohash
  String _bitsToGeoHash(List<int> bitValue) {
    List<int> remainingBits = List<int>.from(bitValue);
    List<int> subBits = List<int>();
    List<String> geoHashList = List<String>();

    String subBitsAsString;
    int value;
    for (int i = 0; i < bitValue.length / 5; i++) {
      subBits = remainingBits.sublist(0, 5);
      remainingBits = remainingBits.sublist(5);
      subBitsAsString = "";
      subBits.forEach((value) {
        subBitsAsString = subBitsAsString + value.toString();
      });
      value = int.parse(int.parse(subBitsAsString, radix: 2).toRadixString(10));

      geoHashList.add(_base32MapR[value]);
    }

    return geoHashList.join("");
  }

  /// Converts a String geohash into List<int> bits
  List<int> _geoHashToBits(String geohash) {
    List<int> letterNumValue = List<int>();
    List<int> bitList = List<int>();
    geohash.split("").forEach((letter) {
      if (_base32Map[letter] != null) {
        letterNumValue.add(_base32Map[letter]);

        ByteBuffer buffer = Uint8List(5).buffer;
        ByteData bufferData = ByteData.view(buffer);
        bufferData.setUint32(0, _base32Map[letter]);
        bufferData
            .getUint32(0)
            .toRadixString(2)
            .padLeft(5, "0")
            .split("")
            .forEach((letter) {
          bitList.add(int.parse(letter));
        });
      }
    });

    return bitList;
  }

  /// Encodes a given Longitude and Latitude into a String geohash
  String encode(double longitude, double latitude, {int precision = 12}) {
    bool precisionOdd = precision % 2 == 1;
    int originalPrecision = precision + 0;
    if (longitude == null || latitude == null) throw ArgumentError.notNull();
    if (longitude < -180.0 || longitude > 180.0)
      throw RangeError.range(longitude, -180, 180, "Longitude");
    if (latitude < -90.0 || latitude > 90.0)
      throw RangeError.range(latitude, -180, 180, "Latitude");

    if (precision % 2 == 1) {
      precision = precision + 1;
    }
    if (precision != 1) precision ~/= 2;

    List<int> longitudeBits = _doubleToBits(
        value: longitude, lower: -180.0, upper: 180.0, length: precision * 5);
    List<int> latitudeBits = _doubleToBits(
        value: latitude, lower: -90.0, upper: 90.0, length: precision * 5);

    List<int> ret = List<int>();
    for (int i = 0; i < longitudeBits.length; i++) {
      ret.add(longitudeBits[i]);
      ret.add(latitudeBits[i]);
    }

    String geohashString = _bitsToGeoHash(ret);

    return originalPrecision == 1
        ? geohashString.substring(0, 1)
        : (precisionOdd
        ? geohashString.substring(0, geohashString.length - 1)
        : geohashString);
  }

  /// Decodes a given String into a List<double> containing Longitude and
  /// Latitude in decimal degrees.
  List<double> decode(String geohash) {
    if (geohash == null)
      throw ArgumentError.notNull(geohash);
    else if (geohash == "")
      throw ArgumentError.value(geohash, "geohash");
    else if (!geohash
        .contains(new RegExp(r'^[0123456789bcdefghjkmnpqrstuvwxyz]+$')))
      throw ArgumentError("Invalid character in GeoHash");

    List<int> bits = _geoHashToBits(geohash);
    List<int> longitudeBits = List<int>();
    List<int> latitudeBits = List<int>();

    for (int i = 0; i < bits.length; i++) {
      if (i % 2 == 0 || i == 0) {
        longitudeBits.add(bits[i]);
      } else {
        latitudeBits.add(bits[i]);
      }
    }

    return [
      _bitsToDouble(bits: longitudeBits, lower: -180, upper: 180),
      _bitsToDouble(bits: latitudeBits)
    ];
  }

  /// Returns a String geohash of the neighbor of the given String in the given
  /// direction.
  String _adjacent({String geohash, String direction}) {
    assert(direction.contains(new RegExp(r'[nsewNSEW]')),
    "Invalid Direction $direction not in NSEW");
    assert(geohash != null, "Invalid GeoHash");

    Map<String, List> neighbor = {
      'n': [
        'p0r21436x8zb9dcf5h7kjnmqesgutwvy',
        'bc01fg45238967deuvhjyznpkmstqrwx'
      ],
      's': [
        '14365h7k9dcfesgujnmqp0r2twvyx8zb',
        '238967debc01fg45kmstqrwxuvhjyznp'
      ],
      'e': [
        'bc01fg45238967deuvhjyznpkmstqrwx',
        'p0r21436x8zb9dcf5h7kjnmqesgutwvy'
      ],
      'w': [
        '238967debc01fg45kmstqrwxuvhjyznp',
        '14365h7k9dcfesgujnmqp0r2twvyx8zb'
      ]
    };

    Map<String, List> border = {
      'n': ['prxz', 'bcfguvyz'],
      's': ['028b', '0145hjnp'],
      'e': ['bcfguvyz', 'prxz'],
      'w': ['0145hjnp', '028b']
    };

    String last = geohash[geohash.length - 1];
    String parent = geohash.substring(0, geohash.length - 1);
    int t = geohash.length % 2;

    if (border[direction][t].toString().contains(last) && parent != null) {
      parent = _adjacent(geohash: parent, direction: direction);
    }

    return parent +
        _baseSequence[neighbor[direction][t].toString().indexOf(last)];
  }

  /// Returns a Map<String, String> containing the `Direction` as the key and
  /// the value being the geohash of the neighboring geohash in that direction.
  Map<String, String> neighbors(String geohash) {
    if (geohash == null)
      throw ArgumentError.notNull(geohash);
    else if (geohash == "")
      throw ArgumentError.value(geohash, "geohash");
    else if (!geohash
        .contains(new RegExp(r'^[0123456789bcdefghjkmnpqrstuvwxyz]+$')))
      throw ArgumentError("Invalid character in GeoHash");

    return {
      Direction.NORTH.toString().split(".")[1]:
      _adjacent(geohash: geohash, direction: "n"),
      Direction.NORTHEAST.toString().split(".")[1]: _adjacent(
          geohash: _adjacent(geohash: geohash, direction: 'n'), direction: 'e'),
      Direction.EAST.toString().split(".")[1]:
      _adjacent(geohash: geohash, direction: 'e'),
      Direction.SOUTHEAST.toString().split(".")[1]: _adjacent(
          geohash: _adjacent(geohash: geohash, direction: 's'), direction: 'e'),
      Direction.SOUTH.toString().split(".")[1]:
      _adjacent(geohash: geohash, direction: 's'),
      Direction.SOUTHWEST.toString().split(".")[1]: _adjacent(
          geohash: _adjacent(geohash: geohash, direction: 's'), direction: 'w'),
      Direction.WEST.toString().split(".")[1]:
      _adjacent(geohash: geohash, direction: 'w'),
      Direction.NORTHWEST.toString().split(".")[1]: _adjacent(
          geohash: _adjacent(geohash: geohash, direction: 'n'), direction: 'w'),
      Direction.CENTRAL.toString().split(".")[1]: geohash
    };
  }
}

/// A containing class for a geohash
class GeoHash {
  String _geohash;
  double _longitude;
  double _latitude;
  Map<String, String> _neighbors;

  /// Returns the String geohash
  String get geohash {
    return _geohash;
  }

  /// Returns the double longitude with an optional decimal accuracy
  double longitude({int decimalAccuracy}) {
    if (decimalAccuracy == null)
      return _longitude;
    else {}
    return double.parse(_longitude.toStringAsFixed(decimalAccuracy));
  }

  /// Returns the double latitude with an optional decimal accuracy
  double latitude({int decimalAccuracy}) {
    if (decimalAccuracy == null)
      return _latitude;
    else
      return double.parse(_latitude.toStringAsFixed(decimalAccuracy));
  }

  /// Returns a Map<String, String> containing the `Direction` as the key and
  /// the value being the geohash of the neighboring geohash in that direction.
  Map<String, String> get neighbors {
    return _neighbors;
  }

  /// Returns a String geohash of a neighboring geohash in a given direction
  String neighbor(Direction direction) {
    return _neighbors[direction.toString().split(".")[1]];
  }

  /// Constructor given a String geohash
  GeoHash(String geohash) {
    _geohash = geohash;
    _neighbors = GeoHasher().neighbors(geohash);
    _longitude = GeoHasher().decode(geohash)[0];
    _latitude = GeoHasher().decode(geohash)[1];
  }

  /// Constructor given Longitude and Latitude
  GeoHash.fromDecimalDegrees(double longitude, double latitude,
      {int precision = 9}) {
    this._longitude = longitude;
    this._latitude = latitude;
    _geohash = GeoHasher().encode(longitude, latitude, precision: precision);
    _neighbors = GeoHasher().neighbors(_geohash);
  }

  /// Returns true if given geohash is equal to or is a neighbor of this one.
  bool isNeighbor(String geohash) {
    if (geohash.length != _geohash.length) return false;

    bool contains = false;
    _neighbors.forEach((key, value) {
      if (value == geohash) contains = true;
    });

    return contains;
  }

  /// Returns true if the given geohash contains this one within it.
  bool isInside(String geohash) {
    if (geohash.length > _geohash.length) return false;

    if (_geohash.substring(0, geohash.length) == geohash) {
      return true;
    }

    return false;
  }

  /// Returns true if the given geohash is contained within this geohash
  bool contains(String geohash) {
    if (geohash.length < _geohash.length) return false;

    if (geohash.substring(0, _geohash.length) == _geohash) {
      return true;
    }

    return false;
  }

  /// Returns a new Geohash for the parent of this one.
  GeoHash parent() {
    return GeoHash(_geohash.substring(0, _geohash.length - 1));
  }
}