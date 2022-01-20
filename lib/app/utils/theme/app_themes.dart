import 'package:flutter/material.dart';
import 'package:nft_art/app/utils/colors.dart';
import 'package:nft_art/app/utils/style.dart';

enum AppTheme { Light, Dark }

final Map<AppTheme, dynamic> appThemes = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primary,
    primaryTextTheme: textTheme,
    textTheme: textThemeBold,
    disabledColor: AppColor.line,
    dividerColor: AppColor.line,
    unselectedWidgetColor: AppColor.body,

    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColor.inputBG,
      focusColor: AppColor.inputBG
    ),

    scaffoldBackgroundColor: AppColor.background,
  ),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.primaryDark,
      textTheme: textThemeBoldDark,
      disabledColor: AppColor.placeHolder,
      unselectedWidgetColor: AppColor.placeHolder,
      primaryTextTheme: textThemeDark,
      dividerColor: AppColor.body,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.offWhite,
        focusColor: AppColor.body
      ),
      scaffoldBackgroundColor: AppColor.titleActive)
};


