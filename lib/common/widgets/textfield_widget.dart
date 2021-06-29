import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {this.padding = const EdgeInsets.fromLTRB(20, 0, 20, 20),
      this.hintText,
      this.hintFontSize = 18,
      this.onChanged});

  final EdgeInsets padding;
  final String hintText;
  final double hintFontSize;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontSize: hintFontSize, color: ColorConstants.darkGreyColor),
              hintText: hintText,
              contentPadding: EdgeInsets.only(left: 10)),
          onChanged: (val) {
            onChanged(val);
          },
        ));
  }
}
