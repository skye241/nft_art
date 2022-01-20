part of 'theme_bloc.dart';

abstract class ThemeEvent {
  const ThemeEvent();
}

class ThemeChanged extends ThemeEvent {
  ThemeChanged({this.appTheme = AppTheme.Light});

  final AppTheme appTheme;
}
