import 'package:apple_sign_in/apple_sign_in.dart';
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

  String getAuthProvider() {
    return _auth.currentUser.providerData[0].providerId;
  }

  String getUserEmail() {
    return _auth.currentUser.email;
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
      var querySnapshot = await _users.where('username', isEqualTo: username.toLowerCase()).limit(1).get();
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
        {
          'username': username.toLowerCase(),
        },
      );
      returnVal = "Success";
    } catch (e) {
      returnVal = e.toString();
      print(e.toString());
    }
    return returnVal;
  }

  Future<String> editUserInformation({String name, String username, String bio}) async {
    String returnVal = "";
    try {
      await _users.doc(_auth.currentUser.uid).update(
        {
          'full_name': name,
          'username': username.toLowerCase(),
          'bio': bio,
        },
      );
      returnVal = kSuccess;
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
        "username": username.toLowerCase(),
        "bio": "Add bio..",
        "profile_photo_url": "",
        "account_created_date": Timestamp.now(),
        "followers": 0,
        "following": 0,
        "movie_watchlist": [],
        "movie_watched": [],
        "tv_show_watchlist": [],
        "tv_show_watched": [],
        "watched_length": 0,
        "watchlist_length": 0,
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
          "full_name": googleSignInAccount.displayName ?? "",
          "username": "",
          "bio": "Add bio..",
          "profile_photo_url": "", //googleSignInAccount.photoUrl,
          "account_created_date": Timestamp.now(),
          "followers": 0,
          "following": 0,
          "movie_watchlist": [],
          "movie_watched": [],
          "tv_show_watchlist": [],
          "tv_show_watched": [],
          "watched_length": 0,
          "watchlist_length": 0,
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
      returnValue = "There was an error signing in with Google";
    }
    return returnValue;
  }

  Future<String> signInWithApple() async {
    String returnValue = kError;
    try {
      if (!await AppleSignIn.isAvailable()) {
        return "Apple Sign In is not available on this device";
      }

      AuthorizationResult result = await AppleSignIn.performRequests([
        AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
      ]);

      switch (result.status) {
        case AuthorizationStatus.authorized:
          //Get Token
          final AppleIdCredential appleIdCredential = result.credential;
          final OAuthProvider oAuthProvider = OAuthProvider('apple.com');
          final credential = oAuthProvider.credential(
              idToken: String.fromCharCodes(appleIdCredential.identityToken),
              accessToken: String.fromCharCodes(appleIdCredential.authorizationCode));

          //Sign in
          UserCredential userCredential = await _auth.signInWithCredential(credential);
          DocumentSnapshot userDocumentSnapshot = await _users.doc(userCredential.user.uid).get();
          if (!userDocumentSnapshot.exists) {
            await _users.doc(userCredential.user.uid).set({
              "uid": userCredential.user.uid,
              "email": userCredential.user.email,
              "full_name": userCredential.user.displayName ?? "",
              "username": "",
              "bio": "Add bio..",
              "profile_photo_url": "", //googleSignInAccount.photoUrl,
              "account_created_date": Timestamp.now(),
              "followers": 0,
              "following": 0,
              "movie_watchlist": [],
              "movie_watched": [],
              "tv_show_watchlist": [],
              "tv_show_watched": [],
              "watched_length": 0,
              "watchlist_length": 0,
            });
          } else {
            print("Document already exits, nvm");
          }
          returnValue = kSuccess;
          break;
        case AuthorizationStatus.error:
          return "Apple authorization failed";
          break;
        case AuthorizationStatus.cancelled:
          return "Sign in cancelled";
          break;
      }
    } on PlatformException catch (e) {
      print(e.message);
      returnValue = e.code;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }

  Future<String> signOut() async {
    String returnValue = kError;
    try {
      //add Apple logout with sign in
      await _googleSignIn.signOut();
      await _auth.signOut();
      returnValue = kSuccess;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }

  Future<String> deleteCurrentUser({String password}) async {
    String returnValue = "There was an error, please try again.";
    String userLoginService = _auth.currentUser.providerData[0].providerId;
    if (userLoginService == "password") {
      String result = await signInWithEmailAndPassword(email: _auth.currentUser.email, password: password);
      if (result != kSuccess) {
        returnValue = result;
        return returnValue;
      }
    } else if (userLoginService == "google.com") {
      String result = await signInWithGoogle();
      if (result != kSuccess) {
        returnValue = result;
        return returnValue;
      }
    } else if (userLoginService == "apple.com") {
      //Need to login here to confirm before delete
      String result = await signInWithApple();
      if (result != kSuccess) {
        returnValue = result;
        return returnValue;
      }
    } else {
      return returnValue;
    }

    try {
      //TODO Add Cloud function to delete each document, where the user UID is located?
      await _users.doc(_auth.currentUser.uid).delete();
      if (userLoginService == "google.com") await _googleSignIn.signOut();
      await _auth.currentUser.delete();
      returnValue = kSuccess;
    } catch (e) {
      print(e);
      returnValue = e.toString();
    }
    return returnValue;
  }
}
