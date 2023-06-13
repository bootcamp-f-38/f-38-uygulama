import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
      primary: Color(0xFF90BE6D),
      onSurface: Color(0xff2E3648),
      secondary: Color(0xFF90BE6D),
  );
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsetsDirectional.only(top: 96),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Container( width: 100,
            height: 100,
            color: Colors.red,),
            SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ad Soyad',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.primary,),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'E-posta',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.primary,),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                inputFormatters: [LengthLimitingTextInputFormatter(11)],
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Telefon',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.primary,),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Şifre',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.primary,),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Şifre Tekrar',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorScheme.primary,),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                },
                child: Text(
                  'Üye Ol',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                ),
              ),
               SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Zaten hesabın var mı ?",
                  style: TextStyle(
                    color: colorScheme.onSurface,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                  ),
                ),
                TextButton(
                  onPressed: () {
                        },
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontFamily: GoogleFonts.raleway().fontFamily,
                    ),
          ))],
        )]),
        ),
      ),
    );
  }
}
