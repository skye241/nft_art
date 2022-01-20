import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_art/app/utils/colors.dart';

final ThemeData themeData = ThemeData(
    primaryColor: AppColor.primary,
    primaryColorBrightness: Brightness.dark,
    primaryColorDark: AppColor.primaryDark,
    // accentColor: AppColor.primary20,
    // primaryColorLight: AppColor.primary80,
    backgroundColor: AppColor.background,
    iconTheme: iconThemeData,
    // appBarTheme: appBarTheme,
    // buttonTheme: buttonThemeData,
    // buttonColor: AppColor.primary100,
    // disabledColor: AppColor.gray40,
    scaffoldBackgroundColor: AppColor.background,
    // dialogTheme: dialogTheme,
    textTheme: textTheme);

final ThemeData darkThemeData = ThemeData(
    primaryColor: AppColor.primary,
    primaryColorBrightness: Brightness.dark,
    primaryColorDark: AppColor.primaryDark,
    // accentColor: AppColor.primary20,
    // primaryColorLight: AppColor.primary80,
    backgroundColor: AppColor.background,
    iconTheme: iconThemeData,
    // appBarTheme: appBarTheme,
    // buttonTheme: buttonThemeData,
    // buttonColor: AppColor.primary100,
    // disabledColor: AppColor.gray40,
    scaffoldBackgroundColor: AppColor.background,
    // dialogTheme: dialogTheme,
    textTheme: textTheme);

final IconThemeData iconThemeData =
    IconThemeData(color: AppColor.titleActive, opacity: 1, size: 24);

final textThemeDark = textTheme.copyWith(
  headline1: textTheme.headline1?.copyWith(color: AppColor.offWhite),
  headline2: textTheme.headline2?.copyWith(color: AppColor.offWhite),
  headline3: textTheme.headline3?.copyWith(color: AppColor.offWhite),
  headline4: textTheme.headline4?.copyWith(color: AppColor.offWhite),
  headline5: textTheme.headline5?.copyWith(color: AppColor.offWhite),
  headline6: textTheme.headline6?.copyWith(color: AppColor.offWhite),
  subtitle1: textTheme.subtitle1?.copyWith(color: AppColor.offWhite),
  subtitle2: textTheme.subtitle2?.copyWith(color: AppColor.offWhite),
  bodyText1: textTheme.bodyText1?.copyWith(color: AppColor.offWhite),
  bodyText2: textTheme.bodyText2?.copyWith(color: AppColor.offWhite),
  caption: textTheme.caption?.copyWith(color: AppColor.offWhite),
  button: textTheme.button?.copyWith(color: AppColor.offWhite),
  overline: textTheme.overline?.copyWith(color: AppColor.offWhite),
);

final textThemeBoldDark = textThemeBold.copyWith(
  headline1: textThemeBold.headline1?.copyWith(color: AppColor.offWhite),
  headline2: textThemeBold.headline2?.copyWith(color: AppColor.offWhite),
  headline3: textThemeBold.headline3?.copyWith(color: AppColor.offWhite),
  headline4: textThemeBold.headline4?.copyWith(color: AppColor.offWhite),
  headline5: textThemeBold.headline5?.copyWith(color: AppColor.offWhite),
  headline6: textThemeBold.headline6?.copyWith(color: AppColor.offWhite),
  subtitle1: textThemeBold.subtitle1?.copyWith(color: AppColor.offWhite),
  subtitle2: textThemeBold.subtitle2?.copyWith(color: AppColor.offWhite),
  bodyText1: textThemeBold.bodyText1?.copyWith(color: AppColor.offWhite),
  bodyText2: textThemeBold.bodyText2?.copyWith(color: AppColor.offWhite),
  caption: textThemeBold.caption?.copyWith(color: AppColor.offWhite),
  button: textThemeBold.button?.copyWith(color: AppColor.offWhite),
  overline: textThemeBold.overline?.copyWith(color: AppColor.offWhite),
);

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.epilogue(
    fontSize: 40,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    height: 48 / 40,
    color: AppColor.titleActive,
  ),
  headline2: GoogleFonts.epilogue(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    height: 36 / 32,
    color: AppColor.titleActive,
  ),
  headline3: GoogleFonts.epilogue(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 1,
    height: 32 / 24,
    color: AppColor.titleActive,
  ),
  subtitle1: GoogleFonts.epilogue(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 28 / 20,
    color: AppColor.body,
  ),
  subtitle2: GoogleFonts.epilogue(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 22 / 16,
    color: AppColor.body,
  ),
  bodyText1: GoogleFonts.epilogue(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    color: AppColor.body,
  ),
  bodyText2: GoogleFonts.epilogue(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 20 / 13,
    color: AppColor.body,
  ),
  button: GoogleFonts.epilogue(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: AppColor.body,
  ),
  caption: GoogleFonts.epilogue(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: AppColor.body,
  ),
  overline: GoogleFonts.epilogue(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: AppColor.body,
  ),
);
final TextTheme textThemeBold = TextTheme(
  headline1: GoogleFonts.epilogue(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
    height: 48 / 40,
    color: AppColor.titleActive,
  ),
  headline2: GoogleFonts.epilogue(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
    height: 36 / 32,
    color: AppColor.titleActive,
  ),
  headline3: GoogleFonts.epilogue(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
    height: 32 / 24,
    color: AppColor.titleActive,
  ),
  subtitle1: GoogleFonts.epilogue(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 28 / 20,
    color: AppColor.body,
  ),
  subtitle2: GoogleFonts.epilogue(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 22 / 16,
    color: AppColor.body,
  ),
  bodyText1: GoogleFonts.epilogue(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 20 / 14,
    color: AppColor.body,
  ),
  bodyText2: GoogleFonts.epilogue(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    height: 20 / 13,
    color: AppColor.body,
  ),
  button: GoogleFonts.epilogue(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.25,
    color: AppColor.body,
  ),
  caption: GoogleFonts.epilogue(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.4,
    color: AppColor.body,
  ),
  overline: GoogleFonts.epilogue(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.5,
    color: AppColor.body,
  ),
);
