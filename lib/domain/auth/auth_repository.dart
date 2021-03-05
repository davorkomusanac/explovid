import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'profile',
    ],
  );

  bool isUserSignedIn() {
    return _auth.currentUser != null;
  }

  bool isUserVerified() {
    return _auth.currentUser.emailVerified;
  }

  Future<void> reloadCurrentUser() async {
    try {
      await _auth.currentUser.reload();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> isUsernameGivenToUser() async {
    bool isGiven = false;
    try {
      var doc = await _users.doc(_auth.currentUser.uid).get();
      String username = doc.data()['username'];
      if (username.isNotEmpty) isGiven = true;
    } catch (e) {
      print(e.toString());
    }
    return isGiven;
  }

  Future<bool> isUsernameAvailable(String username) async {
    bool isAvailable = false;
    if (username.isEmpty) return isAvailable;
    try {
      var querySnapshot = await _users.where('username', isEqualTo: username).limit(1).get();
      if (querySnapshot.docs.isEmpty) isAvailable = true;
    } catch (e) {
      print(e.toString());
    }
    return isAvailable;
  }

  Future<String> createUsername(String username) async {
    String returnVal = "";
    try {
      await _users.doc(_auth.currentUser.uid).update(
        {'username': username},
      );
      returnVal = "Success";
    } catch (e) {
      returnVal = e.toString();
      print(e.toString());
    }
    return returnVal;
  }

  Future<String> resetPassword(String email) async {
    String returnVal = "A link to reset your password has been sent to your email.";
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<String> registerWithEmailAndPassword({
    @required String email,
    @required String password,
    @required String fullName,
    @required String username,
  }) async {
    String returnValue = kError;
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _users.doc(userCredential.user.uid).set({
        "uid": userCredential.user.uid,
        "email": email,
        "full_name": fullName,
        "username": username,
        "profile_photo_url": "",
        "account_created_date": Timestamp.now(),
        "followers": 0,
        "following": 0,
        "movie_watchlist": [],
        "movie_watched": [],
        "tv_show_watchlist": [],
        "tv_show_watched": [],
      });
      _auth.currentUser.sendEmailVerification();
      returnValue = kSuccess;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      returnValue = e.code;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }

  Future<String> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  }) async {
    String returnValue = kError;
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      returnValue = kSuccess;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      returnValue = e.code;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }

  Future<String> signInWithGoogle() async {
    String returnValue = kError;
    try {
      final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleSignInAccount.authentication;
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      //sign in the Google user to Firebase to authenticate him
      UserCredential userCredential = await _auth.signInWithCredential(credential);
      //Check if user uid is already in, if not, create his profile under users Collection
      DocumentSnapshot userDocumentSnapshot = await _users.doc(userCredential.user.uid).get();
      if (!userDocumentSnapshot.exists) {
        await _users.doc(userCredential.user.uid).set({
          "uid": userCredential.user.uid,
          "email": googleSignInAccount.email,
          "full_name": googleSignInAccount.displayName,
          "username": "",
          "profile_photo_url": googleSignInAccount.photoUrl,
          "account_created_date": Timestamp.now(),
          "followers": 0,
          "following": 0,
          "movie_watchlist": [],
          "movie_watched": [],
          "tv_show_watchlist": [],
          "tv_show_watched": [],
        });
      } else {
        print("Document already exits, nvm");
      }
      returnValue = kSuccess;
    } on PlatformException catch (e) {
      print(e.message);
      returnValue = e.code;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }

  Future<String> signInWithApple() async {
    //Not implemented for now. A Mac is needed
    return "Not implemented for now, stay tuned for updates!";
  }

  Future<String> signOut() async {
    String returnValue = kError;
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
      returnValue = kSuccess;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }
}
