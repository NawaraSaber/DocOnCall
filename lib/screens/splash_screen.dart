import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doc_on_call/root_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Easing.standard,
      animationDuration: Durations.medium1,
      duration: 1500,
      backgroundColor: Colors.lightBlue,
      splash: "assets/images/splash.png",
      nextScreen: const RootScreen(),
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
