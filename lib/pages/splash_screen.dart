import 'package:flutter/material.dart';
import 'package:movie_app/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/movie_logo.png',
          width: 138,
          height: 124,
        ),
      ),
      backgroundColor: blackColor,
    );
  }
}
