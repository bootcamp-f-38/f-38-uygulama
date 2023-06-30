import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user.dart';
import '../providers/firebase_providers.dart';
import '../type_defs.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    firestore: ref.read(firestoreProvider),
    auth: ref.read(authProvider),
  ),
);

class AuthRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  AuthRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
  })  : _auth = auth,
        _firestore = firestore;
  CollectionReference get _users => _firestore.collection("users");
  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<Either<String, UserCredential>> signInWithEmail(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(e.message!);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, UserModel>> signUpWithEmail(
      String email, String password, String username, String name) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel userModel = UserModel(
        email: email,
        username: username,
        name: name,
        followers: [],
        following: [],
        uid: userCredential.user!.uid,
        bio: '',
      );

      await _users.doc(userModel.uid).set(userModel.toMap());

      return Right(userModel);
    } on FirebaseAuthException catch (e) {
      return Left(e.message!);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<void> addUserDetails(UserModel userModel) async {
    await _users.doc(userModel.uid).set(userModel.toMap());
  }

  Stream<UserModel> getUserData(String uid) {
    return _users.doc(uid).snapshots().map(
          (event) => UserModel.fromMap(event.data() as Map<String, dynamic>),
        );
  }

  void logOut() async {
    await _auth.signOut();
  }
}
