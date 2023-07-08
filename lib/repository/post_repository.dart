import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:f_38/type_defs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

import '../models/community.dart';
import '../models/post.dart';
import '../providers/firebase_providers.dart';

final postRepositoryProvider = Provider((ref) {
  return PostRepository(
    firestore: ref.watch(firestoreProvider),
  );
});

class PostRepository {
  final FirebaseFirestore _firestore;
  PostRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;

  CollectionReference get _posts => _firestore.collection("posts");

  FutureVoid addPost(Post post) async {
    try {
      return right(_posts.doc(post.id).set(post.toMap()));
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<List<Post>> fetchUserPosts(List<Community> communities) {
    return _posts
        .where('communityName',
            whereIn: communities.map((e) => e.name).toList())
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((event) => event.docs
            .map((e) => Post.fromMap(e.data() as Map<String, dynamic>))
            .toList());
  }

  FutureVoid deletePost(Post post) async {
    try {
      return right(_posts.doc(post.id).delete());
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  void like(Post post, String userId) async {
    if (post.likes.contains(userId)) {
      _posts.doc(post.id).update({
        'likes': FieldValue.arrayRemove([userId])
      });
    } else {
      _posts.doc(post.id).update({
        'likes': FieldValue.arrayUnion([userId])
      });
    }
  }
}
