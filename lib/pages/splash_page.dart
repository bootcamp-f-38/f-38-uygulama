import 'package:f_38/constant/app_theme.dart';
import 'package:f_38/constant/constants.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>  LoginPage())
      );
    }
    
    );
  }

    @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [AppTheme.of(context).primary,AppTheme.of(context).secondary],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,

          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.ac_unit_sharp,
            size: 80,
            color: Colors.white,
            ),
            SizedBox(height: 20,)
            
          ],
        ),
      ),
    );
  }
}