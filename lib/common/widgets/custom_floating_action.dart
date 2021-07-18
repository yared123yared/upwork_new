import 'dart:ui';

import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final double width;
  final Color buttonColor;
  final Color borderColor;

  CustomFloatingButton(
      {@required this.text,
      this.buttonColor = const Color.fromRGBO(40, 64, 71, 1),
      this.borderColor = const Color.fromRGBO(40, 64, 71, 1),
      @required this.onTap,
      this.width});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TapWidget(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Container(
        width: size.width / 3,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: buttonColor,
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add,
                color: const Color.fromRGBO(228, 247, 243, 1),
              ),
              Text(
                text ?? " ",
                style: Styles.boldText(
                    size: 16, color: const Color.fromRGBO(228, 247, 243, 1)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
