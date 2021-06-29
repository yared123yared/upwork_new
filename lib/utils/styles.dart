import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

class Styles {
  static boldText({double size = 14, Color color = ColorConstants.black}) =>
      TextStyle(
          fontFamily: 'Merriweather',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w900);

  static semiBoldText({double size = 14, Color color = ColorConstants.black}) =>
      TextStyle(
          fontFamily: 'Merriweather',
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w600);

  static normalText({double size = 14, Color color = ColorConstants.black}) =>
      TextStyle(
        fontFamily: 'Merriweather',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500,
      );

  static lightText({double size = 14, Color color = ColorConstants.black}) =>
      TextStyle(
        fontFamily: 'Merriweather',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      );
}
