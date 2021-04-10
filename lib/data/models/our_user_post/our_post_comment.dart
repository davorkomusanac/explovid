import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OurPostComment {
  final String userUid;
  final String commentUid;
  final Timestamp timestamp;
  final String commentText;
  final num numberOfLikes;
  final num numberOfReplies;
  final bool isCommentSpoiler;

  OurPostComment({
    @required this.userUid,
    @required this.commentUid,
    @required this.timestamp,
    @required this.commentText,
    @required this.numberOfLikes,
    @required this.numberOfReplies,
    @required this.isCommentSpoiler,
  });

  factory OurPostComment.fromMap(Map<String, dynamic> data) => OurPostComment(
        userUid: data['user_uid'],
        commentUid: data['comment_uid'],
        timestamp: data['timestamp'],
        commentText: data['comment_text'],
        numberOfLikes: data['number_of_likes'],
        numberOfReplies: data['number_of_replies'],
        isCommentSpoiler: data['is_comment_spoiler'],
      );

  factory OurPostComment.fromSnapshot(DocumentSnapshot snapshot) => OurPostComment.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'user_uid': userUid,
        'comment_uid': commentUid,
        'timestamp': timestamp,
        'comment_text': commentText,
        'number_of_likes': numberOfLikes,
        'number_of_replies': numberOfReplies,
        'is_comment_spoiler': isCommentSpoiler,
      };
}
