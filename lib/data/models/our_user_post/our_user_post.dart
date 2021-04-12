import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OurUserPost {
  final int tmdbId;
  final String title;
  final String posterPath;
  final bool isOfTypeMovie;
  final bool isSpoiler;
  final String review;
  final num rating;
  final String postUid;
  final String postOwnerUid;
  final Timestamp postCreationDate;
  final int numberOfLikes;
  final int numberOfComments;

  OurUserPost({
    @required this.tmdbId,
    @required this.title,
    @required this.posterPath,
    @required this.isOfTypeMovie,
    @required this.isSpoiler,
    @required this.review,
    @required this.rating,
    @required this.postUid,
    @required this.postOwnerUid,
    @required this.postCreationDate,
    @required this.numberOfLikes,
    @required this.numberOfComments,
  });

  factory OurUserPost.fromMap(Map<String, dynamic> data) => OurUserPost(
        tmdbId: data['tmdb_id'],
        title: data['title'],
        posterPath: data['poster_path'],
        isOfTypeMovie: data['is_of_type_movie'],
        isSpoiler: data['is_spoiler'],
        review: data['review'],
        rating: data['rating'],
        postUid: data['post_uid'],
        //Changed postOwnerUid to user_uid for easier convention since in repo it is called that
        postOwnerUid: data['user_uid'],
        postCreationDate: data['post_creation_date'],
        numberOfLikes: data['number_of_likes'],
        numberOfComments: data['number_of_comments'],
      );

  factory OurUserPost.fromSnapshot(DocumentSnapshot snapshot) => OurUserPost.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'tmdb_id': tmdbId,
        'title': title,
        'poster_path': posterPath,
        'is_of_type_movie': isOfTypeMovie,
        'is_spoiler': isSpoiler,
        'review': review,
        'rating': rating,
        'post_uid': postUid,
        //Changed postOwnerUid to user_uid
        'user_uid': postOwnerUid,
        'post_creation_date': postCreationDate,
        'number_of_likes': numberOfLikes,
        'number_of_comments': numberOfComments,
      };
}
