import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/resources/storage_methods.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import '../models/post.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
      String description, Uint8List file, String uid, String username) async {
    String res = "Hata";
    try {
      String photoUrl =
          await StorageMethods().uploadImageToStorage('posts', file, true);
      String postId = const Uuid().v1();
      Post post = Post(
        description: description,
        uid: uid,
        username: username,
        timestamp: DateTime.now(),
        postUrl: photoUrl,
        communityName: '',
        likes: [],
        id: postId,
        title: '',
        type: '',
      );
      _firestore.collection('posts').doc(postId).set(post.toMap());
      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
