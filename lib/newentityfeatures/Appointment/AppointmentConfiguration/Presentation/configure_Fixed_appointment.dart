import 'package:complex/newentityfeatures/Appointment/models/slot_configuration_model/reg_apt_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class FixedAppointmentConfigure extends StatefulWidget {
  final Function onSaveFixedAppointment;
  final RegAptModel regularAptModel;
  FixedAppointmentConfigure(
      {this.onSaveFixedAppointment, this.regularAptModel});

  @override
  _FixedAppointmentConfigureState createState() =>
      _FixedAppointmentConfigureState();
}

class _FixedAppointmentConfigureState extends State<FixedAppointmentConfigure> {
  final _formKey = GlobalKey<FormState>();

  setData() {
    final model = widget.regularAptModel;

    monStart = model.monStart;
    monEnd = model.monEnd;
    monNum = model.monNum;

    tueStart = model.tueStart;
    tueEnd = model.tueEnd;
    tueNum = model.tueNum;

    wedStart = model.wedStart;
    wedEnd = model.wedEnd;
    wedNum = model.wedNum;

    thuStart = model.thuStart;
    thuEnd = model.thuEnd;
    thuNum = model.thuNum;

    friStart = model.friStart;
    friEnd = model.friEnd;
    friNum = model.friNum;

    satStart = model.satStart;
    satEnd = model.satEnd;
    satNum = model.satNum;

    sunStart = model.sunStart;
    sunEnd = model.sunEnd;
    sunNum = model.sunNum;

    slotDuration = model.slotDuration;
  }

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

  onSavedMon(String start, String end, int slots) {
    monStart = start;
    monEnd = end;
    monNum = slots;
  }

  onSavedTue(String start, String end, int slots) {
    tueStart = start;
    tueEnd = end;
    tueNum = slots;
  }

  onSavedWed(String start, String end, int slots) {
    wedStart = start;
    wedEnd = end;
    wedNum = slots;
  }

  onSavedThu(String start, String end, int slots) {
    thuStart = start;
    thuEnd = end;
    thuNum = slots;
  }

  onSavedFri(String start, String end, int slots) {
    friStart = start;
    friEnd = end;
    friNum = slots;
  }

  onSavedSat(String start, String end, int slots) {
    satStart = start;
    satEnd = end;
    satNum = slots;
  }

  onSavedSun(String start, String end, int slots) {
    sunStart = start;
    sunEnd = end;
    sunNum = slots;
  }

  void submitData() {
    bool submit = _formKey.currentState.validate();

    if (!submit) {
      return;
    }
    _formKey.currentState.save();

    RegAptModel fixedAptModel = RegAptModel(
      monStart: monStart,
      monEnd: monEnd,
      tueStart: tueStart,
      tueEnd: tueEnd,
      wedStart: wedStart,
      wedEnd: wedEnd,
      thuStart: thuStart,
      thuEnd: thuEnd,
      friStart: friStart,
      friEnd: friEnd,
      satStart: satStart,
      satEnd: satEnd,
      sunStart: sunStart,
      sunEnd: sunEnd,
      monNum: monNum,
      tueNum: tueNum,
      wedNum: wedNum,
      thuNum: thuNum,
      friNum: friNum,
      satNum: satNum,
      sunNum: sunNum,
      slotDuration: slotDuration,
    );
    widget.onSaveFixedAppointment(fixedAptModel);
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed Appointments'),
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
                dayStart: monStart,
                dayEnd: monEnd,
                daySlots: monNum,
                onSaved: onSavedMon,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Tuesday:',
                dayStart: tueStart,
                dayEnd: tueEnd,
                daySlots: tueNum,
                onSaved: onSavedTue,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Wednesday:',
                dayStart: wedStart,
                dayEnd: wedEnd,
                daySlots: wedNum,
                onSaved: onSavedWed,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Thursday:',
                dayStart: thuStart,
                dayEnd: thuEnd,
                daySlots: thuNum,
                onSaved: onSavedThu,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Friday:',
                dayStart: friStart,
                dayEnd: friEnd,
                daySlots: friNum,
                onSaved: onSavedFri,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Saturday:',
                dayStart: satStart,
                dayEnd: satEnd,
                daySlots: satNum,
                onSaved: onSavedSat,
              ),
              const SizedBox(
                height: 15,
              ),
              DayCard(
                day: 'Sunday:',
                dayStart: sunStart,
                dayEnd: sunEnd,
                daySlots: sunNum,
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
  String dayStart;
  String dayEnd;
  int daySlots;

  final Function onSaved;

  DayCard({this.day, this.dayEnd, this.dayStart, this.daySlots, this.onSaved});

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
                      'Start:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 18),
                    ),
                    const SizedBox(
                      width: 15,
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
                            widget.dayStart = date.toString().substring(11, 16);
                          });
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
                          widget.dayStart ?? '12:00',
                          style: TextStyle(
                              fontFamily: 'Merriweather', fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'End:',
                      style:
                          TextStyle(fontFamily: 'Merriweather', fontSize: 18),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        DatePicker.showTimePicker(context,
                            showTitleActions: true,
                            showSecondsColumn: false, onChanged: (date) {
                          print('change $date');
                        }, onConfirm: (date) {
                          setState(() {
                            widget.dayEnd = date.toString().substring(11, 16);
                          });
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
                          widget.dayEnd ?? '12:00',
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
            Row(
              children: [
                Text('Number of Slots:'),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 100,
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Merriweather', fontSize: 20),
                    keyboardType: TextInputType.number,
                    initialValue: (widget.daySlots ?? 0).toString(),
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
                      widget.daySlots = int.parse(value);

                      if (widget.daySlots == null) {
                        widget.daySlots = 0;
                      }

                      if (widget.dayStart == null) {
                        widget.dayStart = '12:00';
                      }
                      if (widget.dayEnd == null) {
                        widget.dayEnd = '12:00';
                      }

                      widget.onSaved(
                          widget.dayStart, widget.dayEnd, widget.daySlots);
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
