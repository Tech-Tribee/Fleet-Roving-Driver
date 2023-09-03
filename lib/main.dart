
import 'package:fleet_roving_driver/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DriverApp());
}

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleet Roving',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme:const TextTheme(titleMedium: TextStyle(fontWeight: FontWeight.w900)) 
      ),
      home: const SplashScreen(),
    );
  }
}
