import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreMovieWatchlistDetails {
  FirestoreMovieWatchlistDetails({
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
  factory FirestoreMovieWatchlistDetails.fromMap(Map<String, dynamic> data) => FirestoreMovieWatchlistDetails(
        id: data['id'],
        title: data['title'],
        posterPath: data['poster_path'],
        popularity: data['popularity'],
        voteAverage: data['vote_average'],
        releaseDate: data['release_date'],
        timestampAddedToFirestore: data['added_to_list_date'],
      );

  factory FirestoreMovieWatchlistDetails.fromSnapshot(DocumentSnapshot snapshot) =>
      FirestoreMovieWatchlistDetails.fromMap(snapshot.data());

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
