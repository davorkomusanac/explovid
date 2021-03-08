import 'package:cloud_firestore/cloud_firestore.dart';

class OurUser {
  final String uid;
  final String email;
  final String fullName;
  final String username;
  final String bio;
  final String profilePhotoUrl;
  final Timestamp accountCreatedDate;
  final int followers;
  final int following;
  final int watchedLength;
  final int watchlistLength;

  OurUser({
    this.uid,
    this.email,
    this.fullName,
    this.username,
    this.bio,
    this.profilePhotoUrl,
    this.accountCreatedDate,
    this.followers,
    this.following,
    this.watchedLength,
    this.watchlistLength,
  });

  factory OurUser.fromMap(Map<String, dynamic> data) => OurUser(
        uid: data['uid'],
        email: data['email'],
        fullName: data['full_name'],
        username: data['username'],
        bio: data['bio'],
        profilePhotoUrl: data['profile_photo_url'],
        accountCreatedDate: data['account_created_date'],
        followers: data['followers'],
        following: data['following'],
        watchedLength: data['watched_length'],
        watchlistLength: data['watchlist_length'],
      );

  factory OurUser.fromSnapshot(DocumentSnapshot snapshot) => OurUser.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        "uid": uid,
        "email": email,
        "full_name": fullName,
        "username": username,
        "bio": bio,
        "profile_photo_url": profilePhotoUrl,
        "account_created_date": accountCreatedDate,
        "followers": followers,
        "following": following,
        "watched_length": watchedLength,
        "watchlist_length": watchlistLength,
      };
}
