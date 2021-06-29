import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

enum DateTimeMode { DATE, TIME, DATETIME }

class CommonUIHandler {
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
      String dateTimeValue, DateTimeMode dateTimeMode) {
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



}
/// A class that can convert a geohash String to [Longitude, Latitude] and back.

