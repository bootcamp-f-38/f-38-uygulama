import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/constant/routes.dart';
import 'package:f_38/pages/login_page.dart';
import 'package:f_38/resources/storage_methods.dart';
import 'package:f_38/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../resources/auth_methods.dart';
import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _circular = false;
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _bioController = TextEditingController();
  Uint8List? _image;
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
  }

  Future signUp() async {
    setState(() {
      _circular = true;
    });
    String res = await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _usernameController.text,
        bio: _bioController.text,
        file: _image!);
    if (res == "success") {
      setState(() {
        _circular = false;
      });

      if (context.mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => HomePage()),
            (route) => false);
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

  selectImage() async {
    Uint8List? im = await pickImage(ImageSource.gallery);

    setState(() {
      _image = im;
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
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: selectImage,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 25,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : const CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/default_user.png'),
                            ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Ad',
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
                  controller: _surnameController,
                  decoration: InputDecoration(
                    hintText: 'Soyad',
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
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'Kullanıcı adı',
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
                  onPressed: signUp,
                  child: _circular
                      ? Center(
                          child: CircularProgressIndicator(
                          color: Colors.white,
                        ))
                      : Text(
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
                          Navigator.pushNamed(context, loginRoute);
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
