import 'package:flutter/material.dart';

import '../../data/data.dart';

class SegmentTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  SegmentTab({@required this.text, this.isSelected}) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: height),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Merriweather',
          fontSize: width * 4,
          color: isSelected != null
              ? isSelected
                  ? C.black
                  : C.white
              : C.black,
        ),
      ),
    );
  }
}
