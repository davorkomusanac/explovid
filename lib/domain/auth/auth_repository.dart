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

  Future<String> registerWithEmailAndPassword({
    @required String email,
    @required String password,
    @required String fullName,
  }) async {
    //add emailVerification
    //fullName currently not used, needs to be used when registering users in Cloud Firestore
    String returnValue = kError;
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      _users.doc(userCredential.user.uid).set({
        "uid": userCredential.user.uid,
        "email": email,
        "full_name": fullName,
        "username": "",
        "account_created_date": Timestamp.now(),
        "followers": [],
        "following": [],
        "movie_watchlist": [],
        "movie_watched": [],
        "tv_show_watchlist": [],
        "tv_show_watched": [],
      });
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
        _users.doc(userCredential.user.uid).set({
          "uid": userCredential.user.uid,
          "email": googleSignInAccount.email,
          "full_name": googleSignInAccount.displayName,
          "username": "",
          "account_created_date": Timestamp.now(),
          "followers": [],
          "following": [],
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
