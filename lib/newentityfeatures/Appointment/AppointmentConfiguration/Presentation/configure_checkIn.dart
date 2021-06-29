
import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/check_in_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CheckInConfigure extends StatefulWidget {
  final Function onSaveCheckInAppointment;
  final CheckInModel checkinmodel;

  CheckInConfigure({this.onSaveCheckInAppointment, this.checkinmodel});

  @override
  _CheckInConfigureState createState() => _CheckInConfigureState();
}

class _CheckInConfigureState extends State<CheckInConfigure> {
  @override
  void initState() {
    setData();
    super.initState();
  }

  setData() {
    List checkInPeriods = widget.checkinmodel.periods;

    print('lenght before setting data');
    print(checkInPeriods.length);

    monPeriods = checkInPeriods.sublist(0, 9);
    tuePeriods = checkInPeriods.sublist(9, 18);
    wedPeriods = checkInPeriods.sublist(18, 27);
    thuPeriods = checkInPeriods.sublist(27, 36);
    friPeriods = checkInPeriods.sublist(36, 45);
    satPeriods = checkInPeriods.sublist(45, 54);
    sunPeriods = checkInPeriods.sublist(54, 63);
    slotDuration = widget.checkinmodel.slotDuration;

    print(monPeriods);
    print(tuePeriods);
    print(wedPeriods);
    print(thuPeriods);
    print(friPeriods);
    print(satPeriods);
    print(sunPeriods);
  }

  final _formKey = GlobalKey<FormState>();

  int slotDuration;
  int queueRunningNumber;

  List<String> periods;

  List<String> monPeriods = [];
  List<String> tuePeriods = [];
  List<String> wedPeriods = [];
  List<String> thuPeriods = [];
  List<String> friPeriods = [];
  List<String> satPeriods = [];
  List<String> sunPeriods = [];

  onSavedMon(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    monPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedTue(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    tuePeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedWed(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    wedPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedThus(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    thuPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedFri(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    friPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedSat(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    satPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  onSavedSun(String morningStart, String morningEnd, String afternoonStart,
      String afternoonEnd, String eveningStart, String eveningEnd) {
    sunPeriods = [
      'Morning',
      morningStart,
      morningEnd,
      'Afternoon',
      afternoonStart,
      afternoonEnd,
      'Evening',
      eveningStart,
      eveningEnd
    ];
  }

  void submitData() {
    bool submit = _formKey.currentState.validate();

    if (!submit) {
      return;
    }
    _formKey.currentState.save();

    periods = [
      ...monPeriods,
      ...tuePeriods,
      ...wedPeriods,
      ...thuPeriods,
      ...friPeriods,
      ...satPeriods,
      ...sunPeriods
    ];

    print(periods);

    CheckInModel chInModel = CheckInModel(
        monPeriods: monPeriods,
        tuePeriods: tuePeriods,
        wedPeriods: wedPeriods,
        thuPeriods: thuPeriods,
        friPeriods: friPeriods,
        satPeriods: satPeriods,
        sunPeriods: sunPeriods,
        periods: periods,
        slotDuration: slotDuration,
        queueRunningNumber: 1);

    widget.onSaveCheckInAppointment(chInModel);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check In Appointments'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                submitData();
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              DayCard(
                day: 'Monday:',
                morningStart: monPeriods[1],
                morningEnd: monPeriods[2],
                afterNoonStart: monPeriods[4],
                afterNoonEnd: monPeriods[5],
                eveningStart: monPeriods[7],
                eveningEnd: monPeriods[8],
                onSaved: onSavedMon,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Tuesday:',
                morningStart: tuePeriods[1],
                morningEnd: tuePeriods[2],
                afterNoonStart: tuePeriods[4],
                afterNoonEnd: tuePeriods[5],
                eveningStart: tuePeriods[7],
                eveningEnd: tuePeriods[8],
                onSaved: onSavedTue,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Wednesday:',
                morningStart: wedPeriods[1],
                morningEnd: wedPeriods[2],
                afterNoonStart: wedPeriods[4],
                afterNoonEnd: wedPeriods[5],
                eveningStart: wedPeriods[7],
                eveningEnd: wedPeriods[8],
                onSaved: onSavedWed,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Thursday:',
                morningStart: thuPeriods[1],
                morningEnd: thuPeriods[2],
                afterNoonStart: thuPeriods[4],
                afterNoonEnd: thuPeriods[5],
                eveningStart: thuPeriods[7],
                eveningEnd: thuPeriods[8],
                onSaved: onSavedThus,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Friday:',
                morningStart: friPeriods[1],
                morningEnd: friPeriods[2],
                afterNoonStart: friPeriods[4],
                afterNoonEnd: friPeriods[5],
                eveningStart: friPeriods[7],
                eveningEnd: friPeriods[8],
                onSaved: onSavedFri,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Saturday:',
                morningStart: satPeriods[1],
                morningEnd: satPeriods[2],
                afterNoonStart: satPeriods[4],
                afterNoonEnd: satPeriods[5],
                eveningStart: satPeriods[7],
                eveningEnd: satPeriods[8],
                onSaved: onSavedSat,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Sunday:',
                morningStart: sunPeriods[1],
                morningEnd: sunPeriods[2],
                afterNoonStart: sunPeriods[4],
                afterNoonEnd: sunPeriods[5],
                eveningStart: sunPeriods[7],
                eveningEnd: sunPeriods[8],
                onSaved: onSavedSun,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text('Slot Duration:'),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 20),
                      keyboardType: TextInputType.number,
                      initialValue: (slotDuration ?? 0).toString(),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'There must be value';
                        }
                        var number = int.parse(value);
                        if (number < 0) {
                          return 'Number must be postive';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        slotDuration = int.parse(value);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DayCard extends StatefulWidget {
  final String day;

  String morningStart;
  String morningEnd;
  String afterNoonStart;
  String afterNoonEnd;
  String eveningStart;
  String eveningEnd;

  final Function onSaved;

  DayCard(
      {this.day,
      this.morningStart,
      this.morningEnd,
      this.afterNoonStart,
      this.afterNoonEnd,
      this.eveningStart,
      this.eveningEnd,
      this.onSaved});

  @override
  _DayCardState createState() => _DayCardState();
}

class _DayCardState extends State<DayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.day,
              style: TextStyle(fontFamily: 'Merriweather', fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'MorningStart:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.morningStart =
                                date.toString().substring(11, 16);
                          });
                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.morningStart ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'MorningEnd:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.morningEnd =
                                date.toString().substring(11, 16);
                          });

                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.morningEnd ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'AfterNoonStart:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.afterNoonStart =
                                date.toString().substring(11, 16);
                          });
                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.afterNoonStart ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'AfterNoonEnd:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 15),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.afterNoonEnd =
                                date.toString().substring(11, 16);
                          });
                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.afterNoonEnd ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'EveningStart:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.morningStart =
                                date.toString().substring(11, 16);
                          });
                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.eveningStart ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'EveingEnd:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.eveningEnd =
                                date.toString().substring(11, 16);
                          });
                          widget.onSaved(
                              widget.morningStart,
                              widget.morningEnd,
                              widget.afterNoonStart,
                              widget.afterNoonEnd,
                              widget.eveningStart,
                              widget.eveningEnd);
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.lightBlue.shade900),
                          ),
                        ),
                        child: Text(
                          widget.eveningEnd ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
