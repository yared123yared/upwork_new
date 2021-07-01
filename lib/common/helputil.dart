import 'package:complex/data/models/response/user_response/user_model.dart';
import 'package:complex/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:injector/injector.dart';
import 'package:complex/data/repositories/user_repository.dart';

enum DateTimeMode { DATE, TIME, DATETIME }

typedef void ReloadAction(bool doreload);

extension TimeOfDayExtension on TimeOfDay {
  // Ported from org.threeten.bp;
  TimeOfDay plusMinutes(int minutes) {
    if (minutes == 0) {
      return this;
    } else {
      int mofd = this.hour * 60 + this.minute;
      int newMofd = ((minutes % 1440) + mofd + 1440) % 1440;
      if (mofd == newMofd) {
        return this;
      } else {
        int newHour = newMofd ~/ 60;
        int newMinute = newMofd % 60;
        return TimeOfDay(hour: newHour, minute: newMinute);
      }
    }
  }

  int compareTo(TimeOfDay other) {
    if (this.hour < other.hour) return -1;
    if (this.hour > other.hour) return 1;
    if (this.minute < other.minute) return -1;
    if (this.minute > other.minute) return 1;
    return 0;
  }
}

extension DateTimeExtension on DateTime {
  String toFormattedString(DateTimeMode dateTimeMode) {
    final dateTime = DateFormat('dd-MM-yyyy hh:mm a');
    final jusTime = DateFormat('hh:mm a');
    final justDate = DateFormat('dd-MM-yyyy');
    String _return;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _return = justDate.format(this);
        break;
      case DateTimeMode.TIME:
        _return = jusTime.format(this);
        break;
      case DateTimeMode.DATETIME:
        _return = dateTime.format(this);
        break;
    }
    return _return;
  }

  int toTimeStamp() {
    var ms = this.millisecondsSinceEpoch;
    return (ms / 1000).round();
  }
}

class HelpUtil {
  static List<String> getTimeSlotForDay(
      String starttimestr, String endtimestr, int numslots, int slotduration) {
    try {
      TimeOfDay starttime = TimeOfDay(
          hour: int.parse(starttimestr.split(":")[0]),
          minute: int.parse(starttimestr.split(":")[1]));
      TimeOfDay endtime = TimeOfDay(
          hour: int.parse(endtimestr.split(":")[0]),
          minute: int.parse(endtimestr.split(":")[1]));
      List<String> results = [];
      while (endtime.compareTo(starttime) >= 0 && slotduration > 0) {
        String s1 = starttime.toString();
        starttime = starttime.plusMinutes(slotduration);
        String s2 = starttime.toString();
        results.add(s1 + "-" + s2);
        numslots = numslots - 1;
      }

      return results;
    } on Exception catch (_) {
      return [];
    }
  }

  static DateTime toDate({@required int timestamp}) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  static int toTimeStamp({@required DateTime dateTime}) {
    var ms = dateTime.millisecondsSinceEpoch;
    return (ms / 1000).round();
  }

  static UserRepository getUserRepository() {
    UserRepository _userRepository = Injector.appInstance.get<UserRepository>();
    return _userRepository;
  }

  static UserModel getUserModel() {
    UserRepository _userRepository = Injector.appInstance.get<UserRepository>();
    return _userRepository.getUser();
  }

  static AuthRepository getAuthRepositoryl() {
    return Injector.appInstance.get<AuthRepository>();
  }

  static int converttoTimeStamp(DateTime dt) {
    var ms = dt.millisecondsSinceEpoch;
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
}
