import 'package:colleage_bazaar/route.dart';
import 'package:flutter/material.dart';
import 'constraints/global_variable.dart';
import 'features/auth/screens/auth_screen.dart';

import 'constraints/global_variable.dart';
import 'features/auth/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Clone',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariable.backgroundColor,
          colorScheme: const ColorScheme.highContrastLight(
              primary: GlobalVariable.secondaryColor),
          appBarTheme: const AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black))),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthScren(),
    );
  }
}
