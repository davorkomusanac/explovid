import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserFeedbackRepository {
  CollectionReference _feedbackFeature = FirebaseFirestore.instance.collection('feedback_feature');
  CollectionReference _feedbackBugs = FirebaseFirestore.instance.collection('feedback_bugs');
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
}
