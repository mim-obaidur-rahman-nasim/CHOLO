import 'package:cholo/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cholo',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
