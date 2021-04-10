import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_movie_watchlist_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watched_details.dart';
import 'package:explovid/data/models/firestore_models/firestore_tv_show_watchlist_details.dart';
import 'package:explovid/data/models/movie_details/movie_details.dart';
import 'package:explovid/data/models/our_user/our_user.dart';
import 'package:explovid/data/models/our_user_post/our_user_post.dart';
import 'package:explovid/data/models/tv_show_details/tv_show_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';

class UserProfileRepository {
  CollectionReference _users = FirebaseFirestore.instance.collection('users');
  CollectionReference _posts = FirebaseFirestore.instance.collection('posts');
  FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<OurUser> getCurrentUserProfileInformation() {
    return _users.doc(_auth.currentUser.uid).snapshots().map(
          (documentSnap) => OurUser.fromSnapshot(documentSnap),
        );
  }

  Future<String> uploadProfilePhoto() async {
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;
    String returnValue = "There was an error uploading the image, please try again";
    PermissionStatus permissionStatus;
    //Check Permission
    try {
      await Permission.photos.request();
      permissionStatus = await Permission.photos.status;
    } catch (e) {
      print(e.toString());
      return e.toString();
    }

    if (permissionStatus.isGranted) {
      //Select Image
      File file;
      try {
        image = await _picker.getImage(source: ImageSource.gallery, maxHeight: 400);
        file = File(image.path);
      } on NoSuchMethodError {
        return "Choosing image canceled";
      } catch (e) {
        print(e.toString());
        return e.toString();
      }

      if (image != null) {
        //Upload to Firebase Storage
        String downloadUrl;
        try {
          var snapshot = await _storage.ref().child('users/${_auth.currentUser.uid}/profilePhoto').putFile(file);
          downloadUrl = await snapshot.ref.getDownloadURL();
        } catch (e) {
          print(e.toString());
          return e.toString();
        }
        //Save downloadUrl to user profile
        try {
          _users.doc(_auth.currentUser.uid).update(
            {
              "profile_photo_url": downloadUrl,
            },
          );
          returnValue = "Successfully uploaded profile photo";
        } catch (e) {
          print(e.toString());
          return e.toString();
        }
      }
    } else {
      returnValue = "Unable to upload profile photo until permission is granted.";
    }
    return returnValue;
  }

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
    WriteBatch batch = FirebaseFirestore.instance.batch();

    try {
      batch.set(
        _users
            .doc(_auth.currentUser.uid)
            .collection("movie_watchlist")
            .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString()),
        firestoreMovieDetails.toDocument(),
      );

