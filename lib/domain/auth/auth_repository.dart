import 'package:explovid/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
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
      await _auth.createUserWithEmailAndPassword(
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
      await _auth.signInWithCredential(credential);
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
