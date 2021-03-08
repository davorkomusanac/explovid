import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/data/models/our_user/our_user.dart';

class OtherUserProfileRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');

  Future<OurUser> getUserProfileInformation({String userUid}) async {
    OurUser user;
    try {
      var doc = await _users.doc(userUid).get();
      user = OurUser.fromSnapshot(doc);
    } catch (e) {
      user = OurUser();
      print(e.toString());
    }
    return user;
  }

  Future<List<FirestoreMovieWatchlistDetails>> getMovieWatchlist({String userUid}) async {
    List<FirestoreMovieWatchlistDetails> watchlist = [];
    try {
      var query = await _users
          .doc(userUid)
          .collection("movie_watchlist")
          .orderBy(
            'added_to_list_date',
            descending: true,
          )
          .limit(18)
          .get();
      watchlist = query.docs
          .map(
            (doc) => FirestoreMovieWatchlistDetails.fromSnapshot(doc),
          )
          .toList()
          .cast<FirestoreMovieWatchlistDetails>();
    } catch (e) {
      print(e.toString());
    }
    return watchlist;
  }

  Future<List<FirestoreMovieWatchedDetails>> getMovieWatched({String userUid}) async {
    List<FirestoreMovieWatchedDetails> watched = [];
    try {
      var query = await _users
          .doc(userUid)
          .collection("movie_watched")
          .orderBy(
            'added_to_list_date',
            descending: true,
          )
          .limit(18)
          .get();
      watched = query.docs
          .map(
            (doc) => FirestoreMovieWatchedDetails.fromSnapshot(doc),
          )
          .toList()
          .cast<FirestoreMovieWatchedDetails>();
    } catch (e) {
      print(e.toString());
    }
    return watched;
  }

  Future<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlist({String userUid}) async {
    List<FirestoreTvShowWatchlistDetails> watchlist = [];
    try {
      var query = await _users
          .doc(userUid)
          .collection("tv_show_watchlist")
          .orderBy(
            'added_to_list_date',
            descending: true,
          )
          .limit(18)
          .get();
      watchlist = query.docs
          .map(
            (doc) => FirestoreTvShowWatchlistDetails.fromSnapshot(doc),
          )
          .toList()
          .cast<FirestoreTvShowWatchlistDetails>();
    } catch (e) {
      print(e.toString());
    }
    return watchlist;
  }

  Future<List<FirestoreTvShowWatchedDetails>> getTvShowWatched({String userUid}) async {
    List<FirestoreTvShowWatchedDetails> watched = [];
    try {
      var query = await _users
          .doc(userUid)
          .collection("tv_show_watched")
          .orderBy(
            'added_to_list_date',
            descending: true,
          )
          .limit(18)
          .get();
      watched = query.docs
          .map(
            (doc) => FirestoreTvShowWatchedDetails.fromSnapshot(doc),
          )
          .toList()
          .cast<FirestoreTvShowWatchedDetails>();
    } catch (e) {
      print(e.toString());
    }
    return watched;
  }

  ///Pagination
  Future<List<FirestoreMovieWatchlistDetails>> getMovieWatchlistNextPage(
      {String userUid, FirestoreMovieWatchlistDetails lastItemInList}) async {
    List<FirestoreMovieWatchlistDetails> nextPageMovieResults = <FirestoreMovieWatchlistDetails>[];
    try {
      var query = await _users
          .doc(userUid)
          .collection("movie_watchlist")
          .orderBy('added_to_list_date', descending: true)
          .limit(18)
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

  Future<List<FirestoreMovieWatchedDetails>> getMovieWatchedNextPage(
      {String userUid, FirestoreMovieWatchedDetails lastItemInList}) async {
    List<FirestoreMovieWatchedDetails> nextPageMovieResults = <FirestoreMovieWatchedDetails>[];
    try {
      var query = await _users
          .doc(userUid)
          .collection("movie_watched")
          .orderBy('added_to_list_date', descending: true)
          .limit(18)
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

  Future<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlistNextPage(
      {String userUid, FirestoreTvShowWatchlistDetails lastItemInList}) async {
    List<FirestoreTvShowWatchlistDetails> nextPageTvShowResults = <FirestoreTvShowWatchlistDetails>[];
    try {
      var query = await _users
          .doc(userUid)
          .collection("tv_show_watchlist")
          .orderBy('added_to_list_date', descending: true)
          .limit(18)
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

  Future<List<FirestoreTvShowWatchedDetails>> getTvShowWatchedNextPage(
      {String userUid, FirestoreTvShowWatchedDetails lastItemInList}) async {
    List<FirestoreTvShowWatchedDetails> nextPageTvShowResults = <FirestoreTvShowWatchedDetails>[];
    try {
      var query = await _users
          .doc(userUid)
          .collection("tv_show_watched")
          .orderBy('added_to_list_date', descending: true)
          .limit(18)
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
