import 'package:flutter/material.dart';

import 'views/exports.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SplashPage(),
      );

    case HomePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const HomePage(),
      );

    case SigninPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SigninPage(),
      );

    case SignupPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const SignupPage(),
      );

    case ProfilePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const ProfilePage(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error 404 page not fould'),
          ),
        ),
      );
  }
}
