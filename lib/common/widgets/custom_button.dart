import 'dart:ui';

import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double width;
  final Color buttonColor;
  final Color borderColor;

  CustomButton(
      {@required this.text,
      this.buttonColor = Colors.transparent,
      this.borderColor = Colors.black,
      @required this.onTap,
      this.width});

  @override
  Widget build(BuildContext context) {
    return TapWidget(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: ClipRRect(
        child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: buttonColor,
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Center(
            child: Text(
              text ?? " ",
              style: Styles.boldText(size: 16, color: borderColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
