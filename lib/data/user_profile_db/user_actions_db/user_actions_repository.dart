import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/our_notification/our_notification.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/models/our_user_post/our_post_comment.dart';
import 'package:explovid/data/models/our_user_post/our_user_post.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../models/our_user/our_user.dart';
import '../../models/our_user_post/our_post_comment.dart';

class UserActionsRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  CollectionReference _following = FirebaseFirestore.instance.collection('user_following');
  CollectionReference _followers = FirebaseFirestore.instance.collection('user_followers');
  CollectionReference _posts = FirebaseFirestore.instance.collection('posts');
  CollectionReference _reviews = FirebaseFirestore.instance.collection('reviews');
  CollectionReference _notificationFeed = FirebaseFirestore.instance.collection('notification_feed');
  FirebaseAuth _auth = FirebaseAuth.instance;

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// search Users//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// follow Users/// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: otherUserUid,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: '',
      typeOfNotification: kFollow,
      postUid: '',
      postOwnerUid: '',
      notificationText: '',
      isNotificationTextSpoiler: false,
      commentUid: '',
      parentCommentUid: '',
      commentBeingRepliedToUid: '',
    );
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
      //Send notification to other user that the current user has started following him
      batch.set(
        _notificationFeed.doc(otherUserUid).collection("notifications").doc(_auth.currentUser.uid + "_followed_" + otherUserUid),
        ourNotification.toDocument(),
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
      //Remove notification from other user's notification feed
      batch.delete(
        _notificationFeed.doc(otherUserUid).collection("notifications").doc(_auth.currentUser.uid + "_followed_" + otherUserUid),
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
      //Remove notification from current user's notification feed
      batch.delete(
        _notificationFeed
            .doc(_auth.currentUser.uid)
            .collection("notifications")
            .doc(otherUserUid + "_followed_" + _auth.currentUser.uid),
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

  //Pagination for followers and following
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

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// User Posts/// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<OurUserPost> getPost({@required String postOwnerUid, @required String postUid}) async {
    OurUserPost post;
    try {
      var snapshot = await _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).get();
      post = OurUserPost.fromSnapshot(snapshot);
    } catch (e) {
      post = OurUserPost(
        tmdbId: 0,
        title: "",
        posterPath: "",
        isOfTypeMovie: true,
        isSpoiler: false,
        review: "",
        rating: 0,
        postUid: "",
        postOwnerUid: "",
        postCreationDate: Timestamp.now(),
        numberOfLikes: 0,
        numberOfComments: 0,
      );
      print(e.toString());
    }
    return post;
  }

  bool isUserOwnerOfPost({@required String postOwnerUid}) {
    return _auth.currentUser.uid == postOwnerUid;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// like Post/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<String> likePost({
    @required String postOwnerUid,
    @required String postUid,
    @required String postPhotoUrl,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    //Check if user is liking his own post, so that there is no need to write to notification feed
    bool isUserLikingHisOwnPost = _auth.currentUser.uid == postOwnerUid;
    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: postOwnerUid,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: postPhotoUrl,
      typeOfNotification: kLikePost,
      postUid: postUid,
      postOwnerUid: postOwnerUid,
      notificationText: '',
      isNotificationTextSpoiler: false,
      commentUid: '',
      parentCommentUid: '',
      commentBeingRepliedToUid: '',
    );
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_likes": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("likes").doc(_auth.currentUser.uid),
        {
          "user_uid": _auth.currentUser.uid,
          "timestamp": Timestamp.now(),
        },
        SetOptions(merge: true),
      );
      //Send notification to other user's notification feed ONLY if the user is not liking his own post
      if (!isUserLikingHisOwnPost)
        batch.set(
          _notificationFeed.doc(postOwnerUid).collection("notifications").doc(_auth.currentUser.uid + "_liked_post_" + postUid),
          ourNotification.toDocument(),
          SetOptions(merge: true),
        );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<String> unlikePost({@required String postOwnerUid, @required String postUid}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_likes": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("likes").doc(_auth.currentUser.uid),
      );
      //Remove notification from other user's notification feed
      batch.delete(
        _notificationFeed.doc(postOwnerUid).collection("notifications").doc(_auth.currentUser.uid + "_liked_post_" + postUid),
      );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<bool> isPostLiked({@required String postOwnerUid, @required String postUid}) async {
    bool isLiked = false;
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("likes")
          .where('user_uid', isEqualTo: _auth.currentUser.uid)
          .get();
      if (querySnapshot.docs.isNotEmpty) isLiked = true;
    } catch (error) {
      print(error.toString());
    }
    return isLiked;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// comment Post//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //Returns List so that when commenting a post, the user's info gets pushed to the bloc state of comments
  Future<List<dynamic>> commentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentText,
    @required bool isCommentSpoiler,
    @required String postPhotoUrl,
  }) async {
    List<dynamic> postCommentAndItsOwner = [];
    OurUser user;
    WriteBatch batch = FirebaseFirestore.instance.batch();
    OurPostComment ourPostComment = OurPostComment(
      userUid: _auth.currentUser.uid,
      commentUid: Uuid().v4(),
      timestamp: Timestamp.now(),
      commentText: commentText,
      numberOfLikes: 0,
      numberOfReplies: 0,
      isCommentSpoiler: isCommentSpoiler,
    );
    //Check if user is commenting his own post, so that there is no need to write to notification feed
    bool isUserCommentingHisOwnPost = _auth.currentUser.uid == postOwnerUid;
    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: postOwnerUid,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: postPhotoUrl,
      typeOfNotification: kCommentPost,
      postUid: postUid,
      postOwnerUid: postOwnerUid,
      notificationText: commentText,
      isNotificationTextSpoiler: isCommentSpoiler,
      commentUid: ourPostComment.commentUid,
      parentCommentUid: '',
      commentBeingRepliedToUid: '',
    );
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_comments": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(ourPostComment.commentUid),
        ourPostComment.toDocument(),
        SetOptions(merge: true),
      );
      //Send comment notification to other users notification feed only if the user is not commenting his own post
      if (!isUserCommentingHisOwnPost)
        batch.set(
          _notificationFeed
              .doc(postOwnerUid)
              .collection("notifications")
              .doc(_auth.currentUser.uid + "_commented_post_" + ourPostComment.commentUid),
          ourNotification.toDocument(),
          SetOptions(merge: true),
        );
      await batch.commit();
      var snap = await _users.doc(_auth.currentUser.uid).get();
      user = OurUser.fromSnapshot(snap);
    } catch (e) {
      print(e.toString());
      user = OurUser(
        uid: '',
        email: '',
        fullName: '',
        username: '',
        profilePhotoUrl: '',
        bio: '',
        followers: 0,
        following: 0,
        watchedLength: 0,
        watchlistLength: 0,
      );
    }
    postCommentAndItsOwner.add(user);
    postCommentAndItsOwner.add(ourPostComment);
    return postCommentAndItsOwner;
  }

  Future<String> deleteCommentFromPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_comments": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(commentUid),
      );
      //Remove notification from other user's notification feed
      batch.delete(
        _notificationFeed.doc(postOwnerUid).collection("notifications").doc(commentOwnerUid + "_commented_post_" + commentUid),
      );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// like Comment/// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<String> likeCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String commentText,
    @required String postPhotoUrl,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    bool isUserLikingHisOwnComment = _auth.currentUser.uid == commentOwnerUid;
    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: commentOwnerUid,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: postPhotoUrl,
      typeOfNotification: kLikeComment,
      postUid: postUid,
      postOwnerUid: postOwnerUid,
      notificationText: commentText,
      isNotificationTextSpoiler: false,
      commentUid: commentUid,
      parentCommentUid: '',
      commentBeingRepliedToUid: '',
    );
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(commentUid),
        {
          "number_of_likes": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(commentUid)
            .collection("likes")
            .doc(_auth.currentUser.uid),
        {
          "user_uid": _auth.currentUser.uid,
          "timestamp": Timestamp.now(),
        },
        SetOptions(merge: true),
      );
      //Send notification
      if (!isUserLikingHisOwnComment)
        batch.set(
          _notificationFeed
              .doc(commentOwnerUid)
              .collection("notifications")
              .doc(_auth.currentUser.uid + "_liked_comment_" + commentUid),
          ourNotification.toDocument(),
          SetOptions(merge: true),
        );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<String> unlikeCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(commentUid),
        {
          "number_of_likes": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(commentUid)
            .collection("likes")
            .doc(_auth.currentUser.uid),
      );
      //Remove notification
      batch.delete(
        _notificationFeed
            .doc(commentOwnerUid)
            .collection("notifications")
            .doc(_auth.currentUser.uid + "_liked_comment_" + commentUid),
      );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<Map<String, bool>> isCommentPostLiked({
    @required String postOwnerUid,
    @required String postUid,
    @required List<OurPostComment> allComments,
  }) async {
    Map<String, bool> isLiked = {};
    try {
      var queries = await Future.wait([
        for (var commentUid in allComments)
          _posts
              .doc(postOwnerUid)
              .collection("user_posts")
              .doc(postUid)
              .collection("comments")
              .doc(commentUid.commentUid)
              .collection("likes")
              .where('user_uid', isEqualTo: _auth.currentUser.uid)
              .get(),
      ]);
      for (int i = 0; i < queries.length; i++) {
        bool isCommentLiked = false;
        if (queries[i].docs.isNotEmpty) isCommentLiked = true;
        isLiked[allComments[i].commentUid] = isCommentLiked;
      }
    } catch (error) {
      print(error.toString());
    }
    return isLiked;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// Comment Replies////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<List<dynamic>> replyToOtherCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentText,
    @required bool isCommentSpoiler,
    @required String postPhotoUrl,
    // @required String uidOfTheCommentBeingRepliedTo,
    //@required String parentCommentOwnerUid,
    @required String uidOfTheCommentOwnerBeingRepliedTo,
    //TODO remove unnecessary
  }) async {
    List<dynamic> commentReplyAndItsOwner = [];
    OurUser user;
    WriteBatch batch = FirebaseFirestore.instance.batch();
    OurPostComment ourPostComment = OurPostComment(
      userUid: _auth.currentUser.uid,
      commentUid: Uuid().v4(),
      timestamp: Timestamp.now(),
      commentText: commentText,
      numberOfLikes: 0,
      numberOfReplies: 0,
      isCommentSpoiler: isCommentSpoiler,
    );

    //Check if user is replying to himself
    bool isUserReplyingToHimself = _auth.currentUser.uid == uidOfTheCommentOwnerBeingRepliedTo;

    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: uidOfTheCommentOwnerBeingRepliedTo,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: postPhotoUrl,
      typeOfNotification: kRepliedComment,
      postUid: postUid,
      postOwnerUid: postOwnerUid,
      notificationText: commentText,
      isNotificationTextSpoiler: isCommentSpoiler,
      commentUid: ourPostComment.commentUid,
      parentCommentUid: parentCommentUid,
      //commentBeingRepliedToUid: uidOfTheCommentBeingRepliedTo,
      commentBeingRepliedToUid: '',
    );
    try {
      //Increase number of comments for that post
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_comments": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      //Increase number of replies for parent comment
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(parentCommentUid),
        {
          "number_of_replies": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      //Add reply to to comments collection of parent comment
      batch.set(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(ourPostComment.commentUid),
        ourPostComment.toDocument(),
        SetOptions(merge: true),
      );
      //Send notification to user being replied to
      if (!isUserReplyingToHimself)
        batch.set(
          _notificationFeed
              .doc(uidOfTheCommentOwnerBeingRepliedTo)
              .collection("notifications")
              .doc(_auth.currentUser.uid + "_replied_comment_" + ourPostComment.commentUid),
          ourNotification.toDocument(),
          SetOptions(merge: true),
        );
      var snap = await _users.doc(_auth.currentUser.uid).get();
      user = OurUser.fromSnapshot(snap);
      await batch.commit();
    } catch (e) {
      print(e.toString());
      user = OurUser(
        uid: '',
        email: '',
        fullName: '',
        username: '',
        profilePhotoUrl: '',
        bio: '',
        followers: 0,
        following: 0,
        watchedLength: 0,
        watchlistLength: 0,
      );
    }
    commentReplyAndItsOwner.add(user);
    commentReplyAndItsOwner.add(ourPostComment);
    return commentReplyAndItsOwner;
  }

  Future<String> deleteReplyToOtherCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String parentCommentOwnerUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid),
        {
          "number_of_comments": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(postOwnerUid).collection("user_posts").doc(postUid).collection("comments").doc(parentCommentUid),
        {
          "number_of_replies": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      //Remove reply to parent comment
      batch.delete(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(commentUid),
      );
      //Remove notification from parent Comment Owner feed
      batch.delete(
        _notificationFeed
            .doc(parentCommentOwnerUid)
            .collection("notifications")
            .doc(commentOwnerUid + "_replied_comment_" + commentUid),
      );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<String> likeReplyToOtherCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required String commentOwnerUid,
    @required String commentText,
    @required String postPhotoUrl,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();

    bool isUserLikingHisOwnReply = _auth.currentUser.uid == commentOwnerUid;
    OurNotification ourNotification = OurNotification(
      notificationUid: Uuid().v4(),
      senderUid: _auth.currentUser.uid,
      receiverUid: commentOwnerUid,
      notificationCreationDate: Timestamp.now(),
      postPhotoUrl: postPhotoUrl,
      typeOfNotification: kLikeRepliedComment,
      postUid: postUid,
      postOwnerUid: postOwnerUid,
      notificationText: commentText,
      isNotificationTextSpoiler: false,
      commentUid: commentUid,
      parentCommentUid: parentCommentUid,
      commentBeingRepliedToUid: '',
    );
    try {
      batch.set(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(commentUid),
        {
          "number_of_likes": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(commentUid)
            .collection("likes")
            .doc(_auth.currentUser.uid),
        {
          "user_uid": _auth.currentUser.uid,
          "timestamp": Timestamp.now(),
        },
        SetOptions(merge: true),
      );
      //Send notification
      if (!isUserLikingHisOwnReply)
        batch.set(
          _notificationFeed
              .doc(commentOwnerUid)
              .collection("notifications")
              .doc(_auth.currentUser.uid + "_liked_replied_comment_" + commentUid),
          ourNotification.toDocument(),
          SetOptions(merge: true),
        );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<String> unLikeReplyToOtherCommentPost({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required String commentOwnerUid,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(commentUid),
        {
          "number_of_likes": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts
            .doc(postOwnerUid)
            .collection("user_posts")
            .doc(postUid)
            .collection("comments")
            .doc(parentCommentUid)
            .collection("comments")
            .doc(commentUid)
            .collection("likes")
            .doc(_auth.currentUser.uid),
      );
      //Remove notification
      batch.delete(
        _notificationFeed
            .doc(commentOwnerUid)
            .collection("notifications")
            .doc(_auth.currentUser.uid + "_liked_replied_comment_" + commentUid),
      );
      await batch.commit();
    } catch (e) {
      print(e.toString());
      returnVal = e.toString();
    }
    return returnVal;
  }

  Future<Map<String, bool>> isCommentRepliesLiked({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required List<OurPostComment> allComments,
  }) async {
    Map<String, bool> isLiked = {};
    try {
      var queries = await Future.wait([
        for (var commentUid in allComments)
          _posts
              .doc(postOwnerUid)
              .collection("user_posts")
              .doc(postUid)
              .collection("comments")
              .doc(parentCommentUid)
              .collection("comments")
              .doc(commentUid.commentUid)
              .collection("likes")
              .where('user_uid', isEqualTo: _auth.currentUser.uid)
              .get(),
      ]);
      for (int i = 0; i < queries.length; i++) {
        bool isCommentLiked = false;
        if (queries[i].docs.isNotEmpty) isCommentLiked = true;
        isLiked[allComments[i].commentUid] = isCommentLiked;
      }
    } catch (error) {
      print(error.toString());
    }
    return isLiked;
  }

  Future<List<dynamic>> showCommentRepliesLikers({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
  }) async {
    List<dynamic> commentRepliesLikesAndTime = [];
    List<OurUser> commentRepliesLikes = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(parentCommentUid)
          .collection("comments")
          .doc(commentUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        commentRepliesLikes.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    commentRepliesLikesAndTime.add(commentRepliesLikes);
    commentRepliesLikesAndTime.add(time);
    return commentRepliesLikesAndTime;
  }

  Future<List<dynamic>> showCommentRepliesLikersNextPage({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required String commentUid,
    @required Timestamp lastUserTimestamp,
  }) async {
    List<dynamic> commentRepliesLikesAndTime = [];
    List<OurUser> commentRepliesLikes = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(parentCommentUid)
          .collection("comments")
          .doc(commentUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .startAfter([lastUserTimestamp]).get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        commentRepliesLikes.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    commentRepliesLikesAndTime.add(commentRepliesLikes);
    commentRepliesLikesAndTime.add(time);
    return commentRepliesLikesAndTime;
  }

  Future<List<dynamic>> showCommentReplies({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
  }) async {
    List<dynamic> commentRepliesAndUsersAndDoc = [];
    List<OurPostComment> commentReplies = [];
    List<OurUser> commentRepliesUserProfiles = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(parentCommentUid)
          .collection("comments")
          .orderBy("timestamp", descending: true)
          .limit(5)
          .get();
      //Get the last document Snapshot for pagination
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      //Get each user doc so that it is up to date with the latest info
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      for (var query in queries) {
        commentRepliesUserProfiles.add(OurUser.fromSnapshot(query));
      }
      for (var query in querySnapshot.docs) {
        commentReplies.add(OurPostComment.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    commentRepliesAndUsersAndDoc.add(commentReplies);
    commentRepliesAndUsersAndDoc.add(commentRepliesUserProfiles);
    commentRepliesAndUsersAndDoc.add(time);
    return commentRepliesAndUsersAndDoc;
  }

  Future<List<dynamic>> showCommentRepliesNextPage({
    @required String postOwnerUid,
    @required String postUid,
    @required String parentCommentUid,
    @required Timestamp lastReplyTimestamp,
  }) async {
    List<dynamic> nextPageCommentRepliesAndUsersAndTime = [];
    List<OurPostComment> commentReplies = [];
    List<OurUser> commentRepliesUserProfiles = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(parentCommentUid)
          .collection("comments")
          .orderBy("timestamp", descending: true)
          .startAfter([lastReplyTimestamp])
          .limit(5)
          .get();
      //Get the last document Snapshot for pagination
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      //Get each user doc so that it is up to date with the latest info
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      for (var query in queries) {
        commentRepliesUserProfiles.add(OurUser.fromSnapshot(query));
      }
      for (var query in querySnapshot.docs) {
        commentReplies.add(OurPostComment.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    nextPageCommentRepliesAndUsersAndTime.add(commentReplies);
    nextPageCommentRepliesAndUsersAndTime.add(commentRepliesUserProfiles);
    nextPageCommentRepliesAndUsersAndTime.add(time);
    return nextPageCommentRepliesAndUsersAndTime;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// Post Likers & Pagination/// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<List<dynamic>> showPostLikers({@required String postOwnerUid, @required String postUid}) async {
    List<dynamic> postLikersAndTime = [];
    List<OurUser> postLikers = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        postLikers.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    postLikersAndTime.add(postLikers);
    postLikersAndTime.add(time);
    return postLikersAndTime;
  }

  Future<List<dynamic>> showPostLikersNextPage({
    @required String postOwnerUid,
    @required String postUid,
    @required Timestamp lastUserTimestamp,
  }) async {
    List<dynamic> nextPagePostLikersAndTime = [];
    List<OurUser> postLikers = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .startAfter([lastUserTimestamp]).get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        postLikers.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    nextPagePostLikersAndTime.add(postLikers);
    nextPagePostLikersAndTime.add(time);
    return nextPagePostLikersAndTime;
  }

  Future<List<dynamic>> showPostComments({@required String postOwnerUid, @required String postUid}) async {
    List<dynamic> postCommentsAndUsersAndDoc = [];
    List<OurPostComment> postComments = [];
    List<OurUser> postCommentsProfiles = [];
    Timestamp time = Timestamp.now();
    num numberOfLikes = 0;
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .orderBy("number_of_likes", descending: true)
          .orderBy("timestamp", descending: true)
          .limit(15)
          .get();
      //Get the last document Snapshot for pagination
      if (querySnapshot.docs.isNotEmpty) {
        time = querySnapshot.docs.last.data()["timestamp"];
        numberOfLikes = querySnapshot.docs.last.data()["number_of_likes"];
      }
      //Get each user doc so that it is up to date with the latest info
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      for (var query in queries) {
        postCommentsProfiles.add(OurUser.fromSnapshot(query));
      }
      for (var query in querySnapshot.docs) {
        postComments.add(OurPostComment.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    postCommentsAndUsersAndDoc.add(postComments);
    postCommentsAndUsersAndDoc.add(postCommentsProfiles);
    postCommentsAndUsersAndDoc.add(time);
    postCommentsAndUsersAndDoc.add(numberOfLikes);
    return postCommentsAndUsersAndDoc;
  }

  Future<List<dynamic>> showPostCommentsNextPage({
    @required String postOwnerUid,
    @required String postUid,
    @required Timestamp lastCommentTimestamp,
    @required num lastCommentNumberOfLikes,
  }) async {
    List<dynamic> nextPagePostCommentsAndTime = [];
    List<OurPostComment> postComments = [];
    List<OurUser> postCommentsProfiles = [];
    Timestamp time = Timestamp.now();
    num numberOfLikes = 0;
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .orderBy("number_of_likes", descending: true)
          .orderBy("timestamp", descending: true)
          .startAfter([lastCommentNumberOfLikes, lastCommentTimestamp])
          .limit(15)
          .get();
      //Get the last document Snapshot for pagination
      if (querySnapshot.docs.isNotEmpty) {
        time = querySnapshot.docs.last.data()["timestamp"];
        numberOfLikes = querySnapshot.docs.last.data()["number_of_likes"];
      }
      //Get each user doc so that it is up to date with the latest info
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      for (var query in queries) {
        postCommentsProfiles.add(OurUser.fromSnapshot(query));
      }
      for (var query in querySnapshot.docs) {
        postComments.add(OurPostComment.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    nextPagePostCommentsAndTime.add(postComments);
    nextPagePostCommentsAndTime.add(postCommentsProfiles);
    nextPagePostCommentsAndTime.add(time);
    nextPagePostCommentsAndTime.add(numberOfLikes);
    return nextPagePostCommentsAndTime;
  }

  Future<List<dynamic>> showCommentLikers({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
  }) async {
    List<dynamic> commentLikesAndTime = [];
    List<OurUser> commentLikes = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(commentUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        commentLikes.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    commentLikesAndTime.add(commentLikes);
    commentLikesAndTime.add(time);
    return commentLikesAndTime;
  }

  Future<List<dynamic>> showCommentLikersNextPage({
    @required String postOwnerUid,
    @required String postUid,
    @required String commentUid,
    @required Timestamp lastUserTimestamp,
  }) async {
    List<dynamic> commentLikesAndTime = [];
    List<OurUser> commentLikes = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _posts
          .doc(postOwnerUid)
          .collection("user_posts")
          .doc(postUid)
          .collection("comments")
          .doc(commentUid)
          .collection("likes")
          .orderBy("timestamp", descending: true)
          .limit(15)
          .startAfter([lastUserTimestamp]).get();
      //Get each user doc so that it is up to date with the latest info.
      var queries = await Future.wait([
        for (var query in querySnapshot.docs) _users.doc(query.data()["user_uid"]).get(),
      ]);
      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["timestamp"];
      for (var query in queries) {
        commentLikes.add(OurUser.fromSnapshot(query));
      }
    } catch (error) {
      print(error.toString());
    }
    commentLikesAndTime.add(commentLikes);
    commentLikesAndTime.add(time);
    return commentLikesAndTime;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// All Reviews for a Movie or Tv Show /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  Future<List<dynamic>> showMovieReviews({@required String movieTitle, @required int movieId}) async {
    List<dynamic> reviewsAndTime = [];
    List<OurUserPost> reviews = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("movie_reviews")
          .doc("movie_reviews")
          .collection(movieTitle + "_" + movieId.toString())
          .orderBy("post_creation_date", descending: true)
          .limit(15)
          .get();

      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["post_creation_date"];
      for (var query in querySnapshot.docs)
        reviews.add(
          OurUserPost(
              tmdbId: 0,
              title: '',
              posterPath: '',
              isOfTypeMovie: true,
              isSpoiler: true,
              review: '',
              rating: 0,
              postUid: query.data()["post_uid"],
              postOwnerUid: query.data()["user_uid"],
              postCreationDate: time,
              numberOfLikes: 0,
              numberOfComments: 0),
        );
    } catch (error) {
      print(error.toString());
    }
    reviewsAndTime.add(reviews);
    reviewsAndTime.add(time);
    return reviewsAndTime;
  }

  //Pagination
  Future<List<dynamic>> showMovieReviewsNextPage({
    @required String movieTitle,
    @required int movieId,
    @required Timestamp lastReviewTimestamp,
  }) async {
    List<dynamic> reviewsAndTime = [];
    List<OurUserPost> reviews = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("movie_reviews")
          .doc("movie_reviews")
          .collection(movieTitle + "_" + movieId.toString())
          .orderBy("post_creation_date", descending: true)
          .limit(15)
          .startAfter([lastReviewTimestamp]).get();

      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["post_creation_date"];
      for (var query in querySnapshot.docs)
        reviews.add(
          OurUserPost(
              tmdbId: 0,
              title: '',
              posterPath: '',
              isOfTypeMovie: true,
              isSpoiler: true,
              review: '',
              rating: 0,
              postUid: query.data()["post_uid"],
              postOwnerUid: query.data()["user_uid"],
              postCreationDate: time,
              numberOfLikes: 0,
              numberOfComments: 0),
        );
    } catch (error) {
      print(error.toString());
    }
    reviewsAndTime.add(reviews);
    reviewsAndTime.add(time);
    return reviewsAndTime;
  }

  Future<List<dynamic>> showTvShowReviews({@required String tvShowName, @required int tvShowId}) async {
    List<dynamic> reviewsAndTime = [];
    List<OurUserPost> reviews = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("tv_show_reviews")
          .doc("tv_show_reviews")
          .collection(tvShowName + "_" + tvShowId.toString())
          .orderBy("post_creation_date", descending: true)
          .limit(15)
          .get();

      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["post_creation_date"];
      for (var query in querySnapshot.docs)
        reviews.add(
          OurUserPost(
              tmdbId: 0,
              title: '',
              posterPath: '',
              isOfTypeMovie: false,
              isSpoiler: true,
              review: '',
              rating: 0,
              postUid: query.data()["post_uid"],
              postOwnerUid: query.data()["user_uid"],
              postCreationDate: time,
              numberOfLikes: 0,
              numberOfComments: 0),
        );
    } catch (error) {
      print(error.toString());
    }
    reviewsAndTime.add(reviews);
    reviewsAndTime.add(time);
    return reviewsAndTime;
  }

  Future<List<dynamic>> showTvShowReviewsNextPage({
    @required String tvShowName,
    @required int tvShowId,
    @required Timestamp lastReviewTimestamp,
  }) async {
    List<dynamic> reviewsAndTime = [];
    List<OurUserPost> reviews = [];
    Timestamp time = Timestamp.now();
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("tv_show_reviews")
          .doc("tv_show_reviews")
          .collection(tvShowName + "_" + tvShowId.toString())
          .orderBy("post_creation_date", descending: true)
          .limit(15)
          .startAfter([lastReviewTimestamp]).get();

      if (querySnapshot.docs.isNotEmpty) time = querySnapshot.docs.last.data()["post_creation_date"];
      for (var query in querySnapshot.docs)
        reviews.add(
          OurUserPost(
              tmdbId: 0,
              title: '',
              posterPath: '',
              isOfTypeMovie: false,
              isSpoiler: true,
              review: '',
              rating: 0,
              postUid: query.data()["post_uid"],
              postOwnerUid: query.data()["user_uid"],
              postCreationDate: time,
              numberOfLikes: 0,
              numberOfComments: 0),
        );
    } catch (error) {
      print(error.toString());
    }
    reviewsAndTime.add(reviews);
    reviewsAndTime.add(time);
    return reviewsAndTime;
  }

  //Get current User Review for Movie or TvShow when in Details Page (if there is a review)
  Future<OurUserPost> showUserMovieReview({@required String movieTitle, @required int movieId}) async {
    OurUserPost post;
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("movie_reviews")
          .doc("movie_reviews")
          .collection(movieTitle + "_" + movieId.toString())
          .where("user_uid", isEqualTo: _auth.currentUser.uid)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        post = OurUserPost.fromSnapshot(querySnapshot.docs.first);
      } else {
        post = OurUserPost(
          tmdbId: 0,
          title: '',
          posterPath: '',
          isOfTypeMovie: true,
          isSpoiler: true,
          review: '',
          rating: 0,
          postUid: '',
          postOwnerUid: '',
          postCreationDate: Timestamp.now(),
          numberOfLikes: 0,
          numberOfComments: 0,
        );
      }
    } catch (error) {
      print(error.toString());
      post = OurUserPost(
        tmdbId: 0,
        title: '',
        posterPath: '',
        isOfTypeMovie: true,
        isSpoiler: true,
        review: '',
        rating: 0,
        postUid: '',
        postOwnerUid: '',
        postCreationDate: Timestamp.now(),
        numberOfLikes: 0,
        numberOfComments: 0,
      );
    }
    return post;
  }

  Future<OurUserPost> showUserTvShowReview({@required String tvShowName, @required int tvShowId}) async {
    OurUserPost post;
    try {
      var querySnapshot = await _reviews
          .doc("reviews")
          .collection("tv_show_reviews")
          .doc("tv_show_reviews")
          .collection(tvShowName + "_" + tvShowId.toString())
          .where("user_uid", isEqualTo: _auth.currentUser.uid)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        post = OurUserPost.fromSnapshot(querySnapshot.docs.first);
      } else {
        post = OurUserPost(
          tmdbId: 0,
          title: '',
          posterPath: '',
          isOfTypeMovie: true,
          isSpoiler: true,
          review: '',
          rating: 0,
          postUid: '',
          postOwnerUid: '',
          postCreationDate: Timestamp.now(),
          numberOfLikes: 0,
          numberOfComments: 0,
        );
      }
    } catch (error) {
      print(error.toString());
      post = OurUserPost(
        tmdbId: 0,
        title: '',
        posterPath: '',
        isOfTypeMovie: true,
        isSpoiler: true,
        review: '',
        rating: 0,
        postUid: '',
        postOwnerUid: '',
        postCreationDate: Timestamp.now(),
        numberOfLikes: 0,
        numberOfComments: 0,
      );
    }
    return post;
  }

  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// Notification Feed /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  Stream<List<OurNotification>> getNotifications() {
    return _notificationFeed
        .doc(_auth.currentUser.uid)
        .collection("notifications")
        .orderBy('notification_creation_date', descending: true)
        .limit(10)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => OurNotification.fromSnapshot(doc),
            )
            .toList()
            .cast<OurNotification>();
      },
    );
  }

  //Pagination
  Future<List<OurNotification>> getNotificationsNextPage(OurNotification lastItemInList) async {
    List<OurNotification> nextPageNotifications = <OurNotification>[];
    try {
      var query = await _notificationFeed
          .doc(_auth.currentUser.uid)
          .collection("notifications")
          .orderBy('notification_creation_date', descending: true)
          .limit(10)
          .startAfter([lastItemInList.notificationCreationDate]).get();
      for (var doc in query.docs) {
        nextPageNotifications.add(
          OurNotification.fromSnapshot(doc),
        );
      }
    } catch (error) {
      print("ERROR Fetching Notifications Next Page " + error.toString());
    }
    return nextPageNotifications;
  }
}
