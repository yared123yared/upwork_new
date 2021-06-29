import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/utils/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:complex/common/helputil.dart';
class CustomDateTimePicker extends StatefulWidget {
  final String title;
  final ValueChanged<DateTime> onChange;
  final DateTimeMode mode;

  ///regarded as the initial value
  final DateTime dateTime;
  final bool enabled;
  final bool autoSync;

  final CustomTextFieldController controller;
  final CustomTextFieldController nextController;
  final Validate validate;

  CustomDateTimePicker({
    @required this.title,
    @required this.onChange,
    @required this.mode,
    @required this.dateTime,
    @required this.controller,
    this.validate,
    this.nextController,
    this.enabled = true,
    this.autoSync = false,
  })  : assert(title != null),
        assert(controller != null),
        assert(onChange != null),
        assert(mode != null);

  @override
  _CustomDateTimePickerState createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  DateTime dateTime;

  @override
  void initState() {
    dateTime = widget.dateTime;
    super.initState();
  }

  CupertinoDatePickerMode cuperMode(DateTimeMode dateTimeMode) {
    CupertinoDatePickerMode _mode;
    switch (dateTimeMode) {
      case DateTimeMode.DATE:
        _mode = CupertinoDatePickerMode.date;
        break;
      case DateTimeMode.TIME:
        _mode = CupertinoDatePickerMode.time;
        break;
      case DateTimeMode.DATETIME:
        _mode = CupertinoDatePickerMode.dateAndTime;
        break;
    }
    return _mode;
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      validate: widget.validate,
      title: widget.title,
      enabled: false,
      icon: CupertinoIcons.time,
      initialValue: formattedTime(dateTime),
      onTap: !widget.enabled
          ? null
          : () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 150,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(
                          textTheme: CupertinoTextThemeData(
                            dateTimePickerTextStyle:
                                TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        child: CupertinoDatePicker(
                          mode: cuperMode(widget.mode),
                          initialDateTime: dateTime,
                          onDateTimeChanged: (newDateTime) {
                            setState(() {
                              widget.controller.text =
                                  formattedTime(newDateTime);
                              widget.onChange.call(newDateTime);
                              dateTime = newDateTime;
                            });
                          },
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25)),
                      ),
                    );
                  });
            },
    );
  }

  String formattedTime(DateTime date) {
    if (date == null)
      return '';
    else
      return Utility.formattedDateToString(
        date,
        widget.mode,
      );
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    if (widget.autoSync) {
      this.dateTime = widget.dateTime;
      widget.controller.text = formattedTime(dateTime);
    }
    super.didUpdateWidget(oldWidget);
  }
}
