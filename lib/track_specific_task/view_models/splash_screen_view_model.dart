import 'dart:async';

import 'package:flutter/material.dart';

import '../views/welcome_screen.dart';

class SplashScreenViewModel {
  void startApp(context) {
    const startTime = Duration(seconds: 3);

    Timer(startTime, () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const WelcomeScreen();
      }));
    });
  }
}
