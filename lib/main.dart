import 'package:f_38/constant/routes.dart';
import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/event_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/profile_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasePage());

class BasePage extends StatelessWidget {
  const BasePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "f_38 uygulama",
      routes: {
        homeRoute: (context) => const HomePage(),
        eventRoute: (context) => EventAnnouncementPage(),
        profileRoute: (context) => const ProfilePage(),
        contentRoute: (context) => const ContentPage(),
        loginRoute: (context) => LoginPage(),
        signupRoute: (context) =>  SignUpPage(),
      },
      home: Yonlendirme(),
    );
  }
}

class Yonlendirme extends StatelessWidget {
  const Yonlendirme({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, eventRoute);
              },
              child: Text('Etkinlikler'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, profileRoute);
              },
              child: Text('Profil'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, contentRoute);
              },
              child: Text('İçerik'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, homeRoute);
              },
              child: Text('Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginRoute);
              },
              child: Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, signupRoute);
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
