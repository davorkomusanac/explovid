import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../models/our_user/our_user.dart';

class UserActionsRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  CollectionReference _following = FirebaseFirestore.instance.collection('user_following');
  CollectionReference _followers = FirebaseFirestore.instance.collection('user_followers');
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<List<OurUser>> searchUsersWithUsername({String usernameSearchTerm}) async {
    List<OurUser> searchUsersResult = [];
    try {
      var querySnapshot = await _users
          .orderBy('username', descending: false)
          .where('username', isGreaterThanOrEqualTo: usernameSearchTerm.toLowerCase())
          .limit(10)
          .get();
      for (var userQueryDocSnap in querySnapshot.docs) {
        searchUsersResult.add(OurUser.fromSnapshot(userQueryDocSnap));
      }
    } catch (error) {
      print(error.toString());
    }
    return searchUsersResult;
  }

  Future<List<OurUser>> getSearchUsersWithUsernameNextPage({
    String usernameSearchTerm,
    OurUser lastUserInList,
  }) async {
    List<OurUser> nextPageSearchUsersResult = [];
    try {
      var querySnapshot = await _users
          .orderBy('username', descending: false)
          .where('username', isGreaterThanOrEqualTo: usernameSearchTerm.toLowerCase())
          .startAfter([lastUserInList.username])
          .limit(10)
          .get();
      for (var userQueryDocSnap in querySnapshot.docs) {
        nextPageSearchUsersResult.add(OurUser.fromSnapshot(userQueryDocSnap));
      }
    } catch (error) {
      print(error.toString());
    }
    return nextPageSearchUsersResult;
  }

  //Is the currentUser following the other user
  Future<bool> isFollowingUser({@required OurUser otherUser}) async {
    bool isFollowing = false;
    try {
      var querySnapshot =
          await _following.doc(_auth.currentUser.uid).collection("following").where('uid', isEqualTo: otherUser.uid).get();
      if (querySnapshot.docs.isNotEmpty) isFollowing = true;
    } catch (error) {
      print(error.toString());
    }
    return isFollowing;
  }

  //Current user wants to follow another user (increment current users following and other users followers)
  //Save both users info in separate collections for when showing lists of followers/following
  Future<String> followUser({@required OurUser otherUser}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      //Get current user as OurUser model with latest snapshot
      var docSnap = await _users.doc(_auth.currentUser.uid).get();
      var ourCurrentUser = OurUser.fromSnapshot(docSnap);

      //increment the number of people the current user follows
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "following": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      //increment the number of followers of the other user
      batch.set(
        _users.doc(otherUser.uid),
        {
          "followers": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      //Add the other user's data to the current user's collection of following
      batch.set(
        _following.doc(_auth.currentUser.uid).collection("following").doc(otherUser.uid),
        otherUser.toDocument(),
        SetOptions(merge: true),
      );
      //Add current user's data to the other user's collection of followers
      batch.set(
        _followers.doc(otherUser.uid).collection("followers").doc(_auth.currentUser.uid),
        ourCurrentUser.toDocument(),
        SetOptions(merge: true),
      );
      await batch.commit();
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> unfollowUser({@required OurUser otherUser}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      //decrement the number of people the current user follows
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "following": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //decrement the number of followers of the other user
      batch.set(
        _users.doc(otherUser.uid),
        {
          "followers": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //Remove the other user's data from the current user's collection of following
      batch.delete(
        _following.doc(_auth.currentUser.uid).collection("following").doc(otherUser.uid),
      );
      //Remove current user's data from the other user's collection of followers
      batch.delete(
        _followers.doc(otherUser.uid).collection("followers").doc(_auth.currentUser.uid),
      );
      await batch.commit();
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<List<OurUser>> showFollowersList({String profileOwnerUid}) async {}

  Future<List<OurUser>> showFollowingList({String profileOwnerUid}) async {}

  //Add pagination also
}
