import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/constants/app_routes.dart';
import 'package:flutter_application_1/app/features/login/login_page.dart';
import 'package:flutter_application_1/app/features/splash/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puc Minas',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))),
      routes: {
        AppRoutes.splash: (context) => splashpage(),
        AppRoutes.login: (context) => LoginPage(),
      },
    );
  }
}
