// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  final String email;
  final String uid;
  final String name;
  final String username;
  final String bio;
  final int badge;
  final List followers;
  final List following;
  UserModel(
      {required this.email,
      required this.uid,
      required this.name,
      required this.username,
      required this.bio,
      required this.badge,
      required this.followers,
      required this.following});

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return UserModel(
      username: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      bio: snapshot["bio"],
      badge: snapshot["badge"],
      followers: snapshot["followers"],
      following: snapshot["following"],
      name: snapshot["name"],
    );
  }

  UserModel copyWith({
    String? email,
    String? uid,
    String? name,
    String? username,
    String? bio,
    int? badge,
    List? followers,
    List? following,
  }) {
    return UserModel(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      name: name ?? this.name,
      username: username ?? this.username,
      bio: bio ?? this.bio,
      badge: badge ?? this.badge,
      followers: followers ?? this.followers,
      following: following ?? this.following,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'name': name,
      'username': username,
      'bio': bio,
      'badge': badge,
      'followers': followers,
      'following': following,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      uid: map['uid'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      bio: map['bio'] as String,
      badge: map['badge']?.toInt() ?? 0,
      followers: List.from(map['followers'] as List),
      following: List.from(map['following'] as List),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(email: $email, uid: $uid,  name: $name, username: $username, bio: $bio,badge: $badge, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.uid == uid &&
        other.name == name &&
        other.username == username &&
        other.bio == bio &&
        other.badge == badge &&
        listEquals(other.followers, followers) &&
        listEquals(other.following, following);
  }

  @override
  int get hashCode {
    return email.hashCode ^
        uid.hashCode ^
        name.hashCode ^
        username.hashCode ^
        bio.hashCode ^
        badge.hashCode ^
        followers.hashCode ^
        following.hashCode;
  }
}
