import 'package:flutter/material.dart';

import 'features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScren.routName:
      {
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => AuthScren());
      }
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Text("Screen doesn't exist"),
              ));
  }
}
