import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:f_38/router.dart';
import 'package:f_38/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:routemaster/routemaster.dart';
import '../constant/constants.dart';
import '../resources/auth_methods.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _circular = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _circular = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (res == 'success') {
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );

        setState(() {
          _circular = false;
        });
      }
    } else {
      setState(() {
        _circular = false;
      });

      if (context.mounted) {
        showSnackBar2(res, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
             "assets/images/logo_greenshare.png",
              height: 150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30),
            TextField(
              controller: _emailController,
              style: GoogleFonts.raleway(),
              decoration: InputDecoration(
                hintText: 'E-posta',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  ColorConstants.GreenAppColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstants.GreenAppColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              style: GoogleFonts.raleway(),
              decoration: InputDecoration(
                hintText: 'Şifre',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstants.GreenAppColor
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:  ColorConstants.GreenAppColor
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color:  ColorConstants.GreenAppColor
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Şifremi Unuttum',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstants.GreenAppColor,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ElevatedButton(
                onPressed: loginUser,
                child: _circular
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Colors.white,
                      ))
                    : Text(
                        'Giriş Yap',
                        style: GoogleFonts.raleway(),
                      ),
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 48)),
                  backgroundColor:
                      MaterialStateProperty.all(ColorConstants.GreenAppColor),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hesabınız yok mu?",
                  style: TextStyle(
                    color: Color(0xff2E3648),
                    fontFamily: GoogleFonts.raleway().fontFamily,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Routemaster.of(context).push('/signup');
                  },
                  child: Text(
                    'Kayıt Ol',
                    style: TextStyle(
                      color:ColorConstants.GreenAppColor,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
