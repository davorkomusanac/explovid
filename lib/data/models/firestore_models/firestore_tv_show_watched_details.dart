import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreTvShowWatchedDetails {
  final int id;
  final String name;
  final String posterPath;
  final num popularity;
  final num voteAverage;
  final String firstAirDate;
  final Timestamp timestampAddedToFirestore;
  final String review;
  final num rating;
  final bool isSpoiler;
  final String postUid;

  FirestoreTvShowWatchedDetails({
    this.id,
    this.name,
    this.posterPath,
    this.popularity,
    this.voteAverage,
    this.firstAirDate,
    this.timestampAddedToFirestore,
    this.review,
    this.rating,
    this.isSpoiler,
    this.postUid,
  });

  // added fromSnapshot and toDocument methods to add movie info to firestore, but only certain fields, not all
  factory FirestoreTvShowWatchedDetails.fromMap(Map<String, dynamic> data) => FirestoreTvShowWatchedDetails(
        id: data['id'],
        name: data['name'],
        posterPath: data['poster_path'],
        popularity: data['popularity'],
        voteAverage: data['vote_average'],
        firstAirDate: data['first_air_date'],
        timestampAddedToFirestore: data['added_to_list_date'],
        review: data['review'],
        rating: data['rating'],
        isSpoiler: data['is_spoiler'],
        postUid: data['post_uid'],
      );

  factory FirestoreTvShowWatchedDetails.fromSnapshot(DocumentSnapshot snapshot) =>
      FirestoreTvShowWatchedDetails.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'id': id,
        'name': name,
        'poster_path': posterPath,
        'popularity': popularity,
        'vote_average': voteAverage,
        'first_air_date': firstAirDate,
        'added_to_list_date': timestampAddedToFirestore,
        'review': review,
        'rating': rating,
        'is_spoiler': isSpoiler,
        'post_uid': postUid,
      };
}
