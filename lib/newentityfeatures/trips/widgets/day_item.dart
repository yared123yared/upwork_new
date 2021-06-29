import 'package:flutter/material.dart';

import '../../../data/data.dart';
import '../../../data/screen_size.dart';

class DayItem extends StatelessWidget {
  final String dayName;
  final bool isSelected;

  const DayItem({this.dayName, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.blue : null,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      width: width * 12,
      height: height * 12,
      alignment: Alignment.center,
      child: Text(
        dayName.replaceFirst(dayName[0], dayName[0].toUpperCase()),
        style: tileSubTitle.copyWith(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 14),
      ),
    );
  }
}
