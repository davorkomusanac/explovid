import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UserFeedbackRepository {
  CollectionReference _feedbackFeature = FirebaseFirestore.instance.collection('feedback_feature');
  CollectionReference _feedbackBugs = FirebaseFirestore.instance.collection('feedback_bugs');
  CollectionReference _reports = FirebaseFirestore.instance.collection('reports');
  CollectionReference _blocks = FirebaseFirestore.instance.collection('blocks');
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> addFeatureFeedback(String feedback) async {
    String returnValue = "";
    try {
      await _feedbackFeature.doc(_auth.currentUser.uid).set(
        {
          "feedback": FieldValue.arrayUnion([
            {
              "message": feedback,
              "timestamp": Timestamp.now(),
            }
          ])
        },
        SetOptions(merge: true),
      );
      returnValue = "Feedback submitted, thank you.";
    } catch (error) {
      returnValue = error.toString();
    }
    return returnValue;
  }

  Future<String> addBugFeedback(String feedback) async {
    String returnValue = "";
    try {
      await _feedbackBugs.doc(_auth.currentUser.uid).set(
        {
          "feedback": FieldValue.arrayUnion([
            {
              "message": feedback,
              "timestamp": Timestamp.now(),
            },
          ])
        },
        SetOptions(merge: true),
      );
      returnValue = "Feedback submitted, thank you.";
    } catch (error) {
      returnValue = error.toString();
    }
    return returnValue;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// Report content or other users /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  Future<String> reportUser({
    @required String reportedUserUid,
    @required String reportMessage,
    //  @required String reportReason,
  }) async {
    String returnValue = "";
    try {
      String reportUid = Uuid().v4();
      await _reports.doc(_auth.currentUser.uid).collection('reported_users').doc(reportUid).set(
        {
          "report_owner_uid": _auth.currentUser.uid,
          "reported_user_uid": reportedUserUid,
          "report_message": reportMessage,
          "creation_date": Timestamp.now(),
          //"report_reason": reportReason,
        },
        SetOptions(merge: true),
      );
      returnValue = "Report submitted, thank you.";
    } catch (error) {
      returnValue = error.toString();
      print(error.toString());
    }
    return returnValue;
  }

  Future<String> reportPost({
    @required String reportedUserUid,
    @required String reportedPostUid,
    @required String reportedPostText,
    @required String reportMessage,
    // @required String reportReason,
  }) async {
    String returnValue = "";
    try {
      String reportUid = Uuid().v4();
      await _reports.doc(_auth.currentUser.uid).collection('reported_posts').doc(reportUid).set(
        {
          "report_owner_uid": _auth.currentUser.uid,
          "reported_user_uid": reportedUserUid,
          "reported_post_uid": reportedPostUid,
          "reported_post_text": reportedPostText,
          "report_message": reportMessage,
          // "report_reason": reportReason,
          "creation_date": Timestamp.now(),
          "report_uid": reportUid,
        },
        SetOptions(merge: true),
      );
      returnValue = "Report submitted, thank you.";
    } catch (error) {
      returnValue = error.toString();
      print(error.toString());
    }
    return returnValue;
  }

  Future<String> reportComment({
    @required String reportedUserUid,
    @required String reportedPostUid,
    @required String reportedCommentUid,
    @required String reportedCommentText,
    @required String reportMessage,
    // @required String reportReason,
  }) async {
    String returnValue = "";
    try {
      String reportUid = Uuid().v4();
      await _reports.doc(_auth.currentUser.uid).collection('reported_comments').doc(reportUid).set(
        {
          "report_owner_uid": _auth.currentUser.uid,
          "reported_user_uid": reportedUserUid,
          "reported_post_uid": reportedPostUid,
          "reported_comment_uid": reportedCommentUid,
          "reported_comment_text": reportedCommentText,
          "report_message": reportMessage,
          //  "report_reason": reportReason,
          "creation_date": Timestamp.now(),
          "report_uid": reportUid,
        },
        SetOptions(merge: true),
      );
      returnValue = "Report submitted, thank you.";
    } catch (error) {
      returnValue = error.toString();
      print(error.toString());
    }
    return returnValue;
  }

  ///
  /// Block users
  ///
  Future<String> blockUser({@required String blockedUserUid}) async {
    String returnValue = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      //Add the blockedUser to the array of blocked users by the current user
      batch.set(
        _blocks.doc(_auth.currentUser.uid),
        {
          "blocked_users": FieldValue.arrayUnion([blockedUserUid]),
        },
        SetOptions(merge: true),
      );
      //Add the current user to the array of users who blocked the other user
      batch.set(
        _blocks.doc(blockedUserUid),
        {
          "users_blocked_by": FieldValue.arrayUnion([_auth.currentUser.uid]),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      returnValue = "User is blocked, until you unblock him";
    } catch (error) {
      returnValue = error.toString();
      print(error.toString());
    }
    return returnValue;
  }

  Future<String> unblockUser({@required String blockedUserUid}) async {
    String returnValue = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      //Remove the blockedUser from the array of blocked users by the current user
      batch.set(
        _blocks.doc(_auth.currentUser.uid),
        {
          "blocked_users": FieldValue.arrayRemove([blockedUserUid]),
        },
        SetOptions(merge: true),
      );
      //Remove the current user from the array of users who blocked the other user
      batch.set(
        _blocks.doc(blockedUserUid),
        {
          "users_blocked_by": FieldValue.arrayRemove([_auth.currentUser.uid]),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      returnValue = "User is successfully unblocked";
    } catch (error) {
      returnValue = error.toString();
      print(error.toString());
    }
    return returnValue;
  }

  Future<List<dynamic>> getBlockedUsers() async {
    List<String> blockedUsers = [];
    List<String> usersBlockedBy = [];
    List<dynamic> result = [];
    try {
      var doc = await _blocks.doc(_auth.currentUser.uid).get();
      if (doc.data()["blocked_users"] != null)
        for (var user in doc.data()["blocked_users"]) {
          blockedUsers.add(user as String);
        }
      if (doc.data()["users_blocked_by"] != null)
        for (var user in doc.data()["users_blocked_by"]) {
          usersBlockedBy.add(user as String);
        }
    } catch (error) {
      print("getBlockedUsers error: " + error.toString());
    }
    result.add(blockedUsers);
    result.add(usersBlockedBy);
    return result;
  }
}
