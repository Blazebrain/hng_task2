import 'package:flutter/material.dart';

import 'track_specific_task/views/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}
