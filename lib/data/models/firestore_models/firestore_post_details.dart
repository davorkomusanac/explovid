import 'package:cloud_firestore/cloud_firestore.dart';

class FirestorePostDetails {
  FirestorePostDetails({
    this.addedToListDate,
    this.id,
    this.isMovieOrTvShow,
    this.isSpoiler,
    this.numberOfLikes,
    this.numberOfComments,
    this.ownerUsername,
    this.ownerUid,
    this.posterPath,
    this.postUid,
    this.rating,
    this.review,
    this.title,
  });
  final Timestamp addedToListDate;
  final int id;
  final bool isMovieOrTvShow;
  final bool isSpoiler;
  final int numberOfLikes;
  final int numberOfComments;
  final String ownerUsername;
  final String ownerUid;
  final String posterPath;
  final String postUid;
  final num rating;
  final String review;
  final String title;

  factory FirestorePostDetails.fromMap(Map<String, dynamic> data) => FirestorePostDetails(
        addedToListDate: data['added_to_list_date'],
        id: data['id'],
        isMovieOrTvShow: data['is_movie_or_tv_show'],
        isSpoiler: data['is_spoiler'],
        numberOfLikes: data['number_of_likes'],
        numberOfComments: data['number_of_comments'],
        ownerUsername: data['owner_username'],
        ownerUid: data['owner_uid'],
        posterPath: data['poster_path'],
        postUid: data['post_uid'],
        rating: data['rating'],
        review: data['review'],
        title: data['title'],
      );

  factory FirestorePostDetails.fromSnapshot(DocumentSnapshot snapshot) => FirestorePostDetails.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'added_to_list_date': addedToListDate,
        'id': 'id',
        'is_movie_or_tv_show': isMovieOrTvShow,
        'is_spoiler': isSpoiler,
        'number_of_likes': numberOfLikes,
        'number_of_comments': numberOfComments,
        'owner_username': ownerUsername,
        'owner_uid': ownerUid,
        'poster_path': posterPath,
        'post_uid': postUid,
        'rating': rating,
        'review': review,
        'title': title,
      };
}
