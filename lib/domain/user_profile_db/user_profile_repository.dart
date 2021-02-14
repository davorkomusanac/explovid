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
        .collection("movie_watchlist")
        .doc(firestoreMovieDetails.title + firestoreMovieDetails.id.toString())
        .set(
          firestoreMovieDetails.toDocument(),
        )
        .then((value) => print("successfully added movie to watchlist"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
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
        .collection("movie_watched")
        .doc(firestoreMovieDetails.title + firestoreMovieDetails.id.toString())
        .set(
          firestoreMovieDetails.toDocument(),
        )
        .then((value) => print("successfully added movie to watched"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void removeMovieFromWatchlist(MovieDetails movieDetails) {
    _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .doc(movieDetails.title + movieDetails.id.toString())
        .delete()
        .then((value) => print("successfully removed movie from watchlist"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void removeMovieFromWatched(MovieDetails movieDetails) {
    _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watched")
        .doc(movieDetails.title + movieDetails.id.toString())
        .delete()
        .then((value) => print("successfully removed movie from watched"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void updateMovieWatchedReview() {}
  void updateTvShowWatchedReview() {}

  void addTvShowToWatchlist() {}

  void addTvShowToWatched() {}

  void removeTvShowFromWatchlist() {}

  void removeTvShowFromWatched() {}

  Stream<List<FirestoreMovieWatchlistDetails>> getMovieWatchlist() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .orderBy('added_to_list_date', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => FirestoreMovieWatchlistDetails.fromSnapshot(doc),
            )
            .toList()
            .cast<FirestoreMovieWatchlistDetails>();
      },
    );
  }

  Stream<List<FirestoreMovieWatchedDetails>> getMovieWatched() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watched")
        .orderBy('added_to_list_date', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => FirestoreMovieWatchedDetails.fromSnapshot(doc),
            )
            .toList()
            .cast<FirestoreMovieWatchedDetails>();
      },
    );
  }
}
