import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:f_38/pages/login_page.dart';
import 'package:f_38/resources/storage_methods.dart';
import 'package:f_38/router.dart';
import 'package:f_38/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

import '../controller/auth_controller.dart';
import '../models/user.dart';
import '../repository/auth_repository.dart';
import '../resources/auth_methods.dart';
import 'home_page.dart';

class SignUpPage extends ConsumerWidget {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _bioController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> signInWithEmail(BuildContext context, WidgetRef ref) async {
      final String email = _emailController.text.trim();
      final String username = _usernameController.text.trim();
      final String password = _passwordController.text.trim();
      final String name = _nameController.text;
      final String surname = _surnameController.text;
      final String bio = _bioController.text;
      final authController = ref.watch(authControllerProvider.notifier);
      final authRepository = ref.read(authRepositoryProvider);

      final user = UserModel(
          email: email,
          bio: bio,
          followers: [],
          following: [],
          uid: "",
          name: name,
          username: username);
      authController.updateUser(user);

      final Either<String, UserCredential> result =
          await authRepository.signInWithEmail(email, password);

      result.fold(
        (String errorMessage) => showSnackBar2(context, errorMessage),
        (UserCredential userCredential) async {
          UserModel userModel = UserModel(
            email: email,
            username: "",
            name: name,
            followers: [],
            following: [],
            uid: userCredential.user!.uid,
            bio: '',
          );
          authController.updateUser(userModel);
          await authRepository.addUserDetails(userModel);

          // Navigate to the desired page after successful sign up
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      );
    }

    Future<void> signUpWithEmail(BuildContext context) async {
      final String email = _emailController.text.trim();
      final String username = _usernameController.text.trim();
      final String password = _passwordController.text.trim();
      final String name = _nameController.text.trim();
      final String surname = _surnameController.text.trim();
      final String bio = _bioController.text.trim();
      final authController = ref.watch(authControllerProvider.notifier);
      final authRepository = ref.read(authRepositoryProvider);

      final user = UserModel(
        email: email,
        name: name,
        username: username,
        followers: [],
        following: [],
        uid: "",
        bio: bio,
      );
      authController.updateUser(user);

      final Either<String, UserModel> result =
          await authRepository.signUpWithEmail(email, password, username, name);

      result.fold(
        (String errorMessage) => showSnackBar2(context, errorMessage),
        (UserModel userModel) async {
          authController.updateUser(userModel);
          await authRepository.addUserDetails(userModel);

          Routemaster.of(context).push('/');
        },
      );
    }

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
                  onPressed: () => signUpWithEmail(context),
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
                          Routemaster.of(context).push('/');
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
