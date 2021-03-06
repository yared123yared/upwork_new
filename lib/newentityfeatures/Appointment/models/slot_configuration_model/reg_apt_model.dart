import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/common/helputil.dart';

class RegAptModel {
  String monStart;
  String monEnd;
  String tueStart;
  String tueEnd;
  String wedStart;
  String wedEnd;
  String thuStart;
  String thuEnd;
  String friStart;
  String friEnd;
  String satStart;
  String satEnd;
  String sunStart;
  String sunEnd;

  int monNum;
  int tueNum;
  int wedNum;
  int thuNum;
  int friNum;
  int satNum;
  int sunNum;
  int slotDuration;

  RegAptModel({
    this.monStart,
    this.monEnd,
    this.tueStart,
    this.tueEnd,
    this.wedStart,
    this.wedEnd,
    this.thuStart,
    this.thuEnd,
    this.friStart,
    this.friEnd,
    this.satStart,
    this.satEnd,
    this.sunStart,
    this.sunEnd,
    this.monNum,
    this.tueNum,
    this.wedNum,
    this.thuNum,
    this.friNum,
    this.satNum,
    this.sunNum,
    this.slotDuration,
  });

  Map<int, List<String>> GetTimeSlotInfoForWeek() {
    Map<int, List<String>> myval = Map<int, List<String>>();
    if (monStart != null && monEnd != null)
      myval[1] =
          HelpUtil.getTimeSlotForDay(monStart, monEnd, monNum, slotDuration);
    else
      myval[1] = [];
    if (tueStart != null && tueEnd != null)
      myval[2] =
          HelpUtil.getTimeSlotForDay(tueStart, tueEnd, tueNum, slotDuration);
    else
      myval[2] = [];
    if (wedStart != null && wedEnd != null)
      myval[3] =
          HelpUtil.getTimeSlotForDay(wedStart, wedEnd, wedNum, slotDuration);
    else
      myval[3] = [];
    if (thuStart != null && thuEnd != null)
      myval[4] =
          HelpUtil.getTimeSlotForDay(thuStart, thuEnd, thuNum, slotDuration);
    else
      myval[4] = [];

    if (friStart != null && friEnd != null)
      myval[5] =
          HelpUtil.getTimeSlotForDay(friStart, friEnd, friNum, slotDuration);
    else
      myval[5] = [];

    if (satStart != null && satEnd != null)
      myval[6] =
          HelpUtil.getTimeSlotForDay(satStart, satEnd, satNum, slotDuration);
    else
      myval[6] = [];

    if (sunStart != null && sunEnd != null)
      myval[7] =
          HelpUtil.getTimeSlotForDay(sunStart, sunEnd, sunNum, slotDuration);
    else
      myval[7] = [];
  }

  factory RegAptModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();

    return RegAptModel(
      monStart: data["monStart"],
      monEnd: data["monEnd"],
      tueStart: data["tueStart"],
      tueEnd: data["tueEnd"],
      wedStart: data["wedStart"],
      wedEnd: data["wedEnd"],
      thuStart: data["thuStart"],
      thuEnd: data["thuEnd"],
      friStart: data["friStart"],
      friEnd: data["friEnd"],
      satStart: data["satStart"],
      satEnd: data["satEnd"],
      sunStart: data["sunStart"],
      sunEnd: data["sunEnd"],
      monNum: data["monNum"],
      tueNum: data["tueNum"],
      wedNum: data["wedNum"],
      thuNum: data["thuNum"],
      friNum: data["friNum"],
      satNum: data["satNum"],
      sunNum: data["sunNum"],
      slotDuration: data["slotDuration"] ?? 30,
    );
  }

  factory RegAptModel.fromJson(data) {
    return RegAptModel(
      monStart: data["monStart"],
      monEnd: data["monEnd"],
      tueStart: data["tueStart"],
      tueEnd: data["tueEnd"],
      wedStart: data["wedStart"],
      wedEnd: data["wedEnd"],
      thuStart: data["thuStart"],
      thuEnd: data["thuEnd"],
      friStart: data["friStart"],
      friEnd: data["friEnd"],
      satStart: data["satStart"],
      satEnd: data["satEnd"],
      sunStart: data["sunStart"],
      sunEnd: data["sunEnd"],
      monNum: data["monNum"],
      tueNum: data["tueNum"],
      wedNum: data["wedNum"],
      thuNum: data["thuNum"],
      friNum: data["friNum"],
      satNum: data["satNum"],
      sunNum: data["sunNum"],
      slotDuration: data["slotDuration"] ?? 30,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "monStart": monStart,
      "monEnd": monEnd,
      "tueStart": tueStart,
      "tueEnd": tueEnd,
      "wedStart": wedStart,
      "wedEnd": wedEnd,
      "thuStart": thuStart,
      "thuEnd": thuEnd,
      "friStart": friStart,
      "friEnd": friEnd,
      "satStart": satStart,
      "satEnd": satEnd,
      "sunStart": sunStart,
      "sunEnd": sunEnd,
      "monNum": monNum,
      "tueNum": tueNum,
      "wedNum": wedNum,
      "thuNum": thuNum,
      "friNum": friNum,
      "satNum": satNum,
      "sunNum": sunNum,
      "slotDuration": slotDuration,
    };
  }
}
