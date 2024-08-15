import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobie_jobpotal/welcome.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Start the timer when the widget is built
    Timer(const Duration(seconds: 3), () {
      // Navigate to the Welcome screen after 3 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFF40189D),
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}


