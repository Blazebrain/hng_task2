import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../view_models/splash_screen_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    SplashScreenViewModel().startApp(context);
    animationController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
      value: 0.5,
    );

    _animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);

    animationController.forward();
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenBackgroundColor.withOpacity(0.3),
      body: ScaleTransition(
        scale: _animation,
        child: const Center(
          child: Image(
            height: 150,
            width: 150,
            image: splashScreenImage,
          ),
        ),
      ),
    );
  }
}
