import 'package:cloud_firestore/cloud_firestore.dart';

class CheckInModel {
  int slotDuration;
  int queueRunningNumber;

  List<String> periods;

  List<String> monPeriods;
  List<String> tuePeriods;
  List<String> wedPeriods;
  List<String> thuPeriods;
  List<String> friPeriods;
  List<String> satPeriods;
  List<String> sunPeriods;

  CheckInModel({
    this.slotDuration,
    this.queueRunningNumber,
    this.periods,
    this.monPeriods,
    this.tuePeriods,
    this.wedPeriods,
    this.thuPeriods,
    this.friPeriods,
    this.satPeriods,
    this.sunPeriods,
  });

  Map<int,List<String>> GetTimeSlotInfoForWeek()
  {
    Map<int,List<String>>  myval = Map<int,List<String>>();
    if(monPeriods !=null )
      myval[1]=monPeriods;
    else
      myval[1]=[];
    if(tuePeriods !=null )
      myval[2]=tuePeriods;
    else
      myval[2]=[];
    if(wedPeriods !=null )
      myval[3]=wedPeriods;
    else
      myval[3]=[];
    if(thuPeriods !=null )
      myval[4]=thuPeriods;
    else
      myval[4]=[];
    if(friPeriods !=null )
      myval[5]=friPeriods;
    else
      myval[5]=[];
    if(satPeriods !=null )
      myval[6]=satPeriods;
    else
      myval[6]=[];
    if(sunPeriods !=null )
      myval[7]=sunPeriods;
    else
      myval[7]=[];



  }



  factory CheckInModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data();
    return CheckInModel(
      slotDuration: data["slotDuration"] ?? 30,
      queueRunningNumber: data["queueRunningNumber"],
      periods: List.from(data["periods"]) ?? [],
      monPeriods: List.from(data["monperiods"]) ?? [],
      tuePeriods: List.from(data["tueperiods"]) ?? [],
      wedPeriods: List.from(data["wedperiods"]) ?? [],
      thuPeriods: List.from(data["thuperiods"]) ?? [],
      friPeriods: List.from(data["friperiods"]) ?? [],
      satPeriods: List.from(data["satperiods"]) ?? [],
      sunPeriods: List.from(data["sunperiods"]) ?? [],
    );
  }

  factory CheckInModel.fromJson(data) {
    return CheckInModel(
      slotDuration: data["slotDuration"] ?? 30,
      queueRunningNumber: data["queueRunningNumber"],
      periods: data["periods"] != null ? List.from(data["periods"]) : [],
      monPeriods: data["monperiods"] != null ? List.from(data["monperiods"]) : [],
      tuePeriods: data["tueperiods"] != null ? List.from(data["tueperiods"]) : [],
      wedPeriods: data["wedperiods"] != null ? List.from(data["wedperiods"]) : [],
      thuPeriods: data["thuperiods"] != null ? List.from(data["thuperiods"]) : [],
      friPeriods: data["friperiods"] != null ? List.from(data["friperiods"]) : [],
      satPeriods: data["satperiods"] != null ? List.from(data["satperiods"]) : [],
      sunPeriods: data["sunperiods"] != null ? List.from(data["sunperiods"]) : [],


    );
  }

  Map<String, dynamic> toMap() {
    return {
      "slotDuration": slotDuration,
      "queueRunningNumber": queueRunningNumber,
      "periods": periods,
      "monperiods":monPeriods,
      "tueperiods":tuePeriods,
      "wedperiods":wedPeriods,
      "thuperiods":thuPeriods,
      "friperiods":friPeriods,
      "satperiods":satPeriods,
      "sunperiods":sunPeriods
    };
  }
}
