import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
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
              obscureText: true,
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
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    // Şifremi Unuttum
                  },
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
                  // Giriş işlemleri
                },
                child: Text(
                  'Giriş Yap',
                  style: GoogleFonts.raleway(),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
                  backgroundColor: MaterialStateProperty.all(colorScheme.primary),
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