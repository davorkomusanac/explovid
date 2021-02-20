import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/domain/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/domain/models/movie_details/movie_details.dart';
import 'package:explovid/domain/models/tv_show_details/tv_show_details.dart';
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
        .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString())
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

  void addMovieToWatched(MovieDetails movieDetails, String review, num rating, bool isSpoiler) {
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
      isSpoiler: isSpoiler,
    );
    _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watched")
        .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString())
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
        .doc(movieDetails.title + "_" + movieDetails.id.toString())
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
        .doc(movieDetails.title + "_" + movieDetails.id.toString())
        .delete()
        .then((value) => print("successfully removed movie from watched"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  ///TODO update Reviews
  void updateMovieWatchedReview() {}
  void updateTvShowWatchedReview() {}

  void addTvShowToWatchlist(TvShowDetails tvShowDetails) {
    FirestoreTvShowWatchlistDetails firestoreTvShowWatchlistDetails = FirestoreTvShowWatchlistDetails(
      id: tvShowDetails.id,
      name: tvShowDetails.name,
      posterPath: tvShowDetails.posterPath,
      popularity: tvShowDetails.popularity,
      voteAverage: tvShowDetails.voteAverage,
      firstAirDate: tvShowDetails.firstAirDate,
      timestampAddedToFirestore: Timestamp.now(),
    );

    _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watchlist")
        .doc(firestoreTvShowWatchlistDetails.name + "_" + firestoreTvShowWatchlistDetails.id.toString())
        .set(
          firestoreTvShowWatchlistDetails.toDocument(),
        )
        .then((value) => print("successfully added tv show to watchlist"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void addTvShowToWatched(TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) {
    FirestoreTvShowWatchedDetails firestoreTvShowWatchedDetails = FirestoreTvShowWatchedDetails(
      id: tvShowDetails.id,
      name: tvShowDetails.name,
      posterPath: tvShowDetails.posterPath,
      popularity: tvShowDetails.popularity,
      voteAverage: tvShowDetails.voteAverage,
      firstAirDate: tvShowDetails.firstAirDate,
      timestampAddedToFirestore: Timestamp.now(),
      review: review,
      rating: rating,
      isSpoiler: isSpoiler,
    );

    _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watched")
        .doc(firestoreTvShowWatchedDetails.name + "_" + firestoreTvShowWatchedDetails.id.toString())
        .set(
          firestoreTvShowWatchedDetails.toDocument(),
        )
        .then((value) => print("successfully added tv show to watched"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void removeTvShowFromWatchlist(TvShowDetails tvShowDetails) {
    _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watchlist")
        .doc(tvShowDetails.name + "_" + tvShowDetails.id.toString())
        .delete()
        .then((value) => print("successfully removed tv show from watchlist"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

  void removeTvShowFromWatched(TvShowDetails tvShowDetails) {
    _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watched")
        .doc(tvShowDetails.name + "_" + tvShowDetails.id.toString())
        .delete()
        .then((value) => print("successfully removed tv show from watched"))
        .catchError(
      (error) {
        print(error.toString());
      },
    );
  }

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

  Stream<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlist() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watchlist")
        .orderBy('added_to_list_date', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => FirestoreTvShowWatchlistDetails.fromSnapshot(doc),
            )
            .toList()
            .cast<FirestoreTvShowWatchlistDetails>();
      },
    );
  }

  Stream<List<FirestoreTvShowWatchedDetails>> getTvShowWatched() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watched")
        .orderBy('added_to_list_date', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs
            .map(
              (doc) => FirestoreTvShowWatchedDetails.fromSnapshot(doc),
            )
            .toList()
            .cast<FirestoreTvShowWatchedDetails>();
      },
    );
  }
}
