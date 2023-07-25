//import 'package:amazone_clone/features/Auth/screens/Auth_screen.dart';
import 'package:flutter/material.dart';
import 'features/Auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case auth_screen.routeNmane:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => auth_screen(),
      );
      default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => Scaffold(
          body: Center(
            child: Text("404 Error"),
          ),
        ),
      );

  }
}
