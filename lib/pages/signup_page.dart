import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/constant/routes.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool circular = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  Future signUp() async {
    setState(() {
      circular = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim());
      print(userCredential.user!.email);
      setState(() {
        circular = false;
      });
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => HomePage()),
          (route) => false);
    } catch (e) {
      final snackBar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        circular = false;
      });
    }
    addUserDetails(_nameController.text.trim(), _emailController.text.trim(),
        _passwordController.text.trim());
  }

  Future addUserDetails(String name, String email, String password) async {
    await FirebaseFirestore.instance.collection('users').add({
      'name': name,
      'email': email,
      'password': password,
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme.copyWith(
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
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Ad Soyad',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'E-posta',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Şifre',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Üye Ol',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 48)),
                    backgroundColor:
                        MaterialStateProperty.all(colorScheme.primary),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginPage()));
                        },
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(
                            color: colorScheme.primary,
                            fontFamily: GoogleFonts.raleway().fontFamily,
                          ),
                        ))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
