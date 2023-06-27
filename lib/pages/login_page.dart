<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

<<<<<<< Updated upstream
=======
import 'package:f_38/constant/routes.dart';
import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:f_38/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/auth_methods.dart';

>>>>>>> caeaa9338bfd8c312fa1fa8d474a853c504a3961
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
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => HomePage()),
            (route) => false);

        setState(() {
          _circular = false;
        });
      }
    } else {
      setState(() {
        _circular = false;
      });

      if (context.mounted) {
        showSnackBar(res, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
<<<<<<< HEAD
      primary: Color(0xFF90BE6D),
      onSurface: Color(0xFF90BE6D),
      secondary: Color(0xFF90BE6D),
    );
=======
=======
          primary: Color(0xFF90BE6D),
          onSurface: Color(0xFF90BE6D),
          secondary: Color(0xFF90BE6D),
        );
>>>>>>> caeaa9338bfd8c312fa1fa8d474a853c504a3961

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
          primary: Color(0xFF90BE6D),
          onSurface: Color(0xFF90BE6D),
          secondary: Color(0xFF90BE6D),
        );
        final _emailcontroller=TextEditingController();
        final _passwordcontroller=TextEditingController();
>>>>>>> Stashed changes

        Future SignIn() async{
          await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _emailcontroller.text.trim(), 
            password: _passwordcontroller.text.trim());
        }
              @override
              void dispose() {
                _emailcontroller.dispose();
                _passwordcontroller.dispose();
                super.dispose();
              }

     return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            SizedBox(height: 30),
            TextField(
<<<<<<< HEAD
              controller:_emailcontroller,
=======
              controller: _emailController,
>>>>>>> caeaa9338bfd8c312fa1fa8d474a853c504a3961
              style: GoogleFonts.raleway(),
              decoration: InputDecoration(
                hintText: 'E-posta',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorScheme.primary,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorScheme.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
              controller: _passwordController,
>>>>>>> caeaa9338bfd8c312fa1fa8d474a853c504a3961
              obscureText: !_isPasswordVisible,
=======
              controller: _passwordcontroller,
              obscureText: true,
>>>>>>> Stashed changes
              style: GoogleFonts.raleway(),
              decoration: InputDecoration(
                hintText: 'Şifre',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorScheme.primary,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: colorScheme.secondary,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: colorScheme.primary,
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
                      color: colorScheme.primary,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
<<<<<<< Updated upstream
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
<<<<<<< HEAD
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
                  backgroundColor: MaterialStateProperty.all(colorScheme.primary),
=======
              child:GestureDetector(
                onTap: SignIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                  child: Text(
                    'Giriş Yap',
                    style: GoogleFonts.raleway().copyWith(
                      color: Colors.white
                    ),
                    
                    
                  ),
                  ),
>>>>>>> Stashed changes
=======
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 48)),
                  backgroundColor:
                      MaterialStateProperty.all(colorScheme.primary),
>>>>>>> caeaa9338bfd8c312fa1fa8d474a853c504a3961
                ),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                // Google ile Giriş
              },
              icon: Icon(Icons.login),
              label: Text(
                'Google ile Giriş Yap',
                style: GoogleFonts.raleway(),
              ),
              style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity, 48)),
                foregroundColor: MaterialStateProperty.all(colorScheme.primary),
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
                    Navigator.pushNamed(context, signupRoute);
                  },
                  child: Text(
                    'Kayıt Ol',
                    style: TextStyle(
                      color: colorScheme.primary,
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
