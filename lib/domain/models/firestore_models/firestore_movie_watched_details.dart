import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMovieWatchedDetails {
  FirestoreMovieWatchedDetails({
    this.id,
    this.title,
    this.posterPath,
    this.popularity,
    this.voteAverage,
    this.releaseDate,
    this.timestampAddedToFirestore,
    this.review,
    this.rating,
  });

  final int id;
  final String title;
  final String posterPath;
  final num popularity;
  final num voteAverage;
  final String releaseDate;
  final Timestamp timestampAddedToFirestore;
  final String review;
  final num rating;

// added fromSnapshot and toDocument methods to add movie info to firestore, but only certain fields, not all
  factory FirestoreMovieWatchedDetails.fromMap(Map<String, dynamic> data) => FirestoreMovieWatchedDetails(
        id: data['id'],
        title: data['title'],
        posterPath: data['posterPath'],
        popularity: data['popularity'],
        voteAverage: data['voteAverage'],
        releaseDate: data['releaseDate'],
        timestampAddedToFirestore: data['added_to_list_date'],
        review: data['review'],
        rating: data['rating'],
      );

  factory FirestoreMovieWatchedDetails.fromSnapshot(DocumentSnapshot snapshot) =>
      FirestoreMovieWatchedDetails.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'id': id,
        'title': title,
        'poster_path': posterPath,
        'popularity': popularity,
        'vote_average': voteAverage,
        'release_date': releaseDate,
        'added_to_list_date': timestampAddedToFirestore,
        'review': review,
        'rating': rating,
      };
}
