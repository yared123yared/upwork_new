import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../data/data.dart';
import '../models.dart';

class CustomActionButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isExpanded;
  final bool isOutline;
  final ButtonState state;
  final EdgeInsetsGeometry margin;
  final Color color;
  final LinearGradient gradient;
  final double fontSize;
  final EdgeInsetsGeometry padding;

  CustomActionButton({
    @required this.title,
    this.color,
    this.onTap,
    this.isExpanded = true,
    this.fontSize,
    this.isOutline = false,
    this.padding,
    LinearGradient gradient,
    this.state = ButtonState.idle,
    this.margin,
  }) : this.gradient =
            gradient ?? (isOutline || color != null ? null : C.bgGradient);

  final Map<ButtonState, String> titles = {
    ButtonState.loading: 'Loading',
    ButtonState.fail: 'Fail',
    ButtonState.success: 'Success'
  };

  Widget getButtonChild() {
    Widget buttonChild = FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        state == ButtonState.idle ? title : titles[state],
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Merriweather',
          color: isOutline ? buttonColorBlue : white,
          fontSize: fontSize ?? 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
    if (state == ButtonState.loading) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SpinKitFadingFour(color: C.primaryBackgroundColor, size: width * 5),
          Expanded(child: buttonChild),
          Container()
        ],
      );
    }
    return buttonChild;
  }

  @override
  Widget build(BuildContext context) {
    Map<ButtonState, Color> stateColors = {
      ButtonState.idle: color,
      ButtonState.loading: Color.fromRGBO(41, 60, 79, 0.8),
      ButtonState.fail: Color.fromRGBO(170, 72, 71, 0.8),
      ButtonState.success: Colors.lightGreen.withOpacity(0.8),
    };
    return GestureDetector(
      onTap: onTap,
      child: Container(
       // width: isExpanded ? double.infinity : null,
        margin:
            margin ?? EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 24),
        padding: padding ?? EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        decoration: BoxDecoration(
          color: state != ButtonState.idle
              ? isOutline
                  ? Colors.transparent
                  : stateColors[state] ?? buttonColorBlue
              : gradient == null
                  ? isOutline
                      ? Colors.transparent
                      : stateColors[state]
                  : null,
          gradient: state == ButtonState.idle
              ? color == null
                  ? gradient ?? null
                  : null
              : null,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isOutline
                ? color != null
                    ? color
                    : buttonColorBlue
                : white,
            width: 1,
          ),
        ),
        child: getButtonChild(),
      ),
    );
  }
}
