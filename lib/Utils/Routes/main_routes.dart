import 'package:flutter/material.dart';
import 'package:mvvm_1/view/home_screen.dart';
import 'package:mvvm_1/view/login_screen.dart';

import 'routes_names.dart';

class MainRoutes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("no routes available"),
                  ),
                ));
    }
  }
}
