import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

 
 class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder:(context, snapshot) {
        if(snapshot.hasData) {
          return HomePage();
        }
         else{
          return LoginPage();
         }
      }
      
      ),
    );
  }
}