 import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:Column(
        children: [
          Image.asset('assets/images/Logo.png')
        ]),
        backgroundColor: ColorConstants.OrangeAppColor,
      nextScreen: LoginPage(), 
      splashIconSize: 250,
      duration: 20,
    );
  }
}