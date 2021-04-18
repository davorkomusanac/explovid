import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/// Types of possible notifications so far:
String kLikePost = 'like_post';
String kLikeComment = 'like_comment';
String kCommentPost = 'comment_post';
String kRepliedComment = 'replied_comment';
String kFollow = 'follow';
String kLikeRepliedComment = 'like_replied_comment';

class OurNotification {
  final String notificationUid;
  final String senderUid;
  final String receiverUid;
  final Timestamp notificationCreationDate;
  final String postPhotoUrl;
  final String typeOfNotification;
  final String postUid;
  final String postOwnerUid;
  final String notificationText;
  final bool isNotificationTextSpoiler;
  final String commentUid;
  final String parentCommentUid;
  final String commentBeingRepliedToUid;
  //TODO remove unused properties
  OurNotification({
    @required this.notificationUid,
    @required this.senderUid,
    @required this.receiverUid,
    @required this.notificationCreationDate,
    @required this.postPhotoUrl,
    @required this.typeOfNotification,
    @required this.postUid,
    @required this.postOwnerUid,
    @required this.notificationText,
    @required this.isNotificationTextSpoiler,
    @required this.commentUid,
    @required this.parentCommentUid,
    @required this.commentBeingRepliedToUid,
  });

  factory OurNotification.fromMap(Map<String, dynamic> data) => OurNotification(
        notificationUid: data['notification_uid'],
        senderUid: data['sender_uid'],
        receiverUid: data['receiver_uid'],
        notificationCreationDate: data['notification_creation_date'],
        postPhotoUrl: data['post_photo_url'],
        typeOfNotification: data['type_of_notification'],
        postUid: data['post_uid'],
        postOwnerUid: data['post_owner_uid'],
        notificationText: data['notification_text'],
        isNotificationTextSpoiler: data['is_notification_text_spoiler'],
        commentUid: data['comment_uid'],
        parentCommentUid: data['parent_comment_uid'],
        commentBeingRepliedToUid: data['sibling_comment_uid'],
      );

  factory OurNotification.fromSnapshot(DocumentSnapshot snapshot) => OurNotification.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'notification_uid': notificationUid,
        'sender_uid': senderUid,
        'receiver_uid': receiverUid,
        'notification_creation_date': notificationCreationDate,
        'post_photo_url': postPhotoUrl,
        'type_of_notification': typeOfNotification,
        'post_uid': postUid,
        'post_owner_uid': postOwnerUid,
        'notification_text': notificationText,
        'is_notification_text_spoiler': isNotificationTextSpoiler,
        'comment_uid': commentUid,
        'parent_comment_uid': parentCommentUid,
        'sibling_comment_uid': commentBeingRepliedToUid,
      };
}
