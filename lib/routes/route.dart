import 'package:flutter/material.dart';
import 'package:frutasdepiura_01/screens/index.dart';

class MyRoutes {
  // static const String rWELCOME = '/welcome';
  // static const String rLOGIN = '/login';
  static const String rHOME = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case ('/welcome'):
      //   return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      // case ('/login'):
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ('/home'):
        return MaterialPageRoute(builder: (_) => const CampaScreen());
      default:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    }
  }
}
