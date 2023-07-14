import 'package:flutter/foundation.dart';

class Post {
  final String id;
  final String title;
  final String? postUrl;
  final String? link;
  final String? description;
  final String communityName;
  final int commentCount;
  final DateTime timestamp;
  final String username;
  final String uid;
  final String type;
  final List<String> likes;
  Post({
    required this.id,
    required this.title,
    this.postUrl,
    this.link,
    this.description,
    required this.communityName,
    required this.commentCount,
    required this.timestamp,
    required this.username,
    required this.uid,
    required this.type,
    required this.likes,
  });

  Post copyWith({
    String? id,
    String? title,
    String? postUrl,
    String? link,
    String? description,
    String? communityName,
    int? commentCount,
    DateTime? timestamp,
    String? username,
    String? uid,
    String? type,
    List<String>? likes,
  }) {
    return Post(
      id: id ?? this.id,
      title: title ?? this.title,
      postUrl: postUrl ?? this.postUrl,
      link: link ?? this.link,
      description: description ?? this.description,
      communityName: communityName ?? this.communityName,
      commentCount: commentCount ?? this.commentCount,
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
      'title': title,
      'postUrl': postUrl,
      'link': link,
      'description': description,
      'communityName': communityName,
      'commentCount': commentCount,
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
      title: map['title'] ?? '',
      link: map['link'],
      postUrl: map['link'],
      description: map['description'],
      communityName: map['communityName'] ?? '',
      commentCount: map['commentCount']?.toInt() ?? 0,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
      username: map['username'] as String,
      uid: map['uid'] as String,
      type: map['type'] ?? '',
      likes: List<String>.from(
          (map['likes'] as List<dynamic>).map((e) => e.toString())),
    );
  }

  @override
  String toString() {
    return 'Post(id: $id, title: $title,  link: $link,  postUrl: $postUrl,description: $description, communityName: $communityName,  commentCount: $commentCount,timestamp: $timestamp, username: $username, uid: $uid, type: $type, likes: $likes)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.link == link &&
        other.postUrl == postUrl &&
        other.description == description &&
        other.communityName == communityName &&
        other.commentCount == commentCount &&
        other.timestamp == timestamp &&
        other.username == username &&
        other.uid == uid &&
        other.type == type &&
        listEquals(other.likes, likes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        link.hashCode ^
        postUrl.hashCode ^
        description.hashCode ^
        communityName.hashCode ^
        commentCount.hashCode ^
        timestamp.hashCode ^
        username.hashCode ^
        uid.hashCode ^
        type.hashCode ^
        likes.hashCode;
  }
}
