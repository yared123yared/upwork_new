import 'package:flutter/material.dart';

import 'data.dart';

const _primaryGreenValue = 0xFF49AA74;
const MaterialColor green = const MaterialColor(
  _primaryGreenValue,
  const <int, Color>{
    50: const Color(0xFF49AA74),
    100: const Color(0xFF49AA74),
    200: const Color(0xFF49AA74),
    300: const Color(0xFF49AA74),
    400: const Color(0xFF49AA74),
    500: const Color(_primaryGreenValue),
    600: const Color(0xFF49AA74),
    700: const Color(0xFF49AA74),
    800: const Color(0xFF49AA74),
    900: const Color(0xFF49AA74),
  },
);
final Color lightGreen = Color(0xFFC2FFDD);
final Color white = Colors.white;
final Color blue = Colors.blue;
final Color blue_1 = Color.fromRGBO(43, 113, 152, 1);
final Color black = Colors.black;
final Color black_1 = Colors.black54;
final Color red = Colors.red;
final Color buttonColorBlue = Color(0xFF0079D1);

final TextStyle appbarText = TextStyle(
    fontFamily: 'Merriweather',
    color: blue,
    fontSize: width * 7,
    fontWeight: FontWeight.w900);
final TextStyle inAppTitle = TextStyle(
    fontFamily: 'Merriweather',
    color: green,
    fontSize: width * 6,
    fontWeight: FontWeight.w600);
final TextStyle inAppSubTitle = TextStyle(
    fontFamily: 'Merriweather',
    color: green,
    fontSize: width * 5,
    fontWeight: FontWeight.w500);
final TextStyle tileTitle = TextStyle(
  fontFamily: 'Merriweather',
  color: blue_1,
  fontSize: width * 4,
  fontWeight: FontWeight.w500,
);
final TextStyle tileSubTitle = TextStyle(
    fontFamily: 'Merriweather',
    color: Colors.black54,
    fontWeight: FontWeight.w400,
    fontSize: width * 3);
final TextStyle tileSubTitle_1 = TextStyle(
    fontFamily: 'Merriweather',
    color: blue,
    fontWeight: FontWeight.w400,
    fontSize: width * 3);

mixin C {
  //others colors
  static Color get primaryBlue => const Color(0xFF0079D1);
  static Color get primaryBackgroundColor => const Color(0xFFFFFFFF);
  static Color get elevationShadowColor => Colors.grey.withOpacity(.36);
  static Color get bottomNavigationIconColor => Colors.grey;

  //text colors
  static Color get primaryTextBlue => const Color(0xFF0079D1);
  static Color get secondaryTextBlue => const Color(0xFF2C7198);
  static Color get white => const Color(0xFFFFFFFF);
  static Color get red => const Color(0xFFEB5757);
  static Color get grey => Colors.grey.withOpacity(.7);
  static Color get black => Colors.black.withOpacity(.72);

  //gradient colors
  static Color get primaryGradientBlue => Color(0xFF0079D1);
  static Color get secondaryGradientBlue => Color(0xFF0064AD);

  static const List<Color> bgColor = [
    Color(0xFF3594DD),
    Color(0xFF0079D1),
    Color(0xFF5036D5),
  ];
  static List<Color> get railColor => [
        Color(0xFF2C7198),
        Color(0xff28292E),
        Color(0xff28292E),
      ];

  static Color get multiColor_1 => Color.fromRGBO(108, 186, 156, 1);
  static Color get multiColor_2 => Color.fromRGBO(2, 168, 166, 1);
  static Color get multiColor_3 => Color.fromRGBO(55, 115, 153, 1);
  static Color get multiColor_4 => Color.fromRGBO(83, 176, 96, 1);
  static Color get multiColor_5 => Color.fromRGBO(9, 186, 186, 1);

  static LinearGradient get railGradient => LinearGradient(
        colors: railColor,
        stops: [0.0, 0.5, 1.0],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  static const LinearGradient bgGradient = LinearGradient(
    colors: bgColor,
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
