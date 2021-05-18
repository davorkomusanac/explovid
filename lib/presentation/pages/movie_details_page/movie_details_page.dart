import 'package:cached_network_image/cached_network_image.dart';
import 'package:explovid/application/feedback/block_user/block_user_bloc.dart';
import 'package:explovid/application/feedback/report/report_bloc.dart';
import 'package:explovid/application/search/movie_search/movie_details/movie_details_bloc.dart';
import 'package:explovid/application/user_post/reviews_posts/reviews_posts_bloc.dart';
import 'package:explovid/application/user_post/user_post_bloc.dart';
import 'package:explovid/application/user_profile_information/current_user_profile_information/current_user_profile_watchlist_watched/movie_lists/movie_lists_user_profile_bloc.dart';
import 'package:explovid/application/user_profile_information/other_user_profile_information/other_user_profile_information_bloc.dart';
import 'package:explovid/data/models/movie_details/movie_details.dart';
import 'package:explovid/data/user_profile_db/other_user_profile_db/other_user_profile_repository.dart';
import 'package:explovid/data/user_profile_db/user_actions_db/user_actions_repository.dart';
import 'package:explovid/presentation/pages/actor_details_page/actor_details_page.dart';
import 'package:explovid/presentation/pages/movie_details_page/full_movie_cast_page.dart';
import 'package:explovid/presentation/pages/reviews/current_user_review.dart';
import 'package:explovid/presentation/pages/reviews/other_user_review.dart';
import 'package:explovid/presentation/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MovieDetailsPage extends StatefulWidget {
  final int movieId;
  final String movieTitle;

  MovieDetailsPage({
    @required this.movieId,
    @required this.movieTitle,
  });

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  bool isOverviewExpanded = false;
  UserActionsRepository _userActionsRepository;
  OtherUserProfileRepository _otherUserProfileRepository;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _userActionsRepository = UserActionsRepository();
    _otherUserProfileRepository = OtherUserProfileRepository();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    context.read<MovieDetailsBloc>().add(
          MovieDetailsEvent.movieDetailsPressed(widget.movieId),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadReviewsPressed(
            isOfTypeMovie: true,
            title: widget.movieTitle,
            tmdbId: widget.movieId,
          ),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadCurrentUserReviewPressed(
            isOfTypeMovie: true,
            title: widget.movieTitle,
            tmdbId: widget.movieId,
          ),
        );
    super.didChangeDependencies();
  }

  //Method to call, when Navigator.pop is called, to update the movieDetails page
  void sendEvent() {
    context.read<MovieDetailsBloc>().add(
          MovieDetailsEvent.movieDetailsPressed(widget.movieId),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadReviewsPressed(
            isOfTypeMovie: true,
            title: widget.movieTitle,
            tmdbId: widget.movieId,
          ),
        );
    context.read<ReviewsPostsBloc>().add(
          ReviewsPostsEvent.loadCurrentUserReviewPressed(
            isOfTypeMovie: true,
            title: widget.movieTitle,
            tmdbId: widget.movieId,
          ),
        );
  }

  void _launchTrailer(BuildContext context, MovieVideos videos) async {
    String trailerKey = '';
    for (var video in videos.results)
      if (video.type == "Trailer") {
        trailerKey = video.key;
        break;
      }
    String videoUrl = "https://www.youtube.com/watch?v=" + trailerKey;
    try {
      if (await canLaunch(videoUrl)) {
        await launch(videoUrl);
      } else {
        throw 'Could not launch trailer link';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  //If at end of the Listview, search for more reviews
  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0) {
      print("Calling fetch next movie reviews");
      context.read<ReviewsPostsBloc>().add(
            ReviewsPostsEvent.loadReviewsPressedNextPage(
              isOfTypeMovie: true,
              title: widget.movieTitle,
              tmdbId: widget.movieId,
            ),
          );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            return Column(
              children: [
                if (state.isSearching) BuildSearchProgressIndicator(),
                if (state.errorMessage.isNotEmpty) BuildSearchErrorMessage(state.errorMessage),
                if (state.errorMessage.isEmpty && !state.isSearching)
                  Expanded(
                    child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView(
                        children: [
                          Material(
                            elevation: 10,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.35,
                                child: CachedNetworkImage(
                                  imageUrl: "https://image.tmdb.org/t/p/w780/${state.movieDetails.backdropPath}",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Container(
                                    color: Colors.green,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) {
                                    return Container(
                                      color: Colors.black,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Text('😢'),
                                          const SizedBox(height: 5),
                                          const Text(
                                            'No image available',
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 16.0,
                                      right: 16.0,
                                    ),
                                    child: Text(
                                      state.movieDetails.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10.0,
                                  right: 20.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.tealAccent[200],
                                  ),
                                  //Check for trailer availability
                                  onPressed: state.isTrailerAvailable
                                      ? () {
                                          _launchTrailer(context, state.movieDetails.videos);
                                        }
                                      : null,
                                  child: Text(
                                    state.isTrailerAvailable ? "TRAILER" : "NO TRAILER",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    top: 8.0,
                                    right: 8.0,
                                    bottom: 8.0,
                                  ),
                                  child: Text(
                                    convertReleaseDate(state.movieDetails.releaseDate),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    convertRuntime(state.movieDetails.runtime),
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    right: 8.0,
                                  ),
                                  child: Text(
                                    state.movieDetails.voteAverage != 0 && state.movieDetails.voteCount > 100
                                        ? "⭐ " + state.movieDetails.voteAverage.toString() + " / 10"
                                        : "⭐ No rating",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          BlocConsumer<MovieListsUserProfileBloc, MovieListsUserProfileState>(
                            listener: (context, movieListState) {
                              if (movieListState.errorMessage.isNotEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(movieListState.errorMessage),
                                    duration: Duration(seconds: 1),
                                  ),
                                );
                              }
                            },
                            builder: (context, movieListState) {
                              //Check if movie is watchList so that buttons can be updated correctly
                              bool isInWatchlist = false;
                              bool isInWatched = false;
                              String compare = state.movieDetails.title + "_" + state.movieDetails.id.toString();
                              for (var movie in movieListState.movieWatchlistArrayTitlesOnly) {
                                if (movie == compare) {
                                  isInWatchlist = true;
                                }
                              }
                              for (var movie in movieListState.movieWatchedArrayTitlesOnly) {
                                if (movie == compare) {
                                  isInWatched = true;
                                }
                              }
                              return Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                      child: movieListState.isSubmittingWatchlist
                                          ? Center(child: CircularProgressIndicator())
                                          : ElevatedButton(
                                              style: isInWatchlist ? kWatchedButton : kNotWatchedButton,
                                              onPressed: () {
                                                if (isInWatchlist) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return MovieRemoveWatchlistDialog(
                                                        tmdbId: state.movieDetails.id,
                                                        title: state.movieDetails.title,
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  context.read<MovieListsUserProfileBloc>().add(
                                                        MovieListsUserProfileEvent.addMovieToWatchlistPressed(
                                                          tmdbId: state.movieDetails.id,
                                                          title: state.movieDetails.title,
                                                          posterPath: state.movieDetails.posterPath,
                                                        ),
                                                      );
                                                }
                                              },
                                              child: Text(isInWatchlist ? "✅ In Watchlist" : "Add to Watchlist"),
                                            ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                      child: movieListState.isSubmittingWatched
                                          ? Center(child: CircularProgressIndicator())
                                          : ElevatedButton(
                                              style: isInWatched ? kWatchedButton : kNotWatchedButton,
                                              onPressed: () {
                                                if (isInWatched) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return MovieRemoveReviewDialog(
                                                        tmdbId: state.movieDetails.id,
                                                        title: state.movieDetails.title,
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return MovieReviewDialog(
                                                        tmdbId: state.movieDetails.id,
                                                        title: state.movieDetails.title,
                                                        posterPath: state.movieDetails.posterPath,
                                                        isInWatchlist: isInWatchlist,
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                              child: Text(isInWatched ? "✅ Watched" : "Rate it"),
                                            ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                            builder: (context, userReviewState) {
                              if (!userReviewState.isLoadingCurrentUserReview) {
                                if (userReviewState.currentUserReview.postOwnerUid.isNotEmpty) {
                                  return BlocProvider(
                                    create: (context) => UserPostBloc(
                                      _userActionsRepository,
                                    ),
                                    child: BlocProvider(
                                      create: (context) => OtherUserProfileInformationBloc(
                                        _otherUserProfileRepository,
                                      ),
                                      child: CurrentUserReview(
                                        postOwnerUid: userReviewState.currentUserReview.postOwnerUid,
                                        postUid: userReviewState.currentUserReview.postUid,
                                      ),
                                    ),
                                  );
                                } else {
                                  return Offstage();
                                }
                              } else {
                                return Offstage();
                              }
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: Text(
                                  state.movieDetails.tagline.isNotEmpty ? state.movieDetails.tagline : "Overview",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isOverviewExpanded = !isOverviewExpanded;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        state.movieDetails.overview,
                                        style: TextStyle(fontSize: 16),
                                        maxLines: isOverviewExpanded ? 30 : 5,
                                        overflow: TextOverflow.fade,
                                      ),
                                      if (!isOverviewExpanded && state.movieDetails.overview.length > 250)
                                        const Icon(Icons.more_horiz),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8.0,
                                  bottom: 8.0,
                                  right: 8.0,
                                ),
                                child: const Text(
                                  "Cast & Crew",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  // top: 10.0,
                                  right: 8.0,
                                ),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.tealAccent[200],
                                  ),
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: false)
                                        .push(
                                          MaterialPageRoute(
                                            builder: (context) => FullMovieCastPage(
                                              credits: state.movieDetails.credits,
                                              title: state.movieDetails.title,
                                            ),
                                          ),
                                        )
                                        .then(
                                          (value) => setState(
                                            () {
                                              sendEvent();
                                            },
                                          ),
                                        );
                                  },
                                  child: Text("SEE ALL"),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: state.movieDetails.credits.cast.isEmpty ? 80 : 230,
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: state.movieDetails.credits.cast.isEmpty
                                ? const BuildNoCastOrSimilarMoviesFoundWidget()
                                : ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.movieDetails.credits.cast.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            //Had to add .then and call setState, so that the first page is refreshed if it is popped back, from the second page where the Navigator
                                            //is going to push right now (otherwise each page will have the identical MovieDetails)
                                            Navigator.of(context, rootNavigator: false)
                                                .push(
                                                  MaterialPageRoute(
                                                    builder: (context) => ActorDetailsPage(
                                                      state.movieDetails.credits.cast[index].id,
                                                    ),
                                                  ),
                                                )
                                                .then(
                                                  (value) => setState(
                                                    () {
                                                      sendEvent();
                                                    },
                                                  ),
                                                );
                                          },
                                          child: Container(
                                            width: 90,
                                            child: Column(
                                              children: [
                                                BuildPosterImage(
                                                  height: 135,
                                                  width: 90,
                                                  imagePath: state.movieDetails.credits.cast[index].profilePath,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                                  child: Text(
                                                    state.movieDetails.credits.cast[index].name,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    state.movieDetails.credits.cast[index].character,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: const Text(
                              "Similar movies",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: state.movieDetails.movieSearchResults.movieSummaries.isEmpty ? 70 : 220,
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              right: 8.0,
                            ),
                            child: state.movieDetails.movieSearchResults.movieSummaries.isEmpty
                                ? const BuildNoCastOrSimilarMoviesFoundWidget()
                                : ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: state.movieDetails.movieSearchResults.movieSummaries.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          bottom: 8.0,
                                          right: 8.0,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            //Had to add .then and call setState, so that the first page is refreshed if it is popped back, from the second page where the Navigator
                                            //is going to push right now (otherwise each page will have the identical MovieDetails)
                                            Navigator.of(context, rootNavigator: false)
                                                .push(
                                                  MaterialPageRoute(
                                                    builder: (context) => MovieDetailsPage(
                                                      movieId: state.movieDetails.movieSearchResults.movieSummaries[index].id,
                                                      movieTitle:
                                                          state.movieDetails.movieSearchResults.movieSummaries[index].title,
                                                    ),
                                                  ),
                                                )
                                                .then(
                                                  (value) => setState(
                                                    () {
                                                      sendEvent();
                                                    },
                                                  ),
                                                );
                                          },
                                          child: Container(
                                            width: 90,
                                            child: Column(
                                              children: [
                                                BuildPosterImage(
                                                  height: 135,
                                                  width: 90,
                                                  imagePath:
                                                      state.movieDetails.movieSearchResults.movieSummaries[index].posterPath,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                      top: 8.0,
                                                      bottom: 4.0,
                                                    ),
                                                    child: Text(
                                                      state.movieDetails.movieSearchResults.movieSummaries[index].voteAverage !=
                                                                  0 &&
                                                              state.movieDetails.movieSearchResults.movieSummaries[index]
                                                                      .voteCount >
                                                                  100
                                                          ? "⭐" +
                                                              state.movieDetails.movieSearchResults.movieSummaries[index]
                                                                  .voteAverage
                                                                  .toStringAsFixed(1) +
                                                              " " +
                                                              state.movieDetails.movieSearchResults.movieSummaries[index].title
                                                          : "⭐ N/A " +
                                                              state.movieDetails.movieSearchResults.movieSummaries[index].title,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.center,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                          ),

                          /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          /// OTHER USERS REVIEWS ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          /// ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                          BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                            builder: (context, state) {
                              if (state.reviews.length > 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Container(
                                    color: Colors.tealAccent[700],
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                                            child: Text(
                                              "Other User's reviews below!\nMight contain spoilers!",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                return Offstage();
                              }
                            },
                          ),
                          BlocListener<ReportBloc, ReportState>(
                            listener: (context, reportState) {
                              if (reportState.errorMessage.isNotEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(reportState.errorMessage),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              }
                            },
                            child: BlocBuilder<ReviewsPostsBloc, ReviewsPostsState>(
                              builder: (context, state) {
                                return state.isLoadingReviews
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : NotificationListener<ScrollNotification>(
                                        onNotification: _handleScrollNotification,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          controller: _scrollController,
                                          itemCount: _calculateOtherUsersReviewsListLength(state),
                                          itemBuilder: (context, index) {
                                            if (index >= state.reviews.length) {
                                              return BuildLoaderNextPage();
                                            } else {
                                              String postOwnerUid = state.reviews[index].postOwnerUid;
                                              String postUid = state.reviews[index].postUid;
                                              //Have to give a new BlocProvider instance to each item since each items needs its own state
                                              return BlocBuilder<BlockUserBloc, BlockUserState>(
                                                builder: (context, userBlockState) {
                                                  return userBlockState.blockedUsers.contains(postOwnerUid) ||
                                                          userBlockState.usersBlockedBy.contains(postOwnerUid)
                                                      ? SizedBox(width: 0, height: 0)
                                                      : BlocProvider(
                                                          create: (context) => UserPostBloc(
                                                            _userActionsRepository,
                                                          ),
                                                          child: BlocProvider(
                                                            create: (context) => OtherUserProfileInformationBloc(
                                                              _otherUserProfileRepository,
                                                            ),
                                                            child: OtherUserReview(
                                                              postOwnerUid: postOwnerUid,
                                                              postUid: postUid,
                                                            ),
                                                          ),
                                                        );
                                                },
                                              );
                                            }
                                          },
                                        ),
                                      );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  int _calculateOtherUsersReviewsListLength(ReviewsPostsState state) {
    if (state.isThereMoreReviewsToLoad) {
      return state.reviews.length + 1;
    } else {
      return state.reviews.length;
    }
  }
}

class MovieRemoveWatchlistDialog extends StatefulWidget {
  final int tmdbId;
  final String title;

  MovieRemoveWatchlistDialog({
    @required this.tmdbId,
    @required this.title,
  });

  @override
  _MovieRemoveWatchlistDialogState createState() => _MovieRemoveWatchlistDialogState();
}

class _MovieRemoveWatchlistDialogState extends State<MovieRemoveWatchlistDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm if you want to remove from Watchlist"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            context.read<MovieListsUserProfileBloc>().add(
                  MovieListsUserProfileEvent.removeMovieFromWatchlistPressed(
                    tmdbId: widget.tmdbId,
                    title: widget.title,
                  ),
                );
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}

class MovieRemoveReviewDialog extends StatefulWidget {
  final int tmdbId;
  final String title;

  MovieRemoveReviewDialog({
    @required this.tmdbId,
    @required this.title,
  });

  @override
  _MovieRemoveReviewDialogState createState() => _MovieRemoveReviewDialogState();
}

class _MovieRemoveReviewDialogState extends State<MovieRemoveReviewDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm if you want to remove from Watched"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Note: this action cannot be undone, your rating and review will be lost."),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("No"),
        ),
        TextButton(
          onPressed: () {
            context.read<MovieListsUserProfileBloc>().add(
                  MovieListsUserProfileEvent.removeMovieFromWatchedPressed(
                    movieTitle: widget.title,
                    movieId: widget.tmdbId,
                  ),
                );
            Navigator.of(context, rootNavigator: true).pop();
          },
          style: TextButton.styleFrom(
            primary: Colors.tealAccent[200],
          ),
          child: Text("Yes"),
        ),
      ],
    );
  }
}

class MovieReviewDialog extends StatefulWidget {
  final int tmdbId;
  final String title;
  final String posterPath;
  final bool isInWatchlist;

  MovieReviewDialog({
    @required this.tmdbId,
    @required this.title,
    @required this.posterPath,
    @required this.isInWatchlist,
  });

  @override
  _MovieReviewDialogState createState() => _MovieReviewDialogState();
}

class _MovieReviewDialogState extends State<MovieReviewDialog> {
  double rating = 6.0;
  bool isSpoiler = false;
  TextEditingController _movieReviewController;

  @override
  void initState() {
    super.initState();
    _movieReviewController = TextEditingController();
  }

  @override
  void dispose() {
    _movieReviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        actionsPadding: EdgeInsets.only(right: 12),
        contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
        insetPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        //title: Text("Rate the movie and write a review"),
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "⭐ ${rating.toInt().toString()}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Slider(
                  min: 1.0,
                  max: 10.0,
                  divisions: 9,
                  value: rating,
                  activeColor: Colors.tealAccent[700],
                  onChanged: (double value) {
                    setState(() {
                      rating = value;
                    });
                  }),
              Expanded(
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.multiline,
                  enableSuggestions: true,
                  autocorrect: true,
                  controller: _movieReviewController,
                  maxLines: 80,
                  maxLength: 1000,
                  decoration: InputDecoration(
                    hintText: 'Type your review here...',
                    //alignLabelWithHint: true,
                    counter: Offstage(),
                  ),
                ),
              ),
              CheckboxListTile(
                activeColor: Colors.tealAccent[700],
                value: isSpoiler,
                title: Text("Contains spoilers"),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool value) {
                  setState(() {
                    isSpoiler = value;
                  });
                },
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: TextButton.styleFrom(
              primary: Colors.tealAccent[200],
            ),
            child: Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<MovieListsUserProfileBloc>().add(MovieListsUserProfileEvent.addMovieToWatchedPressed(
                    tmdbId: widget.tmdbId,
                    title: widget.title,
                    posterPath: widget.posterPath,
                    review: _movieReviewController.text,
                    rating: rating,
                    isSpoiler: isSpoiler,
                  ));
              if (widget.isInWatchlist)
                context.read<MovieListsUserProfileBloc>().add(
                      MovieListsUserProfileEvent.removeMovieFromWatchlistPressed(
                        tmdbId: widget.tmdbId,
                        title: widget.title,
                      ),
                    );
              Navigator.of(context, rootNavigator: true).pop();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.tealAccent[700],
            ),
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
