import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static Preference _prefHelper;
  static const ACCESS_TOKEN = "ACCESS_TOKEN";
  static const CHAT_CHANNEL_ID = "CHAT_CHANNEL_ID";
  static const IMAGE = "IMAGE";
  static const END_POINT = "END_POINT";
  static const EMAIL = "EMAIL";
  static const IOS_TOKEN = "IOS_TOKEN";
  static const CUSTOMER_ID = "CUSTOMER_ID";
  static const REFRESH_TOKEN = "REFRESH_TOKEN";
  static const FIREBASE_TOKEN = "FIREBASE_TOKEN";
  static const USER_ID = "USER_ID";
  static const FIRST_NAME = "FIRST_NAME";
  static const LAST_NAME = "LATS_NAME";
  static const CHAT_USER_ID = "CHAT_USER_ID";
  static const IS_PROFILE_VERIFIED = "IS_PROFILE_VERIFIED";
  static const IS_WALK_THROUGH_COMPLETE = "IS_WALK_THROUGH_COMPLETE";
  static const IS_PROFILE_FIRST_VIST = "IS_PROFILE_FIRST_VIST";
  static const String ADDRESS = "address";

  static getInstance() {
    if (_prefHelper == null) _prefHelper = Preference();
    return _prefHelper;
  }

  static SharedPreferences _prefs;
  static Map<String, dynamic> _memoryPrefs = Map<String, dynamic>();

  Future<SharedPreferences> load() async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
    return _prefs;
  }

  static Future<bool> clearPref() async {
    bool clear = await _prefs.clear();
    if (clear) {
      _memoryPrefs.clear();
    }
    return clear;
  }

  static void setString(String key, String value) {
    _prefs.setString(key, value);
    _memoryPrefs[key] = value;
  }

  static void setListString(String key, List<String> value) {
    _prefs.setStringList(key, value);
    _memoryPrefs[key] = value;
  }

  static void setInt(String key, int value) {
    _prefs.setInt(key, value);
    _memoryPrefs[key] = value;
  }

  static void setDouble(String key, double value) {
    _prefs.setDouble(key, value);
    _memoryPrefs[key] = value;
  }

  static void setBool(String key, bool value) {
    _prefs.setBool(key, value);
    _memoryPrefs[key] = value;
  }

  static String getString(String key, {String def}) {
    String val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getString(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static List<String> getListString(String key, {List<String> def}) {
    List<String> val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getStringList(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static bool exists(String key, {String def}) {
    return _prefs.containsKey(key);
  }

  static int getInt(String key, {int def}) {
    int val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getInt(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static double getDouble(String key, {double def}) {
    double val;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (val == null) {
      val = _prefs.getDouble(key);
    }
    if (val == null) {
      val = def;
    }
    _memoryPrefs[key] = val;
    return val;
  }

  static bool getBool(String key, {bool def = false}) {
    bool val = def;
    if (_memoryPrefs.containsKey(key)) {
      val = _memoryPrefs[key];
    }
    if (_prefs == null) {
      return val;
    }
    val = _prefs.getBool(key);
    if (val == null) val = def;
    _memoryPrefs[key] = val;
    return val;
  }
}
