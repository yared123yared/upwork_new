import 'dart:io';

import 'package:complex/common/helputil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

import 'log.dart';
import 'styles.dart';

class Utility {
  static Future<bool> checkNetwork() async {
    bool isConnected = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        Log.v('connected');
        isConnected = true;
      }
    } on SocketException catch (_) {
      Log.v('not connected');

      isConnected = false;
    }
    return isConnected;
  }

  static void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  var currentLocation;

  static void showSnackBar({
    String message,
    int miliSec = 2000,
    @required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: miliSec),
        content: Text(
          message ?? "",
          style: Styles.boldText(color: Colors.white),
        ),
        backgroundColor: Colors.black.withOpacity(0.7),
      ),
    );
  }

  static int getDeviceType() {
    if (Platform.isAndroid)
      return 1;
    else
      return 2;
  }

  static size({double height = 10, double width = 0}) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  static Future waitFor(int seconds) async {
    await Future.delayed(Duration(seconds: 3));
  }

  static Future waitForMili(int mili) async {
    await Future.delayed(Duration(milliseconds: mili));
  }

  static DateTime toDate({@required int timestamp}) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  static int toTimeStamp({@required DateTime dateTime}) {
    var ms = dateTime.millisecondsSinceEpoch;
    return (ms / 1000).round();
  }

  static String formattedDateToString(
      DateTime dateTimeValue, DateTimeMode dateTimeMode) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');

    String _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.format(dateTimeValue);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.format(dateTimeValue);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.format(dateTimeValue);
        break;
    }
    return _return;
  }

  static DateTime formattedStringToDate(
    String dateTimeValue,
    DateTimeMode dateTimeMode,
  ) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');

    DateTime _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.parse(dateTimeValue);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.parse(dateTimeValue);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.parse(dateTimeValue);
        break;
    }
    return _return;
  }

  static permissionCheckForMap() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }
  }
}
