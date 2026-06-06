import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const RideSphereApp());
}

class RideSphereApp extends StatelessWidget {
  const RideSphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RideSphere',
      theme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
