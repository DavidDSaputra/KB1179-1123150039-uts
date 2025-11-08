import 'package:flutter/material.dart';
import 'screens/splash1_screen.dart';
import 'screens/splash2_screen.dart';
import 'screens/splash3_screen.dart';
import 'screens/login_screen.dart';

class Routes {
  static const splash1 = '/';
  static const splash2 = '/splash-2';
  static const splash3 = '/splash-3';
  static const login   = '/login';

  static Map<String, WidgetBuilder> get map => {
    splash1: (_) => const Splash1Screen(),
    splash2: (_) => const Splash2Screen(),
    splash3: (_) => const Splash3Screen(),
    login  : (_) => const LoginScreen(),
  };
}
