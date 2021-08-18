import 'package:flutter/material.dart';

import 'track_specific_task/widgets/custom_text.dart';

// Function to print out my name

void main() {
  const myName = 'Adegoke David Tiwaloluwa';

  printMyName(myName);
}

// A function to print my name

void printMyName(String myName) {
  print('My name is $myName');
}

// A screen to display my name, linked to the track specific task.

class MyNameView extends StatelessWidget {
  const MyNameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sea.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black54, Colors.black87],
                stops: [0.20, 0.68, 1],
              ),
            ),
          ),
          const Center(
            child: CustomText(
              '''My name is Adegoke David, \n '''
              '''I am a Flutter Developer\n ''',
              color: Colors.white,
              weight: FontWeight.bold,
              size: 24,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
