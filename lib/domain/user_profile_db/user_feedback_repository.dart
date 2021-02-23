import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserFeedbackRepository {
  CollectionReference _feedbackFeature = FirebaseFirestore.instance.collection('feedback_feature');
  CollectionReference _feedbackBugs = FirebaseFirestore.instance.collection('feedback_bugs');
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> addFeatureFeedback(String feedback) async {
    String returnValue = "";
    await _feedbackFeature.doc(_auth.currentUser.uid).set(
      {
        "feedback": FieldValue.arrayUnion([feedback])
      },
      SetOptions(merge: true),
    ).then(
      (value) {
        returnValue = "Feedback submitted, thank you.";
      },
    ).catchError(
      (error) {
        returnValue = error.toString();
      },
    );
    return returnValue;
  }

  Future<String> addBugFeedback(String feedback) async {
    String returnValue = "";
    await _feedbackBugs.doc(_auth.currentUser.uid).set(
      {
        "feedback": FieldValue.arrayUnion([feedback])
      },
      SetOptions(merge: true),
    ).then(
      (value) {
        returnValue = "Feedback submitted, thank you.";
      },
    ).catchError(
      (error) {
        returnValue = error.toString();
      },
    );
    return returnValue;
  }
}
