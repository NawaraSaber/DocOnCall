import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doc_on_call/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Easing.standard,
      animationDuration: Durations.medium1,
      duration: 2500,
      backgroundColor: const Color.fromARGB(255, 252, 253, 254),
      splash: Column(
        children: [
          Image.asset("assets/images/splash1.png"),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 0),
            child: LoadingAnimationWidget.horizontalRotatingDots(
                color: const Color.fromARGB(255, 77, 18, 166), size: 50),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            'Welcom To',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 77, 18, 166)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            ' Doctor On Call',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 77, 18, 166)),
          )
        ],
      ),
      nextScreen: const RootScreen(),
      splashTransition: SplashTransition.slideTransition,
      splashIconSize: 350,
    );
  }
}
