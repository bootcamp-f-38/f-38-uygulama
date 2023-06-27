import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

<<<<<<< Updated upstream
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
      primary: Color(0xFF90BE6D),
      onSurface: Color(0xFF90BE6D),
      secondary: Color(0xFF90BE6D),
    );
=======

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
              controller:_emailcontroller,
              style: GoogleFonts.raleway(),
              decoration: InputDecoration(
                hintText: 'Kullanıcı Adı',
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
<<<<<<< Updated upstream
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
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color:colorScheme.primary,
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
                onPressed: () {
                  // Giriş işlemleri
                },
                child: Text(
                  'Giriş Yap',
                  style: GoogleFonts.raleway(),
                ),
                style: ButtonStyle(
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
                minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
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
                    // Kayıt Ol
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
