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

  ///Movie_watchlist, Movie_watched and TV Show arrays are not added here
  ///since they are not needed when only showing basic user info for searching

  factory OurUser.fromMap(Map<String, dynamic> data) => OurUser(
        uid: data['uid'] as String ?? '',
        email: data['email'] as String ?? '',
        fullName: data['full_name'] as String ?? '',
        username: data['username'] as String ?? '',
        bio: data['bio'] as String ?? '',
        profilePhotoUrl: data['profile_photo_url'] as String ?? '',
        accountCreatedDate: data['account_created_date'] as Timestamp ?? Timestamp.now(),
        followers: data['followers'] as int ?? 0,
        following: data['following'] as int ?? 0,
        watchedLength: data['watched_length'] as int ?? 0,
        watchlistLength: data['watchlist_length'] as int ?? 0,
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
