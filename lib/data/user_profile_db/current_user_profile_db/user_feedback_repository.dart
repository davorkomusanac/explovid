import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class UserFeedbackRepository {
  CollectionReference _feedbackFeature = FirebaseFirestore.instance.collection('feedback_feature');
  CollectionReference _feedbackBugs = FirebaseFirestore.instance.collection('feedback_bugs');
  CollectionReference _reports = FirebaseFirestore.instance.collection('reports');
  //CollectionReference _blockedUsers = FirebaseFirestore.instance.collection('blocked_users');
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

  // Future<String> blockUser({@required String reportedUserUid}) async {
  //   String returnValue = "";
  //   try {
  //     String reportUid = Uuid().v4();
  //     await _reports.doc(_auth.currentUser.uid).collection('reported_users').doc(reportUid).set(
  //       {
  //         "report_owner_uid": _auth.currentUser.uid,
  //         "reported_user_uid": reportedUserUid,
  //         "creation_date": Timestamp.now(),
  //         "report_uid": reportUid,
  //       },
  //       SetOptions(merge: true),
  //     );
  //     returnValue = "Report submitted, thank you.";
  //   } catch (error) {
  //     returnValue = error.toString();
  //     print(error.toString());
  //   }
  //   return returnValue;
  // }
//TODO Block User (don't let user see other posts if he is blocked?)
}
