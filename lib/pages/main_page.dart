<<<<<<< Updated upstream
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

 
 class MainPage extends StatelessWidget {
=======
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:f_38/constant/routes.dart';
import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/event_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/profile_page.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/pages/singup_page.dart';


class MainPage extends StatelessWidget {
>>>>>>> Stashed changes
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
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
=======
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
          if(snapshot.hasData) {
            return HomePage();
          }
          else
          {
            return LoginPage();
          }
        },
        
        )

>>>>>>> Stashed changes
    );
  }
}