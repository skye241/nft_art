import 'package:flutter/material.dart';
import 'package:nft_art/app/pages/demo_page.dart';

class RoutesName {
  static const String splashPage = '/';
  static const String demoPage = 'demoPage';
}

MaterialPageRoute<dynamic> routeSettings(
    RouteSettings settings) {
  final dynamic data = settings.arguments;

  switch (settings.name) {
    // case RoutesName.splashPage:
    //   return MaterialPageRoute<dynamic>(
    //     builder: (BuildContext context) => SplashPage(),
    //     settings: const RouteSettings(name: RoutesName.splashPage),
    //   );
      case RoutesName.demoPage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => DemoPage(),
        settings: const RouteSettings(name: RoutesName.demoPage),
      );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => DemoPage(),
        settings: const RouteSettings(name: RoutesName.demoPage),
      );
  }
}
