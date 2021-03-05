import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreTvShowWatchlistDetails {
  final int id;
  final String name;
  final String posterPath;
  final num popularity;
  final num voteAverage;
  final String firstAirDate;
  final Timestamp timestampAddedToFirestore;

  FirestoreTvShowWatchlistDetails({
    this.id,
    this.name,
    this.posterPath,
    this.popularity,
    this.voteAverage,
    this.firstAirDate,
    this.timestampAddedToFirestore,
  });

  // added fromSnapshot and toDocument methods to add movie info to firestore, but only certain fields, not all
  factory FirestoreTvShowWatchlistDetails.fromMap(Map<String, dynamic> data) => FirestoreTvShowWatchlistDetails(
        id: data['id'],
        name: data['name'],
        posterPath: data['poster_path'],
        popularity: data['popularity'],
        voteAverage: data['vote_average'],
        firstAirDate: data['first_air_date'],
        timestampAddedToFirestore: data['added_to_list_date'],
      );

  factory FirestoreTvShowWatchlistDetails.fromSnapshot(DocumentSnapshot snapshot) =>
      FirestoreTvShowWatchlistDetails.fromMap(snapshot.data());

  Map<String, dynamic> toDocument() => {
        'id': id,
        'name': name,
        'poster_path': posterPath,
        'popularity': popularity,
        'vote_average': voteAverage,
        'first_air_date': firstAirDate,
        'added_to_list_date': timestampAddedToFirestore,
      };
}
