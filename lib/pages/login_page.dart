import 'package:f_38/pages/content_page.dart';
import 'package:f_38/pages/home_page.dart';
import 'package:f_38/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool circular = false;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
          primary: Color(0xFF90BE6D),
          onSurface: Color(0xFF90BE6D),
          secondary: Color(0xFF90BE6D),
        );

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
              controller: _emailController,
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
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => HomePage()));
                },
                child: Text(
                  'Giriş Yap',
                  style: GoogleFonts.raleway(),
                ),
                style: ButtonStyle(
                  minimumSize:
                      MaterialStateProperty.all(Size(double.infinity, 48)),
                  backgroundColor:
                      MaterialStateProperty.all(colorScheme.primary),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => HomePage()));
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
