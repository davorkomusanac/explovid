import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMovieDetails {
  FirestoreMovieDetails({
    this.id,
    this.title,
    this.posterPath,
    this.popularity,
    this.voteAverage,
    this.releaseDate,
    this.timestampAddedToFirestore,
  });

  final int id;
  final String title;
  final String posterPath;
  final num popularity;
  final num voteAverage;
  final String releaseDate;
  final Timestamp timestampAddedToFirestore;

// added fromSnapshot and toDocument methods to add movie info to firestore, but only certain fields, not all
  factory FirestoreMovieDetails.fromMap(Map<String, dynamic> data) => FirestoreMovieDetails(
        id: data['id'],
        title: data['title'],
        posterPath: data['posterPath'],
        popularity: data['popularity'],
        voteAverage: data['voteAverage'],
        releaseDate: data['releaseDate'],
        timestampAddedToFirestore: data['added_to_list_date'],
      );

  Map<String, dynamic> toDocument() => {
        'id': id,
        'title': title,
        'poster_path': posterPath,
        'popularity': popularity,
        'vote_average': voteAverage,
        'release_date': releaseDate,
        'added_to_list_date': timestampAddedToFirestore,
      };
}
