part of 'theme_bloc.dart';

abstract class ThemeState {
  const ThemeState();
}

class ThemeInitial extends ThemeState {
  ThemeInitial(this.themeData);

  final ThemeData themeData;
}