      //Need to also have an additional array inside user document consisting of movie id's
      //so that in MovieDetails page the movie can be updated correctly based on info
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "movie_watchlist": FieldValue.arrayUnion([
            firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString(),
          ]),
          "watchlist_length": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully added movie to array watchlist");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> addMovieToWatched(MovieDetails movieDetails, String review, num rating, bool isSpoiler) async {
    String returnVal = "";
    String postUid = Uuid().v4();
    Timestamp timestamp = Timestamp.now();
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
      isSpoiler: isSpoiler,
      postUid: postUid,
    );
    //Creating Post model for newsFeed
    OurUserPost ourUserPost = OurUserPost(
      tmdbId: movieDetails.id,
      title: movieDetails.title,
      posterPath: movieDetails.posterPath,
      isOfTypeMovie: true,
      isSpoiler: isSpoiler,
      review: review,
      rating: rating,
      postUid: postUid,
      postOwnerUid: _auth.currentUser.uid,
      postCreationDate: timestamp,
      numberOfLikes: 0,
      numberOfComments: 0,
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();

    try {
      batch.set(
        _users
            .doc(_auth.currentUser.uid)
            .collection("movie_watched")
            .doc(firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString()),
        firestoreMovieDetails.toDocument(),
      );
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "movie_watched": FieldValue.arrayUnion([
            firestoreMovieDetails.title + "_" + firestoreMovieDetails.id.toString(),
          ]),
          "watched_length": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(ourUserPost.postUid),
        ourUserPost.toDocument(),
      );
      await batch.commit();
      print("successfully added movie to array watched");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeMovieFromWatchlist(MovieDetails movieDetails) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    String returnVal = "";
    try {
      batch.delete(_users
          .doc(_auth.currentUser.uid)
          .collection("movie_watchlist")
          .doc(movieDetails.title + "_" + movieDetails.id.toString()));
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "movie_watchlist": FieldValue.arrayRemove([
            movieDetails.title + "_" + movieDetails.id.toString(),
          ]),
          "watchlist_length": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully removed  movie from watchlist array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeMovieFromWatched({@required String movieTitle, @required int movieId, @required String postUid}) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    String returnVal = "";
    try {
      batch.delete(_users.doc(_auth.currentUser.uid).collection("movie_watched").doc(movieTitle + "_" + movieId.toString()));
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "movie_watched": FieldValue.arrayRemove([
            movieTitle + "_" + movieId.toString(),
          ]),
          "watched_length": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(postUid),
      );
      await batch.commit();
      print("successfully removed  movie from watched array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> updateMovieWatchedReview({
    @required String movieTitle,
    @required int movieId,
    @required String postUid,
    String review,
    num rating,
    bool isSpoiler,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _users.doc(_auth.currentUser.uid).collection("movie_watched").doc(
              movieTitle + "_" + movieId.toString(),
            ),
        {
          "review": review,
          "rating": rating,
          "is_spoiler": isSpoiler,
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(postUid),
        {
          "review": review,
          "rating": rating,
          "is_spoiler": isSpoiler,
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully updated movie in watched array");
    } catch (error) {
      print(error.toString());
      return error.toString();
    }
    return returnVal;
  }

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
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _users
            .doc(_auth.currentUser.uid)
            .collection("tv_show_watchlist")
            .doc(firestoreTvShowWatchlistDetails.name + "_" + firestoreTvShowWatchlistDetails.id.toString()),
        firestoreTvShowWatchlistDetails.toDocument(),
      );
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "tv_show_watchlist": FieldValue.arrayUnion([
            firestoreTvShowWatchlistDetails.name + "_" + firestoreTvShowWatchlistDetails.id.toString(),
          ]),
          "watchlist_length": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully added tv show to array watchlist");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> addTvShowToWatched(TvShowDetails tvShowDetails, String review, num rating, bool isSpoiler) async {
    String returnVal = "";
    String postUid = Uuid().v4();
    Timestamp timestamp = Timestamp.now();
    FirestoreTvShowWatchedDetails firestoreTvShowWatchedDetails = FirestoreTvShowWatchedDetails(
      id: tvShowDetails.id,
      name: tvShowDetails.name,
      posterPath: tvShowDetails.posterPath,
      popularity: tvShowDetails.popularity,
      voteAverage: tvShowDetails.voteAverage,
      firstAirDate: tvShowDetails.firstAirDate,
      timestampAddedToFirestore: timestamp,
      review: review,
      rating: rating,
      isSpoiler: isSpoiler,
      postUid: postUid,
    );
    OurUserPost ourUserPost = OurUserPost(
      tmdbId: tvShowDetails.id,
      title: tvShowDetails.name,
      posterPath: tvShowDetails.posterPath,
      isOfTypeMovie: false,
      isSpoiler: isSpoiler,
      review: review,
      rating: rating,
      postUid: postUid,
      postOwnerUid: _auth.currentUser.uid,
      postCreationDate: timestamp,
      numberOfLikes: 0,
      numberOfComments: 0,
    );
    WriteBatch batch = FirebaseFirestore.instance.batch();

    try {
      batch.set(
        _users
            .doc(_auth.currentUser.uid)
            .collection("tv_show_watched")
            .doc(firestoreTvShowWatchedDetails.name + "_" + firestoreTvShowWatchedDetails.id.toString()),
        firestoreTvShowWatchedDetails.toDocument(),
      );
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "tv_show_watched": FieldValue.arrayUnion([
            firestoreTvShowWatchedDetails.name + "_" + firestoreTvShowWatchedDetails.id.toString(),
          ]),
          "watched_length": FieldValue.increment(1),
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(ourUserPost.postUid),
        ourUserPost.toDocument(),
      );
      await batch.commit();
      print("successfully added tv show to array watched");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeTvShowFromWatchlist(TvShowDetails tvShowDetails) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.delete(_users
          .doc(_auth.currentUser.uid)
          .collection("tv_show_watchlist")
          .doc(tvShowDetails.name + "_" + tvShowDetails.id.toString()));
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "tv_show_watchlist": FieldValue.arrayRemove([
            tvShowDetails.name + "_" + tvShowDetails.id.toString(),
          ]),
          "watchlist_length": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully removed tv show from watchlist array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> removeTvShowFromWatched({@required String tvShowTitle, @required int tvShowId, @required String postUid}) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.delete(_users.doc(_auth.currentUser.uid).collection("tv_show_watched").doc(tvShowTitle + "_" + tvShowId.toString()));
      batch.set(
        _users.doc(_auth.currentUser.uid),
        {
          "tv_show_watched": FieldValue.arrayRemove([
            tvShowTitle + "_" + tvShowId.toString(),
          ]),
          "watched_length": FieldValue.increment(-1),
        },
        SetOptions(merge: true),
      );
      batch.delete(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(postUid),
      );
      await batch.commit();
      print("successfully removed tv show from watched array");
    } catch (error) {
      print(error.toString());
      returnVal = error.toString();
    }
    return returnVal;
  }

  Future<String> updateTvShowWatchedReview({
    @required String tvShowTitle,
    @required int tvShowId,
    @required String postUid,
    @required String review,
    @required num rating,
    @required bool isSpoiler,
  }) async {
    String returnVal = "";
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      batch.set(
        _users.doc(_auth.currentUser.uid).collection("tv_show_watched").doc(
              tvShowTitle + "_" + tvShowId.toString(),
            ),
        {
          "review": review,
          "rating": rating,
          "is_spoiler": isSpoiler,
        },
        SetOptions(merge: true),
      );
      batch.set(
        _posts.doc(_auth.currentUser.uid).collection("user_posts").doc(postUid),
        {
          "review": review,
          "rating": rating,
          "is_spoiler": isSpoiler,
        },
        SetOptions(merge: true),
      );
      await batch.commit();
      print("successfully updated tv show in watched array");
    } catch (error) {
      print(error.toString());
      return error.toString();
    }
    return returnVal;
  }

  ///Get a Stream of Lists from Firestore
  Stream<List<FirestoreMovieWatchlistDetails>> getMovieWatchlist() {
    return _users
        .doc(_auth.currentUser.uid)
        .collection("movie_watchlist")
        .orderBy('added_to_list_date', descending: true)
        .limit(18)
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
        .limit(18)
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
        .limit(18)
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
        .limit(18)
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

  Future<List<FirestoreMovieWatchedDetails>> getMovieWatchedNextPage(FirestoreMovieWatchedDetails lastItemInList) async {
    List<FirestoreMovieWatchedDetails> nextPageMovieResults = <FirestoreMovieWatchedDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
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

  Future<List<FirestoreTvShowWatchlistDetails>> getTvShowWatchlistNextPage(FirestoreTvShowWatchlistDetails lastItemInList) async {
    List<FirestoreTvShowWatchlistDetails> nextPageTvShowResults = <FirestoreTvShowWatchlistDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
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

  Future<List<FirestoreTvShowWatchedDetails>> getTvShowWatchedNextPage(FirestoreTvShowWatchedDetails lastItemInList) async {
    List<FirestoreTvShowWatchedDetails> nextPageTvShowResults = <FirestoreTvShowWatchedDetails>[];
    try {
      var query = await _users
          .doc(_auth.currentUser.uid)
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
