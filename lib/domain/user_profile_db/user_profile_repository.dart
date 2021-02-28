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

  Future<String> addMovieToWatchlist(MovieDetails movieDetails) async {
    String returnVal = "";
    FirestoreMovieWatchlistDetails firestoreMovieDetails = FirestoreMovieWatchlistDetails(
      id: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      popularity: movieDetails.popularity,
      voteAverage: movieDetails.voteAverage,
      releaseDate: movieDetails.releaseDate,
      timestampAddedToFirestore: Timestamp.now(),
    );
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watchlist")
          .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString())
          .set(
            firestoreMovieDetails.toDocument(),
          );
      print("successfully added movie to watchlist");

      //Need to also have an additional array inside user document consisting of movie id's
      //so that in MovieDetails page the movie can be updated correctly based on info
      await _users.doc(_auth.currentUser.uid).set(
        {
          "movie_watchlist": FieldValue.arrayUnion([
            firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully added movie to array watchlist");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> addMovieToWatched(MovieDetails movieDetails, String review, num rating, bool isSpoiler) async {
    String returnVal = "";
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
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watched")
          .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString())
          .set(
            firestoreMovieDetails.toDocument(),
          );
      print("successfully added movie to watched");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "movie_watched": FieldValue.arrayUnion([
            firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully added movie to array watched");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeMovieFromWatchlist(MovieDetails movieDetails) async {
    String returnVal = "";
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watchlist")
          .doc(movieDetails.title + "_" + movieDetails.id.toString())
          .delete();
      print("successfully removed movie from watchlist");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "movie_watchlist": FieldValue.arrayRemove([
            movieDetails.title + "_" + movieDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully removed  movie from watchlist array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeMovieFromWatched(MovieDetails movieDetails) async {
    String returnVal = "";
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watched")
          .doc(movieDetails.title + "_" + movieDetails.id.toString())
          .delete();
      print("successfully removed movie from watched");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "movie_watched": FieldValue.arrayRemove([
            movieDetails.title + "_" + movieDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully removed  movie from watched array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  ///TODO update Reviews
  Future<void> updateMovieWatchedReview() async {}
  Future<void> updateTvShowWatchedReview() async {}

  Future<String> addTvShowToWatchlist(TvShowDetails tvShowDetails) async {
    String returnVal = "";
    FirestoreTvShowWatchlistDetails firestoreTvShowWatchlistDetails = FirestoreTvShowWatchlistDetails(
      id: tvShowDetails.id,
      name: tvShowDetails.name,
      posterPath: tvShowDetails.posterPath,
      popularity: tvShowDetails.popularity,
      voteAverage: tvShowDetails.voteAverage,
      firstAirDate: tvShowDetails.firstAirDate,
      timestampAddedToFirestore: Timestamp.now(),
    );
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watchlist")
          .doc(firestoreTvShowWatchlistDetails.name + "_" + firestoreTvShowWatchlistDetails.id.toString())
          .set(
            firestoreTvShowWatchlistDetails.toDocument(),
          );
      print("successfully added tv show to watchlist");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "tv_show_watchlist": FieldValue.arrayUnion([
            firestoreTvShowWatchlistDetails.name + "_" + firestoreTvShowWatchlistDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully added tv show to array watchlist");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> addTvShowToWatched(TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) async {
    String returnVal = "";
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

    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watched")
          .doc(firestoreTvShowWatchedDetails.name + "_" + firestoreTvShowWatchedDetails.id.toString())
          .set(
            firestoreTvShowWatchedDetails.toDocument(),
          );
      print("successfully added tv show to watched");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "tv_show_watched": FieldValue.arrayUnion([
            firestoreTvShowWatchedDetails.name + "_" + firestoreTvShowWatchedDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully added tv show to array watched");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeTvShowFromWatchlist(TvShowDetails tvShowDetails) async {
    String returnVal = "";
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watchlist")
          .doc(tvShowDetails.name + "_" + tvShowDetails.id.toString())
          .delete();
      print("successfully removed tv show from watchlist");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "tv_show_watchlist": FieldValue.arrayRemove([
            tvShowDetails.name + "_" + tvShowDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully removed tv show from watchlist array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeTvShowFromWatched(TvShowDetails tvShowDetails) async {
    String returnVal = "";
    try {
      await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watched")
          .doc(tvShowDetails.name + "_" + tvShowDetails.id.toString())
          .delete();
      print("successfully removed tv show from watched");

      await _users.doc(_auth.currentUser.uid).set(
        {
          "tv_show_watched": FieldValue.arrayRemove([
            tvShowDetails.name + "_" + tvShowDetails.id.toString(),
          ]),
        },
        SetOptions(merge: true),
      );
      print("successfully removed tv show from watched array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  //Get a Stream of Lists from Firestore
  Stream<List<FirestoreMovieWatchlistDetails>> getMovieWatchlist() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .orderBy('added_to_list_date', descending: true)
        .limit(9)
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

  Future<List<String>> getListWithAllMovieTitlesInWatchlist() async {
    List<String> allMovieTitlesInWatchlist = [];
    try {
      var doc = await _users.doc(_auth.currentUser.uid).get();
      if (doc.data().isNotEmpty) {
        for (var movie in doc.data()["movie_watchlist"]) {
          allMovieTitlesInWatchlist.add(movie as String);
        }
      }
    } catch (error) {
      print(error.toString());
    }
    return allMovieTitlesInWatchlist;
  }

  Stream<List<FirestoreMovieWatchedDetails>> getMovieWatched() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watched")
        .orderBy('added_to_list_date', descending: true)
        .limit(9)
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

  Future<List<String>> getListWithAllMovieTitlesInWatched() async {
    List<String> allMovieTitlesInWatched = [];
    try {
      var doc = await _users.doc(_auth.currentUser.uid).get();
      if (doc.data().isNotEmpty) {
        for (var movie in doc.data()["movie_watched"]) {
          allMovieTitlesInWatched.add(movie as String);
        }
      }
    } catch (error) {
      print(error.toString());
    }
    return allMovieTitlesInWatched;
  }

  Stream<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlist() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watchlist")
        .orderBy('added_to_list_date', descending: true)
        .limit(9)
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

  Future<List<String>> getListWithAllTvShowsNamesInWatchlist() async {
    List<String> allTvShowsNamesInWatchlist = [];
    try {
      var doc = await _users.doc(_auth.currentUser.uid).get();
      if (doc.data().isNotEmpty) {
        for (var tvShow in doc.data()["tv_show_watchlist"]) {
          allTvShowsNamesInWatchlist.add(tvShow as String);
        }
      }
    } catch (error) {
      print(error.toString());
    }
    return allTvShowsNamesInWatchlist;
  }

  Stream<List<FirestoreTvShowWatchedDetails>> getTvShowWatched() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("tv_show_watched")
        .orderBy('added_to_list_date', descending: true)
        .limit(9)
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

  Future<List<String>> getListWithAllTvShowsNamesInWatched() async {
    List<String> allTvShowsNamesInWatched = [];
    try {
      var doc = await _users.doc(_auth.currentUser.uid).get();
      if (doc.data().isNotEmpty) {
        for (var tvShow in doc.data()["tv_show_watched"]) {
          allTvShowsNamesInWatched.add(tvShow as String);
        }
      }
    } catch (error) {
      print(error.toString());
    }
    return allTvShowsNamesInWatched;
  }

  //Pagination for lists
  Future<List<FirestoreMovieWatchlistDetails>> getMovieWatchlistNextPage(FirestoreMovieWatchlistDetails lastItemInList) async {
    List<FirestoreMovieWatchlistDetails> nextPageMovieResults = <FirestoreMovieWatchlistDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watchlist")
          .orderBy('added_to_list_date', descending: true)
          .limit(9)
          .startAfter([lastItemInList.timestampAddedToFirestore]).get();
      for (var doc in query.docs) {
        nextPageMovieResults.add(
          FirestoreMovieWatchlistDetails.fromSnapshot(doc),
        );
      }
    } catch (error) {
      print("ERROR Fetching Movie Watchlist Next Page " + error.toString());
    }
    return nextPageMovieResults;
  }

  Future<List<FirestoreMovieWatchedDetails>> getMovieWatchedNextPage(FirestoreMovieWatchedDetails lastItemInList) async {
    List<FirestoreMovieWatchedDetails> nextPageMovieResults = <FirestoreMovieWatchedDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
          .collection("movie_watched")
          .orderBy('added_to_list_date', descending: true)
          .limit(9)
          .startAfter([lastItemInList.timestampAddedToFirestore]).get();
      for (var doc in query.docs) {
        nextPageMovieResults.add(
          FirestoreMovieWatchedDetails.fromSnapshot(doc),
        );
      }
    } catch (error) {
      print("ERROR Fetching Movie Watched  Next Page " + error.toString());
    }
    return nextPageMovieResults;
  }

  Future<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlistNextPage(FirestoreTvShowWatchlistDetails lastItemInList) async {
    List<FirestoreTvShowWatchlistDetails> nextPageTvShowResults = <FirestoreTvShowWatchlistDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watchlist")
          .orderBy('added_to_list_date', descending: true)
          .limit(9)
          .startAfter([lastItemInList.timestampAddedToFirestore]).get();
      for (var doc in query.docs) {
        nextPageTvShowResults.add(
          FirestoreTvShowWatchlistDetails.fromSnapshot(doc),
        );
      }
    } catch (error) {
      print("ERROR Fetching Tv Show Watchlist  Next Page " + error.toString());
    }
    return nextPageTvShowResults;
  }

  Future<List<FirestoreTvShowWatchedDetails>> getTvShowWatchedNextPage(FirestoreTvShowWatchedDetails lastItemInList) async {
    List<FirestoreTvShowWatchedDetails> nextPageTvShowResults = <FirestoreTvShowWatchedDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watched")
          .orderBy('added_to_list_date', descending: true)
          .limit(9)
          .startAfter([lastItemInList.timestampAddedToFirestore]).get();
      for (var doc in query.docs) {
        nextPageTvShowResults.add(
          FirestoreTvShowWatchedDetails.fromSnapshot(doc),
        );
      }
    } catch (error) {
      print("ERROR Fetching Tv Show Watched  Next Page " + error.toString());
    }
    return nextPageTvShowResults;
  }
}
