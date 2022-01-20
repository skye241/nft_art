import 'dart:math';

import 'package:flutter/material.dart';

class AppColor {
  static const Map<int, Color> colorCodes = <int, Color>{
    50: Color.fromRGBO(147, 205, 72, .1),
    100: Color.fromRGBO(147, 205, 72, .2),
    200: Color.fromRGBO(147, 205, 72, .3),
    300: Color.fromRGBO(147, 205, 72, .4),
    400: Color.fromRGBO(147, 205, 72, .5),
    500: Color.fromRGBO(147, 205, 72, .6),
    600: Color.fromRGBO(147, 205, 72, .7),
    700: Color.fromRGBO(147, 205, 72, .8),
    800: Color.fromRGBO(147, 205, 72, .9),
    900: Color.fromRGBO(147, 205, 72, 1),
  };

  static const Color primary = Color(0xff0000EA);
  static const Color primaryDark = Color(0xff0000EA);
  static const Color primaryDarkMode = Color(0xff005CFF);
  static const Color secondary = Color(0xffFFB802);
  static const Color secondaryDark = Color(0xffFF9700);
  static const Color secondaryDarkMode = Color(0xffFFE604);
  static const Color error = Color(0xffFE3F61);
  static const Color errorDark = Color(0xffFD0025);
  static const Color errorDarkMode = Color(0xffFF7E86);
  static const Color success = Color(0xff009846);
  static const Color successDark = Color(0xff02971C);
  static const Color successDarkMode = Color(0xff36EA88);
  static const Color warning = Color(0xffFF6711);
  static const Color warningDark = Color(0xffEB3800);
  static const Color warningDarkMode = Color(0xffFF9922);

  ///GrayScale
  static const Color titleActive = Color(0xff222222);
  static const Color body = Color(0xff333333);
  static const Color label = Color(0xff555555);
  static const Color placeHolder = Color(0xff888888);
  static const Color line = Color(0xffDCDCDC);
  static const Color inputBG = Color(0xffF0F0F0);
  static const Color background = Color(0xffF8F8F8);
  static const Color offWhite = Color(0xffFCFCFC);

  ///Gradient
  static const LinearGradient primaryGradient = LinearGradient(
      colors: <Color>[
        Color(0xff0000C5),
        Color(0xff0046FF),
      ],
      transform: GradientRotation(108.08 * pi / 180),
      begin: Alignment.topLeft,
      end: Alignment.bottomCenter,
      stops: <double>[-0.0253, 1.2311]);
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: <Color>[
      Color(0xffFF8200),
      Color(0xffFFFF02),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient accentGradient = LinearGradient(
    colors: <Color>[
      Color(0xff0000F6),
      Color(0xff9041FF),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // stops: <double>[-0.0253, 1.2311]
  );
}
