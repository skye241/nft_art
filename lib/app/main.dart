import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nft_art/app/pages/routing.dart';
import 'package:nft_art/app/utils/theme/theme_bloc.dart';

bool isDark = false;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final ThemeBloc bloc = ThemeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
        create: (context) => bloc,
        child: BlocBuilder<ThemeBloc, ThemeState>(
          bloc: bloc,
          builder: (BuildContext context, ThemeState state) {
            if (state is ThemeInitial) {
              isDark = state.themeData.brightness == Brightness.dark;
              return _buildMaterialApp(context, state);
            } else
              return Container();
          },
        ));
  }

  Widget _buildMaterialApp(BuildContext context, ThemeInitial state) {
    print('redrawn');
    return MaterialApp(
      initialRoute: RoutesName.splashPage,
      onGenerateRoute: (RouteSettings settings) => routeSettings(settings),
      debugShowCheckedModeBanner: false,
      theme: state.themeData,
      // navigatorKey: navigatorKey,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // navigatorObservers: <NavigatorObserver>[
      //   FirebaseAnalyticsObserver(analytics: analytics),
      // ],
      supportedLocales: const <Locale>[Locale('vi', 'VN')],
    );
  }
}
