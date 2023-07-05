// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import '../models/user.dart';
import '../pages/home_page.dart';
import '../utils/utils.dart';

final userProvider = StateProvider<UserModel?>((ref) => null);

final CollectionReference _users =
    FirebaseFirestore.instance.collection('users');
Stream<UserModel?> getUserData(String uid) {
  return _users.doc(uid).snapshots().map(
    (snapshot) {
      if (snapshot.data() == null) {
        return null;
      } else {
        return UserModel.fromMap(snapshot.data()! as Map<String, dynamic>);
      }
    },
  );
}

final usersProvider = StreamProvider<UserModel?>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  return authRepository.getUserData(FirebaseAuth.instance.currentUser!.uid);
});

final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    ref: ref,
  ),
);

final authStateChangeProvider = StreamProvider((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.authStateChange;
});

final getUserDataProvider = StreamProvider.family((ref, String uid) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.getUserData(uid);
});

class AuthController extends StateNotifier<bool> {
  final AuthRepository _authRepository;
  final Ref _ref;
  AuthController({required AuthRepository authRepository, required Ref ref})
      : _authRepository = authRepository,
        _ref = ref,
        super(false); // loading

  Stream<User?> get authStateChange => _authRepository.authStateChange;

  Future<void> signInWithEmail(BuildContext context, String email,
      String password, String username, String name) async {
    state = true;
    final Either<String, UserCredential> result =
        await _authRepository.signInWithEmail(email, password);

    state = false;
    result.fold(
      (String errorMessage) => showSnackBar(context, errorMessage),
      (UserCredential? userCredential) async {
        if (userCredential != null) {
          UserModel userModel = UserModel(
            email: email,
            username: username,
            name: name,
            followers: [],
            following: [],
            uid: userCredential.user!.uid,
            bio: '',
          );
          _ref.read(userProvider.notifier).state = userModel;
        }
      },
    );
  }

  Future<void> signUpWithEmailc(
    BuildContext context,
    String email,
    String password,
    String username,
    String name,
  ) async {
    state = true;

    final Either<String, UserModel> result =
        await _authRepository.signUpWithEmail(email, password, username, name);

    state = false;

    result.fold(
      (String errorMessage) => showSnackBar(context, errorMessage),
      (UserModel userModel) async {
        _ref.read(userProvider.notifier).state = userModel;
        await _authRepository.addUserDetails(userModel);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
    );
  }

  void updateUser(UserModel userModel) {
    _ref.read(userProvider.notifier).state = userModel;
  }

  Stream<UserModel> getUserData(String uid) {
    return _authRepository.getUserData(uid);
  }

  void logout() async {
    _authRepository.logOut();
  }
}
