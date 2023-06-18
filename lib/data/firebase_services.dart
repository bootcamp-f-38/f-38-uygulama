import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  Future<DocumentSnapshot> getUserDetails(String userId) async {
    DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection('users').doc(userId).get();

    return snapshot;
  }
}
