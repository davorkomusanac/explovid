import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfileRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  FirebaseAuth _auth = FirebaseAuth.instance;

  void addMovieToWatchlist(MovieDetails movieDetails) {
    FirestoreMovieWatchlistDetails firestoreMovieDetails = FirestoreMovieWatchlistDetails(
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
        .collection("watchlist")
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

  void addMovieToWatched(MovieDetails movieDetails, String review, num rating) {
    FirestoreMovieWatchedDetails firestoreMovieDetails = FirestoreMovieWatchedDetails(
      id: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      popularity: movieDetails.popularity,
      voteAverage: movieDetails.voteAverage,
      releaseDate: movieDetails.releaseDate,
      timestampAddedToFirestore: Timestamp.now(),
      review: review,
      rating: rating,
    );
    _users
        .doc(_auth.currentUser.uid)
        .collection("watched")
        .doc("movie_watched")
        .set(
          {
            "movie_watched": FieldValue.arrayUnion([
              firestoreMovieDetails.toDocument(),
            ]),
          },
          SetOptions(merge: true),
        )
        .then((value) => print("successfully added movie to watched"))
        .catchError((error) {
          print(error.toString());
        });
  }

  void removeMovieFromWatchlist(MovieDetails movieDetails, Timestamp timestamp) {
    FirestoreMovieWatchlistDetails firestoreMovieDetails = FirestoreMovieWatchlistDetails(
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
        .collection("watchlist")
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

  void removeMovieFromWatched(MovieDetails movieDetails, String review, num rating, Timestamp timestamp) {
    FirestoreMovieWatchedDetails firestoreMovieDetails = FirestoreMovieWatchedDetails(
      id: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      popularity: movieDetails.popularity,
      voteAverage: movieDetails.voteAverage,
      releaseDate: movieDetails.releaseDate,
      timestampAddedToFirestore: timestamp,
      review: review,
      rating: rating,
    );
    _users
        .doc(_auth.currentUser.uid)
        .collection("watched")
        .doc("movie_watched")
        .set(
          {
            "movie_watched": FieldValue.arrayRemove([
              firestoreMovieDetails.toDocument(),
            ]),
          },
          SetOptions(merge: true),
        )
        .then((value) => print("successfully removed movie from watched"))
        .catchError((error) {
          print(error.toString());
        });
  }

  void addTvShowToWatchlist() {}

  void addTvShowToWatched() {}

  void removeTvShowFromWatchlist() {}

  void removeTvShowFromWatched() {}

  Stream<List<FirestoreMovieWatchlistDetails>> getMovieWatchlist() {
    return _users.doc(_auth.currentUser.uid).collection("watchlist").doc("movie_watchlist").snapshots().map(
      (snapshot) {
        return snapshot
            .data()["movie_watchlist"]
            .map(
              (doc) => FirestoreMovieWatchlistDetails.fromMap(doc),
            )
            .toList()
            .cast<FirestoreMovieWatchlistDetails>();
      },
    );
  }

  Stream<List<FirestoreMovieWatchedDetails>> getMovieWatched() {
    return _users.doc(_auth.currentUser.uid).collection("watched").doc("movie_watched").snapshots().map(
      (snapshot) {
        return snapshot
            .data()["movie_watched"]
            .map(
              (doc) => FirestoreMovieWatchedDetails.fromMap(doc),
            )
            .toList()
            .cast<FirestoreMovieWatchedDetails>();
      },
    );
  }
}
