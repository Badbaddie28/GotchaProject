import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gotchaproject/home.dart';
import 'package:gotchaproject/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(
          splash: 'assets/images/spy.png',
          duration: 3000,
          nextScreen: const MyHomePage(title: 'Gotcha!',),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black));
  }
}

