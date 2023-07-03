import 'dart:convert';

import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final List<String> imageUrls;
  final String? link;
  final String? description;
  final String communityName;
  final String userId;
  final DateTime timestamp;
  final String username;
  final String uid;
  final String type;
  final List<String> likes;
  Post({
    required this.id,
    required this.imageUrls,
    this.link,
    required this.description,
    required this.communityName,
    required this.userId,
    required this.timestamp,
    required this.username,
    required this.uid,
    required this.type,
    required this.likes,
  });

  Post copyWith({
    String? id,
    List<String>? imageUrls,
    String? link,
    String? description,
    String? communityName,
    String? userId,
    DateTime? timestamp,
    String? username,
    String? uid,
    String? type,
    List<String>? likes,
  }) {
    return Post(
      id: id ?? this.id,
      imageUrls: imageUrls ?? this.imageUrls,
      link: link ?? this.link,
      description: description ?? this.description,
      communityName: communityName ?? this.communityName,
      userId: userId ?? this.userId,
      timestamp: timestamp ?? this.timestamp,
      username: username ?? this.username,
      uid: uid ?? this.uid,
      type: type ?? this.type,
      likes: likes ?? this.likes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'imageUrls': imageUrls,
      'link': link,
      'description': description,
      'communityName': communityName,
      'userId': userId,
      'timestamp': timestamp.millisecondsSinceEpoch,
      'username': username,
      'uid': uid,
      'type': type,
      'likes': likes,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
        id: map['id'] as String,
        imageUrls: List<String>.from(map['imageUrls'] as List<String>),
        link: map['link'],
        description: map['description'],
        communityName: map['communityName'] ?? '',
        userId: map['userId'] as String,
        timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
        username: map['username'] as String,
        uid: map['uid'] as String,
        type: map['type'] ?? '',
        likes: List<String>.from(
          (map['likes'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, imageUrls: $imageUrls, link: $link, description: $description, communityName: $communityName,  userId: $userId, timestamp: $timestamp, username: $username, uid: $uid, type: $type, likes: $likes)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        listEquals(other.imageUrls, imageUrls) &&
        other.link == link &&
        other.description == description &&
        other.communityName == communityName &&
        other.userId == userId &&
        other.timestamp == timestamp &&
        other.username == username &&
        other.uid == uid &&
        other.type == type &&
        listEquals(other.likes, likes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        imageUrls.hashCode ^
        link.hashCode ^
        description.hashCode ^
        communityName.hashCode ^
        userId.hashCode ^
        timestamp.hashCode ^
        username.hashCode ^
        uid.hashCode ^
        type.hashCode ^
        likes.hashCode;
  }
}
