import 'package:flutter/material.dart';
import 'package:mobile_application/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING',
      theme: ThemeData.light(useMaterial3: true),
      home: const OnBoardingScreen()
    );
  }
}