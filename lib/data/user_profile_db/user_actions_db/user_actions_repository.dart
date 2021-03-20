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
  Future<bool> isFollowingUser({@required String otherUserUid}) async {
    bool isFollowing = false;
    try {
      var querySnapshot =
          await _following.doc(_auth.currentUser.uid).collection("following").where('uid', isEqualTo: otherUserUid).get();
      if (querySnapshot.docs.isNotEmpty) isFollowing = true;
    } catch (error) {
      print(error.toString());
    }
    return isFollowing;
  }

  //Current user wants to follow another user (increment current users following and other users followers)
  //Save both users info in separate collections for when showing lists of followers/following
  Future<String> followUser({@required String otherUserUid}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
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
        _users.doc(otherUserUid),
        {
          "followers": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      //Add the other user's data to the current user's collection of following
      batch.set(
        _following.doc(_auth.currentUser.uid).collection("following").doc(otherUserUid),
        {
          "user_follow_date": Timestamp.now(),
          "uid": otherUserUid,
        },
        SetOptions(merge: true),
      );
      //Add current user's data to the other user's collection of followers
      batch.set(
        _followers.doc(otherUserUid).collection("followers").doc(_auth.currentUser.uid),
        {
          "user_follow_date": Timestamp.now(),
          "uid": _auth.currentUser.uid,
        },
        SetOptions(merge: true),
      );
      await batch.commit();
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> unfollowUser({@required String otherUserUid}) async {
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
        _users.doc(otherUserUid),
        {
          "followers": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //Remove the other user's data from the current user's collection of following
      batch.delete(
        _following.doc(_auth.currentUser.uid).collection("following").doc(otherUserUid),
      );
      //Remove current user's data from the other user's collection of followers
      batch.delete(
        _followers.doc(otherUserUid).collection("followers").doc(_auth.currentUser.uid),
      );
      await batch.commit();
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeUserFollower({@required String otherUserUid}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      //decrement the number of followers the current user has
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "followers": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //decrement the number of following of the other user
      batch.set(
        _users.doc(otherUserUid),
        {
          "following": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //Remove the other user's data from the current user's collection of followers
      batch.delete(
        _followers.doc(_auth.currentUser.uid).collection("followers").doc(otherUserUid),
      );
      //Remove current user's data from the other user's collection of following
      batch.delete(
        _following.doc(otherUserUid).collection("following").doc(_auth.currentUser.uid),
      );
      await batch.commit();
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<List<dynamic>> showFollowersList({@required String profileOwnerUid}) async {
    List<dynamic> followersAndTime = [];
    List<OurUser> followers = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _followers
          .doc(profileOwnerUid)
          .collection("followers")
          .orderBy("user_follow_date", descending: true)
          .limit(15)
          .get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["user_follow_date"];
      for (var query in queries) {
        followers.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    followersAndTime.add(followers);
    followersAndTime.add(time);
    return followersAndTime;
  }

  Future<List<dynamic>> showFollowingList({@required String profileOwnerUid}) async {
    List<dynamic> followingAndTime = [];
    List<OurUser> following = [];
    Timestamp time = Timestamp.now();

    try {
      var querySnapshot = await _following
          .doc(profileOwnerUid)
          .collection("following")
          .orderBy("user_follow_date", descending: true)
          .limit(15)
          .get();

      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["user_follow_date"];
      for (var query in queries) {
        following.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    followingAndTime.add(following);
    followingAndTime.add(time);
    return followingAndTime;
  }

  ///Pagination for followers and following
  Future<List<dynamic>> showFollowersListNextPage({
    @required String profileOwnerUid,
    @required Timestamp lastUserTimestamp,
  }) async {
    List<dynamic> nextPageFollowersAndTime = [];
    List<OurUser> followers = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _followers
          .doc(profileOwnerUid)
          .collection("followers")
          .orderBy("user_follow_date", descending: true)
          .limit(15)
          .startAfter([lastUserTimestamp]).get();

      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["user_follow_date"];
      for (var query in queries) {
        followers.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    nextPageFollowersAndTime.add(followers);
    nextPageFollowersAndTime.add(time);
    return nextPageFollowersAndTime;
  }

  Future<List<dynamic>> showFollowingListNextPage({
    @required String profileOwnerUid,
    @required Timestamp lastUserTimestamp,
  }) async {
    List<dynamic> nextPageFollowingAndTime = [];
    List<OurUser> following = [];
    Timestamp time = Timestamp.now();

    try {
      var querySnapshot = await _following
          .doc(profileOwnerUid)
          .collection("following")
          .orderBy("user_follow_date", descending: true)
          .limit(15)
          .startAfter([lastUserTimestamp]).get();

      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["user_follow_date"];
      for (var query in queries) {
        following.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    nextPageFollowingAndTime.add(following);
    nextPageFollowingAndTime.add(time);
    return nextPageFollowingAndTime;
  }
}
