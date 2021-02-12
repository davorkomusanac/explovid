import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_details.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfileRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  FirebaseAuth _auth = FirebaseAuth.instance;

  void addMovieToWatchlist(MovieDetails movieDetails) {
    FirestoreMovieDetails firestoreMovieDetails = FirestoreMovieDetails(
      id: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      popularity: movieDetails.popularity,
      voteAverage: movieDetails.voteAverage,
      releaseDate: movieDetails.releaseDate,
      timestampAddedToFirestore: Timestamp.now(),
    );
    _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .doc("movie_watchlist")
        .set(
          {
            "movie_watchlist": FieldValue.arrayUnion([
              firestoreMovieDetails.toDocument(),
            ]),
          },
          SetOptions(merge: true),
        )
        .then((value) => print("successfully added movie to watchlist"))
        .catchError((error) {
          print(error.toString());
        });
  }

  void addMovieToWatched() {}

  void addTvShowToWatchlist() {}

  void addTvShowToWatched() {}

  void removeMovieFromWatchlist(MovieDetails movieDetails, Timestamp timestamp) {
    FirestoreMovieDetails firestoreMovieDetails = FirestoreMovieDetails(
      id: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      popularity: movieDetails.popularity,
      voteAverage: movieDetails.voteAverage,
      releaseDate: movieDetails.releaseDate,
      timestampAddedToFirestore: timestamp,
    );
    _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .doc("movie_watchlist")
        .set(
          {
            "movie_watchlist": FieldValue.arrayRemove([
              firestoreMovieDetails.toDocument(),
            ]),
          },
          SetOptions(merge: true),
        )
        .then((value) => print("successfully removed movie from watchlist"))
        .catchError((error) {
          print(error.toString());
        });
  }

  void removeMovieFromWatched() {}

  void removeTvShowFromWatchlist() {}

  void removeTvShowFromWatched() {}

  void getMovieFromWatchlist() {}

  Stream<List<FirestoreMovieDetails>> getMovieWatchlist() {
    return _users.doc(_auth.currentUser.uid).collection("movie_watchlist").doc("movie_watchlist").snapshots().map(
      (snapshot) {
        return snapshot
            .data()["movie_watchlist"]
            .map(
              (doc) => FirestoreMovieDetails.fromMap(doc),
            )
            .toList()
            .cast<FirestoreMovieDetails>();
      },
    );
  }
}
