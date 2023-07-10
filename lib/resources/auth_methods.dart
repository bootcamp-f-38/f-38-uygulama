import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/resources/storage_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:f_38/models/user.dart' as model;

import '../models/user.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser({
    required String email,
    required String name,
    required String password,
    required String username,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty ||
          name.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        UserModel userModel = UserModel(
          email: email,
          username: username,
          name: name,
          followers: [],
          following: [],
          uid: cred.user!.uid,
          bio: '',
        );

        res = "success";
        await FirebaseFirestore.instance
            .collection("users")
            .doc(userModel.uid)
            .set(userModel.toMap());
      } else {
        res = "Tüm bilgileri giriniz";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<model.UserModel> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.UserModel.fromSnap(documentSnapshot);
  }
}
